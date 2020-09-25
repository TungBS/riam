<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Course extends Model
{
    protected $table = 'courses';
    protected $guarded = [''];

    public function type() {
    	return $this->belongsTo(Type::class,'type_id'); // Trường category_id trong bảng products
    }
}
