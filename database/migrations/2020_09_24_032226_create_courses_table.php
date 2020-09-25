<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('slug')->index()->unique();
            $table->tinyInteger('active')->default(1);
            $table->integer('type_id')->default(0);
            $table->integer('tuition_fees')->default(0);
            $table->string('requirements')->nullable();
            $table->string('training_time')->nullable();
            $table->mediumText('description')->nullable();
            $table->text('content')->nullable();
            $table->string('avatar')->nullable();
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
        Schema::dropIfExists('courses');
    }
}
