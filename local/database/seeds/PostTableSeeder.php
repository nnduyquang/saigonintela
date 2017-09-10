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
//            [
//                'name' => 'vitri-contents',
//                'description' => 'Bài Viết Vị Trí Dự Án',
//                'order'=>1,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'trangchu-contents-km',
//                'content' => 'test',
//                'description' => 'Bài Viết Trang Chủ Phần Khuyến Mãi',
//                'order'=>2,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'trangchu-contents-gt',
//                'content' => 'test',
//                'description' => 'Bài Viết Trang Chủ Phần Giới Thiệu Dự Án',
//                'order'=>3,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'trangchu-contents-vt',
//                'content' => 'test',
//                'description' => 'Bài Viết Trang Chủ Phần Vị Trí Dự Án',
//                'order'=>4,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'trangchu-contents-lh',
//                'content' => 'test',
//                'description' => 'Bài Viết Trang Chủ Phần Liên Hệ',
//                'order'=>5,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'canho-contents',
//                'description' => 'Bài Viết Thông Tin Căn Hộ',
//                'order' => 1,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'thietke-contents',
//                'description' => 'Bài Viết Thiết Kế Căn Hộ',
//                'order' => 1,
//                'user_id' => 1
//            ],
            [
                'name' => 'tienich-contents',
                'description' => 'Bài Viết Tiện Ích Dự Án',
                'order' => 1,
                'user_id' => 1
            ],
        ];
        foreach ($posts as $key => $value) {
            Post::create($value);
        }
    }
}
