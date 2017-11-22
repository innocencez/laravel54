<?php

namespace App;

use App\Model;
use Laravel\Scout\Searchable;
class Post extends Model
{
    use Searchable;
    //定义索引里边的type
    public function searchableAs()
    {
        return 'post';
    }
    //定义有哪些字段需要索引
    public function toSearchableArray()
    {
        return [
            'title' => $this->title,
            'content' => $this->content,
        ];
    }
    //关联用户模型
    public function user(){
        return $this->belongsTo('App\User');
    }
    //关联评论模型
    public function comments(){
        return $this->hasMany('App\Comment')->orderBy('created_at','desc');
    }
    //关联赞模型
    public function zan($user_id){
        return $this->hasOne(\App\Zan::class)->where('user_id',$user_id);
    }
    //获取所有的赞
    public function zans(){
        return $this->hasMany(\App\Zan::class);
    }
}
