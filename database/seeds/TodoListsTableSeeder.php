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
        DB::statement("SET FOREIGN_KEY_CHECKS=0");
        DB::table('tasks')->truncate();
        DB::table('todo_lists')->truncate();

        $todoLists = [];
        $task = [];

        for ($i=1; $i <= 10; $i++)
        {
            $date = date("Y-m-d H:i:s", strtotime("2016-05-01 08:00:00 + {$i} days"));
            $todoLists[] = [
                'id' => $i,
                'title' => "Todo list {$i}",
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ultrices mauris, ac posuere metus venenatis ac',
                'user_id' => rand(1,2),
                'created_at' => $date,
                'updated_at' => $date
            ];

            for ($j=1; $j <= rand(1,5); $j++)
            {
                $taskDate = date("Y-m-d H:i:s", strtotime("{$date} + {$j} minutes"));
                $tasks[] = [
                    'todo_list_id' => $i,
                    'title' => "The task {$j} of todo list {$i}",
                    'created_at' => $taskDate,
                    'updated_at' => $taskDate,
                    'completed_at' => rand(0,1) == 0 ? NULL : $date
                ];
            }
        }

        DB::table('todo_lists')->insert($todoLists);
        DB::table('tasks')->insert($tasks);
    }
}
