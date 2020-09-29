<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Menu;
use App\Http\Controllers\Admin\AdminRequestMenu;
use Illuminate\Support\Str;
use Carbon\Carbon;

class AdminMenuController extends Controller
{
     public function index() {
    	$menus = Menu::all();
    	$viewData = [
    		'menus' => $menus
    	];
    	return view('admin.menu.index', $viewData);
    }

    public function create() {
    	return view('admin.menu.create');
    }

     public function store(Request $request) {
    	$data               = $request->except('_token');
        $data['mn_slug']     = Str::slug($request->mn_name);
        $data['created_at'] = Carbon::now();

        $id = Menu::insertGetId($data);
        return redirect()->back();
	}

	public function edit($id) {
		$menu = Menu::find($id);
		return view('admin.menu.update', compact('menu'));
	}

	public function update(Request $request, $id)
    {
        $menu           	= Menu::find($id);
        $data               = $request->except('_token');
        $data['mn_slug']     = Str::slug($request->mn_name);
        $data['updated_at'] = Carbon::now(); 

        $menu->update($data);
        return redirect()->back();
    }

    public function delete($id) {
        $menu   = Menu::find($id);
        if ($menu) ($menu)->delete();
        return redirect()->back();
    }
}
