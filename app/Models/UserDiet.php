<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserDiet extends Model
{
    use SoftDeletes;

    protected $table = 'user_diets';

    public function user(){
        return $this->hasOne('App\User','id','user_id');
    }

    public function food(){
        return $this->hasOne('App\Models\Food','id','food_id');
    }
}
