<?php

namespace App;

use \App\Model;

class PostTopic extends Model
{
    protected $table = "post_topics";
    public function topics(){
        return $this->belongsTo('App\Topic');
    }
}
