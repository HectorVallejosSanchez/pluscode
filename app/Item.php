<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    protected $table = "items";
    protected $fillable = ['name', 'link','photo','category_id','level_id'];

    public function category(){
        return $this->belongsTo('App\Category');
    }
    public function level(){
        return $this->belongsTo('App\Level');
    }
}
