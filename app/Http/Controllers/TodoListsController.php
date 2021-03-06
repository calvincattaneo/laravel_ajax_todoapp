<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\TodoList;

class TodoListsController extends Controller
{
    public function __construct()
    {
        // check if session expired for ajax request
        $this->middleware('ajax-session-expired');
        // check if user is autenticated for non-ajax request
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function index(Request $request)
     {
         $todoLists = $request->user()
                         ->todoLists()
                         ->with('tasks')
                         ->orderBy('updated_at', 'desc')
                         ->get();
         return view("todolists.index", compact('todoLists'));

         /*
         ** Habilitando log na query e mostrar na tela
         \DB::enableQueryLog();
         $todoLists = $request->user()
                         ->todoLists()
                         ->with('tasks')
                         ->orderBy('updated_at', 'desc')
                         ->get();
         view("todolists.index", compact('todoLists'))->render();
         dd(\DB::getQueryLog());
         */
     }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $todoList = new TodoList();
        return view('todolists.form', compact('todoList'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|min:5',
            'description' => 'min:5'
        ]);

        $todoList = $request->user()->todoLists()->create($request->all());
        return view("todolists.item", compact('todoList'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $todoList = TodoList::findOrFail($id);
        $tasks = $todoList->tasks()->latest()->get();
        return view("tasks.index", compact('tasks'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $todoList = TodoList::findOrFail($id);
        return view('todolists.form', compact('todoList'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required|min:5',
            'description' => 'min:5'
        ]);

        $todoList = TodoList::findOrFail($id);
        $todoList->update($request->all());

        return view("todolists.item", compact('todoList'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $todoList = TodoList::findOrFail($id);
        $todoList->delete();

        return $todoList;
    }
}
