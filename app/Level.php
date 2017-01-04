<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Level extends Model
{
    protected $table= "levels";
    protected $fillable = ['name'];

    public function items(){
        return $this->hasMany('App\Item');
    }
}
