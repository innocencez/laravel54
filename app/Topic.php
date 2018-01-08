<?php

namespace App;

use \App\Model;

class Topic extends Model
{
    //获取专题下的所有文章
    public function posts(){
        return $this->belongsToMany(\App\Post::class,'post_topics','topic_id','post_id');
    }
    //获取属于专题的文章，用于withCount
    public function postTopics(){
        return $this->hasMany(\App\PostTopic::class,'topic_id','id');
    }
}
