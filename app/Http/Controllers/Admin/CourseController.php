<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Course;
use App\Models\Type;
use Carbon\Carbon;

class CourseController extends AdminController {

    public function index() {
        $courses = Course::with('type:id,name')->paginate(10);
    	$data = [
    		'courses' => $courses,
    	];
    	return view('admin.course.index', $data);
    }

    public function upload(Request $request) {
        if ($request->hasFile('upload')) {
            $originalName = $request->file('upload')->getClientOriginalName();
            $fileName = pathinfo($originalName, PATHINFO_FILENAME);
            $extension = $request->file('upload')->getClientOriginalExtension();
            $fileName = date('Y-m-d__').Str::slug($request->file('upload')->getClientOriginalName()).'.'.$extension;
            $path = public_path().'/uploads/courses/';
            $request->file('upload')->move($path, $fileName);

            $CKEditorFuncNum = $request->input('CKEditorFuncNum');
            $url = asset('public/uploads/courses/'.$fileName);
            $msg = 'Tải ảnh lên thành công';
            $response = "<script>window.parent.CKEDITOR.tools.callFunction($CKEditorFuncNum, '$url', '$msg')</script>";
            @header('Content-type: text/html; charset-utf-8');
            echo $response;
        }
    }

    public function create() {
    	$types = Type::all();
        $data = [
            'types' => $types,
        ];
    	return view('admin.course.create', $data);
    }

	public function created(Request $request) {
    	$data = $request->except('_token', 'avatar');
     	$data['slug'] = Str::slug($request->name);
    	$data['created_at'] = Carbon::now();

        if ($request->avatar) {
            $avatar = upload_image('avatar');
            if ($avatar['code'] == 1)
                $data['avatar'] = $avatar['name'];
        }
		$id = Course::insertGetId($data);
		return redirect()->to('/admin/course');
    }

    public function update($id) {
    	$course = Course::findOrFail($id);
        $types = Type::all();
        $data = [
            'course' => $course,
            'types' => $types,
        ];
    	return view('admin.course.update', $data);
    }

	public function updated(Request $request, $id) {
    	$course = Course::find($id);
    	$data = $request->except('_token', 'avatar');
     	$data['slug'] = Str::slug($request->name);
    	$data['updated_at'] = Carbon::now();

		if ($request->avatar) {
            $avatar = upload_image('avatar');
            if ($avatar['code'] == 1)
                $data['avatar'] = $avatar['name'];
        }

        $result = $course->update($data);
		return redirect()->to('/admin/course');
    }

    public function active($id) {
    	$course = Course::find($id);
    	$course->active = !$course->active;
    	$course->save();
		return redirect()->back();
    }

    public function delete($id) {
    	$course = Course::find($id);
    	if ($course)
    		$course->delete();
    	return redirect()->back();
    }
}
