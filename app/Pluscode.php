<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pluscode extends Model
{
    protected $table = "pluscode";
    protected $fillable = ['name', 'link', 'photo', 'description1',
                            'description2', 'description3'];
}
