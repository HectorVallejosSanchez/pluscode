<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePluscodeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pluscode', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 200);
            $table->string('link', 255);
            $table->string('photo', 30);
            $table->string('description1', 100);
            $table->string('description2', 100);
            $table->string('description3', 100);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('pluscode');
    }
}
