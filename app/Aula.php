<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aula extends Model
{
    protected $table = "aula";
    protected $fillable = ['name', 'link', 'photo', 'description1',
                            'description2', 'description3'];
}
