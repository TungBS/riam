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
        \Session::flash('toastr', [
            'type'  => 'success',
            'message'   => 'Đơn hàng của bạn đã được lưu'
            ]);

        return redirect()->to('/');
        }
}
