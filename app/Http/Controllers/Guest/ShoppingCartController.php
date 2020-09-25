<?php

namespace App\Http\Controllers\Guest;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Transaction;
class ShoppingCartController extends Controller
{
    public function postPay(Request $request) {
		
		/*dd($request->all());*/  

    	$data = $request->except("_token");

    	Transaction::insert($data);
       \Toastr::success('Khóa học của bạn đã được đăng ký', 'Đăng ký thành công', ['toastr-header-right']);

        return redirect()->to('/');
        }
}
