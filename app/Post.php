<?php

namespace App;

use App\Model;
use Illuminate\Database\Eloquent\Builder;
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
    //获取属于某用户的所有文章
    public function scopeAuthorBy(Builder $query,$user_id){
        return $query->where('user_id',$user_id);
    }
    //关联PostTopics模型
    public function postTopics(){
        return $this->hasMany(\App\PostTopic::class,'post_id','id');
    }
    //获取不属于某一专题的文章
    public function  scopeTopicNotBy(Builder $query,$topic_id){
        return $query->doesntHave('postTopics','and',function($q) use($topic_id){
            return $q->where('topic_id',$topic_id);
        });
    }
    //全局scope
    protected static function boot()
    {
        parent::boot();
        static::addGlobalScope("avaiable",function (Builder $builder){
            $builder->whereIn('status',[0,1]);
        });
    }
}
