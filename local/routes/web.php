<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('frontend.trangchu.index');
//});
Route::get('/','PostsController@getFrontendContentTrangChu');
Route::get('/category', 'PostsController@getFrontendContentCategory');
Route::get('/vi-tri', 'PostsController@getFrontendContentVitri');
Route::get('/can-ho', 'PostsController@getFrontendContentCanHo');
Route::get('/thiet-ke', 'PostsController@getFrontendContentThietKe');
Route::get('/tien-ich', 'PostsController@getFrontendContentTienIch');
Route::get('/lien-he','PostsController@getFrontendContentLienHe');
Route::get('/tin-tuc', 'NewsController@getAllNews');
Route::get('/tin-tuc/{path}', 'NewsController@getDetailNews');
Route::post('/sendmail', ['as' => 'mail.send', 'uses' => 'MailController@send']);

Route::get('/sml_login', function () {
    return view('backend.login.login1');
});

Route::post('sml_login', 'AuthController@login')->name('login');
Route::get('sml_logout', 'AuthController@logout')->name('logout');
Route::group(['middleware' => ['auth']], function () {
    //DASHBOARD
    Route::get('sml_admin/dashboard', function () {
        return view('backend.admin.dashboard.index');
    })->name('dashboard');
    //USER
    Route::resource('sml_admin/users', 'UserController');


    //ROLE
    Route::get('sml_admin/roles', ['as' => 'roles.index', 'uses' => 'RoleController@index', 'middleware' => ['permission:role-list|role-create|role-edit|role-delete']]);
    Route::post('sml_admin/roles/create', ['as' => 'roles.store', 'uses' => 'RoleController@store', 'middleware' => ['permission:role-create']]);
    Route::get('sml_admin/roles/create', ['as' => 'roles.create', 'uses' => 'RoleController@create', 'middleware' => ['permission:role-create']]);
    Route::get('sml_admin/roles/{id}/edit', ['as' => 'roles.edit', 'uses' => 'RoleController@edit', 'middleware' => ['permission:role-edit']]);
    Route::patch('sml_admin/roles/{id}', ['as' => 'roles.update', 'uses' => 'RoleController@update', 'middleware' => ['permission:role-edit']]);
    Route::delete('sml_admin/roles/{id}', ['as' => 'roles.destroy', 'uses' => 'RoleController@destroy', 'middleware' => ['permission:role-delete']]);
    Route::get('sml_admin/roles/{id}', ['as' => 'roles.show', 'uses' => 'RoleController@show']);

    //NEWS
    Route::get('sml_admin/news', ['as' => 'news.index', 'uses' => 'NewsController@index', 'middleware' => ['permission:news-list|news-create|news-edit|news-delete']]);
    Route::post('sml_admin/news/create', ['as' => 'news.store', 'uses' => 'NewsController@store', 'middleware' => ['permission:news-create']]);
    Route::post('sml_admin/news', ['as' => 'news.search', 'uses' => 'NewsController@search']);
    Route::get('sml_admin/news/create', ['as' => 'news.create', 'uses' => 'NewsController@create', 'middleware' => ['permission:news-create']]);
    Route::get('sml_admin/news/{id}/edit', ['as' => 'news.edit', 'uses' => 'NewsController@edit', 'middleware' => ['permission:news-edit']]);
    Route::patch('sml_admin/news/{id}', ['as' => 'news.update', 'uses' => 'NewsController@update', 'middleware' => ['permission:news-edit']]);
    Route::delete('sml_admin/news/{id}', ['as' => 'news.destroy', 'uses' => 'NewsController@destroy', 'middleware' => ['permission:news-delete']]);

    //CONFIG
    //--GENERAL--//
    Route::get('sml_admin/config', ['as' => 'config.index', 'uses' => 'ConfigController@getConfigGeneral']);
    Route::post('sml_admin/config', ['as' => 'config.store', 'uses' => 'ConfigController@saveConfigGeneral']);
    //--MAIL--//
//    Route::get('sml_admin/cau-hinh/mail', ['as' => 'config.email.index', 'uses' => 'CauHinhController@getAllCauHinh']);
    Route::get('sml_admin/config/email', ['as' => 'config.email.index', 'uses' => 'ConfigController@getEmailConfig']);
    Route::post('sml_admin/config/email', ['as' => 'config.email.store', 'uses' => 'ConfigController@saveEmailConfig']);

    //--SLIDER--//
    Route::get('sml_admin/slider', ['as' => 'config.slider.index', 'uses' => 'SliderController@index', 'middleware' => ['permission:config-list|config-create|config-edit|config-delete']]);
    Route::post('sml_admin/slider/create', ['as' => 'config.slider.store', 'uses' => 'SliderController@store', 'middleware' => ['permission:config-create']]);
    Route::get('sml_admin/slider/create', ['as' => 'config.slider.create', 'uses' => 'SliderController@create', 'middleware' => ['permission:config-create']]);
    Route::get('sml_admin/slider/{id}/edit', ['as' => 'config.slider.edit', 'uses' => 'SliderController@edit', 'middleware' => ['permission:config-edit']]);
    Route::patch('sml_admin/slider/{id}', ['as' => 'config.slider.update', 'uses' => 'SliderController@update', 'middleware' => ['permission:config-edit']]);
    Route::delete('sml_admin/slider/{id}', ['as' => 'config.slider.destroy', 'uses' => 'SliderController@destroy', 'middleware' => ['permission:config-delete']]);

    //--TIỆN ÍCH--//
    Route::get('sml_admin/tien-ich', ['as' => 'config.tienich.index', 'uses' => 'TienIchController@index', 'middleware' => ['permission:config-list|config-create|config-edit|config-delete']]);
    Route::post('sml_admin/tien-ich/create', ['as' => 'config.tienich.store', 'uses' => 'TienIchController@store', 'middleware' => ['permission:config-create']]);
    Route::get('sml_admin/tien-ich/create', ['as' => 'config.tienich.create', 'uses' => 'TienIchController@create', 'middleware' => ['permission:config-create']]);
    Route::get('sml_admin/tien-ich/{id}/edit', ['as' => 'config.tienich.edit', 'uses' => 'TienIchController@edit', 'middleware' => ['permission:config-edit']]);
    Route::patch('sml_admin/tien-ich/{id}', ['as' => 'config.tienich.update', 'uses' => 'TienIchController@update', 'middleware' => ['permission:config-edit']]);
    Route::delete('sml_admin/tien-ich/{id}', ['as' => 'config.tienich.destroy', 'uses' => 'TienIchController@destroy', 'middleware' => ['permission:config-delete']]);

    //POST
    //--VỊ TRÍ--//
    Route::get('sml_admin/posts/vi-tri', ['as' => 'posts.vitri.index', 'uses' => 'PostsController@getPostViTriContent']);
    Route::post('sml_admin/posts/vi-tri', ['as' => 'posts.vitri.store', 'uses' => 'PostsController@savePostViTriContent']);

    //--TRANG CHỦ--//
    Route::get('sml_admin/posts/trang-chu', ['as' => 'posts.trangchu.index', 'uses' => 'PostsController@getPostTrangChuContent']);
    Route::post('sml_admin/posts/trang-chu', ['as' => 'posts.trangchu.store', 'uses' => 'PostsController@savePostTrangChuContent']);

    //--CĂN HỘ--//
    Route::get('sml_admin/posts/can-ho', ['as' => 'posts.canho.index', 'uses' => 'PostsController@getPostCanHoContent']);
    Route::post('sml_admin/posts/can-ho', ['as' => 'posts.canho.store', 'uses' => 'PostsController@savePostCanHoContent']);

    //--THIẾT KẾ--//
    Route::get('sml_admin/posts/thiet-ke', ['as' => 'posts.thietke.index', 'uses' => 'PostsController@getPostThietKeContent']);
    Route::post('sml_admin/posts/thiet-ke', ['as' => 'posts.thietke.store', 'uses' => 'PostsController@savePostThietKeContent']);

    //--TIỆN ÍCH--//
    Route::get('sml_admin/posts/tien-ich', ['as' => 'posts.tienich.index', 'uses' => 'PostsController@getPostTienIchContent']);
    Route::post('sml_admin/posts/tien-ich', ['as' => 'posts.tienich.store', 'uses' => 'PostsController@savePostTienIchContent']);
});
