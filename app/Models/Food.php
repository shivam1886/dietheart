<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Food extends Model
{
    use SoftDeletes;
    
    protected $table = 'foods';

    public function getImageAttribute($image){
       if($image && file_exists(public_path('images/food/'.$image))){
           return asset('public/images/food/'.$image);
       }
           return asset('public/images/system/image-not-available.png');
    }

}
