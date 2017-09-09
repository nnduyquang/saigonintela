<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTienichsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tienichs', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('tienich_order')->default(1);
            $table->boolean('tienich_is_active')->default(1);
            $table->string('tienich_image');
            $table->string('tienich_content');
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
        Schema::dropIfExists('tienichs');
    }
}
