<?php

use Illuminate\Database\Seeder;

class TodoListsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('todo_lists')->truncate();

        $todoLists = [];
        for ($i=0; $i < 10; $i++) {
            $todoLists[] = [
                'title' => "Todo list {$i}",
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac',
                'user_id' => rand(1,2)
            ];
        }

        DB::table('todo_lists')->insert($todoLists);
    }
}
