<?php

namespace App;

use \App\Model;

class Zan extends Model
{
    //关联文章模型
    public function post(){
        return $this->belongsTo('App\Post');
    }
}
