<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $pengguna = DB::table('users')->count('id');
        $kategori = DB::table('tb_kategori')->count('id');
        $post = DB::table('tb_news')->count('id');
        return view('home', compact('pengguna', 'kategori', 'post'));
    }
}
