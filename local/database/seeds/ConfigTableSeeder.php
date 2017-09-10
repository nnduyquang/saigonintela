<?php

use Illuminate\Database\Seeder;
use App\Config;

class ConfigTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $configs = [
//            [
//                'name' => 'email-receive',
//                'description' => 'Cấu Hình Email Nhận Thông Tin',
//                'order'=>1,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'email-sender-subject',
//                'description' => 'Cấu Hình Subject Gửi Khách Hàng',
//                'order'=>2,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'email-sender-from',
//                'description' => 'Cấu Hình From Gửi Khách Hàng',
//                'order'=>3,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'email-receive-subject',
//                'description' => 'Cấu Hình Subject Nhận Thông Tin',
//                'order'=>4,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'email-receive-from',
//                'description' => 'Cấu Hình From Nhận Thông Tin',
//                'order'=>5,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'email-signatures',
//                'description' => 'Cấu Hình Chữ Ký',
//                'order'=>7,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'email-sender-content',
//                'description' => 'Cấu Hình Nội Dung Gửi Khách Hàng',
//                'order'=>6,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'cf-address-post',
//                'description' => 'Cấu Hình Địa Chỉ Trang Con',
//                'order'=>8,
//                'user_id' => 1
//            ],
//            [
//                'name' => 'cf-phone',
//                'description' => 'Cấu Hình Số Điện Thoại Chung',
//                'order'=>9,
//                'user_id' => 1
//            ],
            [
                'name' => 'cf-tt-address',
                'description' => 'Cấu Hình Địa Chỉ Tại Trang Chủ',
                'order'=>10,
                'user_id' => 1
            ],
        ];
        foreach ($configs as $key => $value) {
            Config::create($value);
        }
    }
}
