<?php

namespace App\Http\Controllers;

use App\Post;
use App\Topic;
use Illuminate\Http\Request;

class TopicController extends Controller
{
    //专题详情页
    public function show(Topic $topic){
        //获取专题信息，包含专题文章数
        $topic = Topic::withCount('postTopics')->find($topic->id);
        //获取专题下的文章，并根据创建时间倒序排列，取前十条
        $posts = $topic->posts()->orderBy('created_at','desc')->take(10)->get();
        //获取当前用户没有在此专题投过稿的文章
        $myPosts = Post::authorBy(\Auth::id())->topicNotBy($topic->id)->get();
        return view('topic/show',compact('topic','posts','myPosts'));
    }
    //专题投稿
    public function submit(Topic $topic){
        //验证
        $this->validate(request(),[
            'post_ids'=>'required|array'
        ]);
        //逻辑
        $post_ids = request('post_ids');
        $topic_id = $topic->id;
        foreach ($post_ids as $post_id){
            \App\PostTopic::firstOrCreate(compact('post_id','topic_id'));
        }
        //渲染
        return back();
    }
}
