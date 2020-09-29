<?php

namespace App\Http\Controllers\Admin;
use App\Models\Article;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Menu;
use Illuminate\Support\Str;
use Carbon\Carbon;

class AdminArticleController extends Controller
{
   public function index() {
   		$articles = Article::paginate(10);
   		$viewData = [
   			'articles' => $articles
   		];
   		return view('admin.article.index', $viewData);
   }

    public function create() {
      $menus = Menu::all();
    	return view('admin.article.create', compact('menus'));
    }

    public function store(Request $request) {
     {
        $data = $request->except('_token','a_avatar','a_position_1','a_position_2');
        $data['a_slug']     = Str::slug($request->a_name);
        $data['created_at']   = Carbon::now();

        if ($request->a_position_1) {
            $data['a_position_1'] = 1;
        }

        if ($request->a_position_2) {
            $data['a_position_2'] = 1;
        }

        if ($request->a_avatar) {
            $image = upload_image('a_avatar');
            if ($image['code'] == 1) 
                $data['a_avatar'] = $image['name'];
        } 

        $id = Article::insertGetId($data);

        return redirect()->back();
        }
    }

    public function edit($id) {
      $article = Article::find($id);
      $menus = Menu::all(); 
      return view('admin.article.update',compact('menus', 'article'));
    }

    public function update(AdminRequestArticle $request, $id) {

      $article           = Article::find($id);
      $data = $request->except('_token','a_avatar','a_position_1','a_position_2');
        $data['a_slug']     = Str::slug($request->a_name);
        $data['updated_at']   = Carbon::now();

        if ($request->a_position_1) {
            $data['a_position_1'] = 1;
        }else {
            $data['a_position_1'] = 0;
        }

        if ($request->a_position_2) {
            $data['a_position_2'] = 1;
        }else {
            $data['a_position_2'] = 0;
        }

        if ($request->a_avatar) {
            $image = upload_image('a_avatar');
            if ($image['code'] == 1) 
                $data['a_avatar'] = $image['name'];
        } 

        $id = $article->update($data);

        return redirect()->back();
    }

    public function delete($id)
    {
        $article = Article::find($id);
        if ($article) $article->delete();

        return redirect()->back();
    }
}
