<?php

namespace App;

use Illuminate\Database\Eloquent\Model as BaseModel;

class Model extends BaseModel
{
    protected  $fillable = ['title','content','user_id','post_id'];
}