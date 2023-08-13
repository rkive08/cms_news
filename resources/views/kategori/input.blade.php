@extends('layouts.layout')
@section ('content')

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h4 class="m-0 font-weight-bold text-primary">Input Kategori Baru</h4>
    </div>
    <div class="card-body">
        <div class="col-md-8 col-sm-12 bg-white p-4">
            <form action="{{ route('kategori.store') }}" method="POST" enctype="multipart/form-data">
                {{csrf_field()}}
                @csrf
                <div class="form-group">
                    <label><b>Kategori</b> </label>
                    <input type="text" class="form-control" name="kategori" placeholder="Tulis kategori berita">
                </div>
                <div class="col-md-19">
                    <input type="Button" class="btn btn-primary btn-send" value="Kembali" onclick="history.go(-1)">
                    <input type="submit" class="btn btn-success btn-send" value="Simpan">
                </div>
            </form>
        </div>
    </div>
</div>

@endsection