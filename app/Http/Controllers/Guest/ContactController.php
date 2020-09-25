<?php

namespace App\Http\Controllers\Guest;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Contact;

class ContactController extends Controller
{
    public function store(Request $request) {
		
		/*dd($request->all());*/  

    	$data = $request->except("_token");

    	Contact::insert($data);
        \Toastr::success('Nội dung của bạn đã được gửi', 'Gửi thành công', ['toastr-header-right']);

        return redirect()->to('/');
        }
}
