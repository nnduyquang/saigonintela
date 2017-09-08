<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

class PostsController extends Controller
{
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
            ->with('success', 'Bài Viết Lưu Thành Công');
    }
    public function getFrontendContentVitri(){
        $posts = Post::whereIn('name', ['vitri-contents'])->orderBy('order')->first();
        return view('frontend.vitri.index', compact('posts'));
    }
}
