<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Alert;

class KategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kategori = \App\Models\Kategori::All();
        return view('kategori.index', ['kategori' => $kategori]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('kategori.input');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $tambah_kategori = new \App\Models\Kategori;
        $tambah_kategori->kategori = $request->kategori;
        $tambah_kategori->save();

        activity()->log('Menambah kategori baru');
        Alert::success('Berhasil', 'Kategori ditambahkan');
        return redirect('/kategori');
    }

    /**
     * Display the specified resource.
     */
    public function show(Kategori $kategori)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Kategori $kategori)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Kategori $kategori)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($kategori)
    {
        $kategori = \App\Models\Kategori::findOrFail($kategori);
        $kategori->delete();

        activity()->log('Menghapus kategori');
        Alert::success('Di Hapus', 'Kategori dihapus');
        return redirect()->route('kategori.index');
    }
}
