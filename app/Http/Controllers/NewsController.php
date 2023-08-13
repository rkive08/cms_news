<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Kategori;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Alert;
use DB;
use PDF;
use Illuminate\Support\Facades\Auth;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $news = \App\Models\News::All();
        $kategori = \App\Models\Kategori::All();
        return view('news.index', ['news' => $news, 'kategori' => $kategori]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $kategori = \App\Models\Kategori::All();
        return view('news.input', ['kategori' => $kategori]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $tanggal = date('Y-m-d');

        $gambar = $request->gambar;
        $nm_file = time() . '.' . $gambar->getClientOriginalExtension();
        $gambar->move('images/', $nm_file);


        DB::table('tb_news')->insert([
            'gambar' => $nm_file,
            'kategori' => $request->kategori,
            'judul' => $request->judul,
            'ringkasan' => $request->ringkasan,
            'deskripsi' => $request->deskripsi,
            'penulis' => Auth::user()->name,
            'tgl_post' => $tanggal,

        ]);

        Alert::success('Berhasil', 'Berita di Upload');
        return redirect('/news');
    }

    /**
     * Display the specified resource.
     */

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $edit_news = \App\Models\News::findOrFail($id);
        $kategori = \App\Models\Kategori::All();
        return view('news.edit', ['news' => $edit_news, 'kategori' => $kategori]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $update_news = \App\Models\News::findOrFail($id);
        if ($request->has('gambar')) {

            $gambar = $request->gambar;
            $nm_file = time() . '.' . $gambar->getClientOriginalExtension();
            $gambar->move('images/', $nm_file);
            $update_news->gambar = $nm_file;

            $update_news->kategori = $request->get('kategori');
            $update_news->judul = $request->get('judul');
            $update_news->ringkasan = $request->get('ringkasan');
            $update_news->deskripsi = $request->get('deskripsi');
            $update_news->save();
        }

        Alert::success('Update Berhasil', 'Berita telah di ubah');
        return redirect()->route('news.index');
    }

    public function cetak(Request $request)
    {

        $cetak = News::paginate(5);

        $pdf = PDF::loadview('news.cetak', ['cetak' => $cetak])->setPaper('A4', 'portait');
        return $pdf->stream();
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy($news)
    {
        $news = \App\Models\News::findOrfail($news);
        $news->delete();
        unlink(public_path() . '/images/' . $news->gambar);

        Alert::success('Di Hapus', 'Berita di hapus');
        return redirect()->route('news.index');
    }
}
