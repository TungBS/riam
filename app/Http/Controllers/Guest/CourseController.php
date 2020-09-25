<?php

namespace App\Http\Controllers\Guest;

use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\Type;

class CourseController extends GuestController {

    public function getCourseList() {
        $courses = Course::where('active', 1)
            ->orderByDesc('id')
            ->select('id', 'name', 'slug', 'avatar', 'training_time', 'requirements', 'description')
            ->paginate(16);
        $data = [
            'courses' => $courses,
        ];
        return view('guest.index', $data);
    }

    public function getCourseListByType($slug) {
        $arrSlug = explode('-', $slug);
        $typeId = array_pop($arrSlug);
        $type = Type::findOrFail($typeId);
        $courses = Course::where([
                'active' => 1,
                'type_id' => $typeId,
            ])
            ->orderByDesc('id')
            ->select('id', 'name', 'slug', 'avatar', 'training_time', 'requirements', 'description')
            ->paginate(16);
        $data = [
            'courses' => $courses,
            'typeId' => $typeId,
            'type' => $type,
        ];
        return view('guest.course.list', $data);
    }

    public function getCourseDetail(Request $request, $slug) {
    	$arrSlug = explode('-', $slug);
    	$id = array_pop($arrSlug);
    	if($id) {
            $course = Course::with('type:id,name,slug')->findOrFail($id);
    		$data = [
    			'course' => $course,
                'suggestedCourses' => $this->getSuggestedCourses($course->type_id),
                'bodyClass' => 'single',
    		];
    		return view('guest.course.detail', $data);
    	}
    	return redirect()->to('/');
    }

    // Lấy sản phẩm liên quan
    private function getSuggestedCourses($typeId) {
        $courses = Course::where([
                'active' => 1,
                'type_id' => $typeId,
            ])
            ->orderByDesc('id')
            ->select('id', 'name', 'slug', 'avatar', 'training_time', 'requirements', 'description')
            ->paginate(3);
        return $courses;
    }
}
