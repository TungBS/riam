<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Contact;
class AdminContactController extends Controller
{
    public function index() {
        $contacts = Contact::whereRaw(1);
    	$data = [
    		'contact' => $contacts,
    	];
    	return view('admin.contact.index', $data);
    }
}
