<?php
namespace App\Admin\Controllers;
use App\Post;

class PostController extends Controller{
    //文章列表
    public function index(){
        $posts = Post::where('status',0)->orderBy('created_at','desc')->paginate(5);
        return view('admin.post.index',compact('posts'));
    }
    //审核文章
    public function status(Post $post){
        $this->validate(request(),[
            'status'=>'required|in:-1,1'
        ]);
        $post->status = request('status');
        $post->save();
        return [
            'error' => 0,
            'msg' => ''
        ];
    }
}