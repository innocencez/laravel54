<?php

namespace App\Http\Controllers;

use App\Topic;
use Illuminate\Http\Request;

class TopicController extends Controller
{
    //专题详情页
    public function show(Topic $topic){
        return view('topic/show');
    }
}
