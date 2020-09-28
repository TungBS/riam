<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Transaction;

class AdminTransactionController extends Controller
{
    public function index() {
        $transactions = Transaction::whereRaw(1);
    	$data = [
    		'transaction' => $transactions,
    	];
    	return view('admin.transaction.index', $data);
    }
}
