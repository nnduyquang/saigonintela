<?php

use Illuminate\Database\Seeder;
use App\Post;

class PostTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $posts = [
            [
                'name' => 'vitri-contents',
                'description' => 'Bài Viết Vị Trí Dự Án',
                'order'=>1,
                'user_id' => 1
            ],
        ];
        foreach ($posts as $key => $value) {
            Post::create($value);
        }
    }
}
