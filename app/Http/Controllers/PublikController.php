<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use \App\Models\News;
use DB;
use App\Models\Kategori;

class PublikController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $news = \App\Models\News::All();
        // return view('frontend.layout', ['news' => $news]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function show()
    {
        $news = DB::table('tb_news')->orderby('id', 'DESC')->paginate(3);
        $banner = DB::table('tb_news')->where('id', \DB::raw("(select max(`id`) from tb_news)"))->get();
        $lainnya = News::paginate(2);
        $lainnya2 = DB::table('tb_news')->orderby('id', 'DESC')->get();
        $navbar = \App\Models\Kategori::All();


        return view('frontend.layout', ['news' => $news, 'banner' => $banner, 'lainnya' => $lainnya, 'lainnya2' => $lainnya2, 'navbar' => $navbar]);
    }



    /**
     * Display the specified resource.
     */

    /**
     * Show the form for editing the specified resource.
     */
    public function detail($id)
    {
        $detail = \App\Models\News::findOrFail($id);
        $other = DB::table('tb_news')->orderby('id', 'DESC')->paginate(3);
        return view('frontend.detail', ['news' => $detail, 'other' => $other]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
