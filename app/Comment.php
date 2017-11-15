<?php

namespace App;

use App\Modell;

class Comment extends Model
{
    //关联文章模型
    public function post(){
        return $this->belongsTo('App\Post');
    }
    //关联用户模型
    public function user(){
        return $this->belongsTo('App\User');
    }
}
