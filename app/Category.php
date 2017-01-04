<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = "categories";
    protected $fillable = ['name', 'photo','description1', 'description2', 'description3'];

    public function items(){
        return $this->hasMany('App\Item');
    }
}
