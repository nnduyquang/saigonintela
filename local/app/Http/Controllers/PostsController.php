<?php

namespace App\Http\Controllers;

use App\Config;
use App\News;
use App\Post;
use App\Slider;
use App\TienIch;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    //Vị Trí//
    public function getPostViTriContent(){
        $posts = Post::whereIn('name', ['vitri-contents'])->orderBy('order')->get();
        return view('backend.admin.posts.vitri', compact('posts'));
    }
    public function savePostViTriContent(Request $request){
        $contentVitri = $request->input('content-vitri');
        $post = Post::where('name', 'vitri-contents')->first();
        $post->content=$contentVitri;
        $post->save();
        return redirect()->route('posts.vitri.index')
            ->with('success', 'Bài Viết Vị Trí Lưu Thành Công');
    }
    public function getFrontendContentVitri(){
        $posts = Post::whereIn('name', ['vitri-contents'])->orderBy('order')->first();
        $diachi=Config::whereIn('name',['cf-address-post'])->first();
        $phone=Config::whereIn('name',['cf-phone'])->first();
        return view('frontend.vitri.index', compact('posts','diachi','phone'));
    }

    //Trang Chủ//
    public function getPostTrangChuContent(){
        $posts = Post::whereIn('name', ['trangchu-contents-km','trangchu-contents-gt','trangchu-contents-vt','trangchu-contents-lh'])->orderBy('order')->get();
        return view('backend.admin.posts.trangchu', compact('posts'));
    }
    public function savePostTrangChuContent(Request $request){
        $contentTrangchuKm = $request->input('content-trangchu-km');
        $hdContentTrangchuKm = $request->input('hd-content-trangchu-km');
        $contentTrangchuGt = $request->input('content-trangchu-gt');
        $hdContentTrangchuGt = $request->input('hd-content-trangchu-gt');
        $contentTrangchuVt = $request->input('content-trangchu-vt');
        $hdContentTrangchuVt = $request->input('hd-content-trangchu-vt');
        $contentTrangchuLh = $request->input('content-trangchu-lh');
        $hdContentTrangchuLh = $request->input('hd-content-trangchu-lh');
        if (strcmp(trim($contentTrangchuKm), trim($hdContentTrangchuKm)) != 0) {
            $posts = Post::where('name', 'trangchu-contents-km')->first();
            $posts->content = $contentTrangchuKm;
            $posts->save();
        }
        if (strcmp(trim($contentTrangchuGt), trim($hdContentTrangchuGt)) != 0) {
            $posts = Post::where('name', 'trangchu-contents-gt')->first();
            $posts->content = $contentTrangchuGt;
            $posts->save();
        }
        if (strcmp(trim($contentTrangchuVt), trim($hdContentTrangchuVt)) != 0) {
            $posts = Post::where('name', 'trangchu-contents-vt')->first();
            $posts->content = $contentTrangchuVt;
            $posts->save();
        }
        if (strcmp(trim($contentTrangchuLh), trim($hdContentTrangchuLh)) != 0) {
            $posts = Post::where('name', 'trangchu-contents-lh')->first();
            $posts->content = $contentTrangchuLh;
            $posts->save();
        }
        return redirect()->route('posts.trangchu.index')
            ->with('success', 'Bài Viết Trang Chủ Lưu Thành Công');
    }
    public function getFrontendContentTrangChu(){
        $posts = Post::whereIn('name', ['trangchu-contents-km','trangchu-contents-gt','trangchu-contents-vt','trangchu-contents-lh'])->orderBy('order')->get();
        $tienichs = TienIch::where('tienich_is_active', '=', '1')->orderBy('tienich_order', 'ASC')->get();
        $tintucs=News::where('isPost', '=', '1')->orderBy('id', 'DESC')->get();
        $sliders=Slider::where('slider_is_active', '=', '1')->orderBy('slider_order', 'ASC')->get();
        $phone=Config::whereIn('name',['cf-phone'])->first();
        return view('frontend.trangchu.index', compact('posts','tienichs','tintucs','sliders','phone'));
    }

    //Căn Hộ//
    public function getPostCanHoContent(){
        $posts = Post::whereIn('name', ['canho-contents'])->orderBy('order')->get();
        return view('backend.admin.posts.canho', compact('posts'));
    }
    public function savePostCanHoContent(Request $request){
        $contentCanHo = $request->input('content-canho');
        $post = Post::where('name', 'canho-contents')->first();
        $post->content=$contentCanHo;
        $post->save();
        return redirect()->route('posts.canho.index')
            ->with('success', 'Bài Viết Căn Hộ Lưu Thành Công');
    }
    public function getFrontendContentCanHo(){
        $posts = Post::whereIn('name', ['canho-contents'])->orderBy('order')->first();
        $diachi=Config::whereIn('name',['cf-address-post'])->first();
        $phone=Config::whereIn('name',['cf-phone'])->first();
        return view('frontend.canho.index', compact('posts','diachi','phone'));
    }

    //Thiết Kế//
    public function getPostThietKeContent(){
        $posts = Post::whereIn('name', ['thietke-contents'])->orderBy('order')->get();
        return view('backend.admin.posts.thietke', compact('posts'));
    }
    public function savePostThietKeContent(Request $request){
        $contentThietKe = $request->input('content-thietke');
        $post = Post::where('name', 'thietke-contents')->first();
        $post->content=$contentThietKe;
        $post->save();
        return redirect()->route('posts.thietke.index')
            ->with('success', 'Bài Viết Thiết Kế Căn Hộ Lưu Thành Công');
    }
    public function getFrontendContentThietke(){
        $posts = Post::whereIn('name', ['thietke-contents'])->orderBy('order')->first();
        $diachi=Config::whereIn('name',['cf-address-post'])->first();
        $phone=Config::whereIn('name',['cf-phone'])->first();
        return view('frontend.thietke.index', compact('posts','diachi','phone'));
    }

    //Tiện Ích//
    public function getPostTienIchContent(){
        $posts = Post::whereIn('name', ['tienich-contents'])->orderBy('order')->get();
        return view('backend.admin.posts.tienich', compact('posts'));
    }
    public function savePostTienIchContent(Request $request){
        $contentTienIch = $request->input('content-tienich');
        $post = Post::where('name', 'tienich-contents')->first();
        $post->content=$contentTienIch;
        $post->save();
        return redirect()->route('posts.tienich.index')
            ->with('success', 'Bài Viết Tiện Ích Dự Án Lưu Thành Công');
    }
    public function getFrontendContentTienIch(){
        $posts = Post::whereIn('name', ['tienich-contents'])->orderBy('order')->first();
        $diachi=Config::whereIn('name',['cf-address-post'])->first();
        $phone=Config::whereIn('name',['cf-phone'])->first();
        return view('frontend.tienich.index', compact('posts','diachi','phone'));
    }
    //Liên Hệ//
    public function getFrontendContentLienHe(){
        $phone=Config::whereIn('name',['cf-phone'])->first();
        return view('frontend.lienhe.index', compact('phone'));
    }
    //Liên Hệ//
    public function getFrontendContentCategory(){
        $phone=Config::whereIn('name',['cf-phone'])->first();
        return view('frontend.menu.m-category', compact('phone'));
    }
}
