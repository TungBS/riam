<?php

namespace App\Http\Controllers\Guest;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Type;

class GuestController extends Controller {
	public function __construct() {
		$types = Type::all();
		\View::share('types', $types);
	}

	
}
