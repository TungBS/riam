<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Type;
use Carbon\Carbon;

class TypeController extends AdminController {
    public function index() {
    	$types = Type::paginate(10);
    	$data = [
    		'types' => $types,
    	];
    	return view('admin.type.index', $data);
    }

    public function create() {
    	return view('admin.type.create');
    }

	public function created(Request $request) {
    	$data = $request->except('_token');
     	$data['slug'] = Str::slug($request->name);
    	$data['created_at'] = Carbon::now();
		$id = Type::insertGetId($data);
		return redirect()->to('/admin/type');
    }

    public function update($id) {
    	$type = Type::find($id);
    	return view('admin.type.update', compact('type'));
    }

	public function updated(Request $request, $id) {
    	$type = Type::find($id);
    	$data = $request->except('_token');
     	$data['slug'] = Str::slug($request->name);
    	$data['updated_at'] = Carbon::now();
		$type->update($data);
		return redirect()->to('/admin/type');
    }

    public function active($id) {
    	$type = Type::find($id);
    	$type->type = !$type->status;
    	$type->save();
		return redirect()->back();
    }

    public function delete($id) {
    	$type = Type::find($id);
    	if ($type)
    		$type->delete();
    	return redirect()->back();
    }
}
