<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Artical extends Model
{
    use SoftDeletes;

    public function getImageAttribute($image){
        if($image){
            return asset('public/images/artical/'.$image);
        }
            return asset('public/images/system/image-not-available.png');
     }
}
