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
        \Session::flash('toastr', [
            'type'  => 'success',
            'message'   => 'yêu cầu của bạn đã được gửi'
            ]);

        return redirect()->to('/');
        }
}
