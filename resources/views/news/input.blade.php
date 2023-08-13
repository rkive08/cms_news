@extends('layouts.layout')
@section ('content')

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h4 class="m-0 font-weight-bold text-primary"><i class="bi bi-file-earmark-plus"></i> Input Beita Baru</h4>
    </div>
    <div class="card-body text-dark">
        <div class="col-md-8 col-sm-12 bg-white p-4">
            <form action="{{ route('news.store') }}" method="POST" enctype="multipart/form-data">
                {{csrf_field()}}
                @csrf
                <div class="form-group">
                    <label for=""><b>Kategori Berita</b> </label>
                    <select name="kategori" class="form-control" required>
                        <option value="" disabled selected>---Pilih Kategori---</option>
                        @foreach ($kategori as $kat)
                        <option class="text-dark" value="{{ $kat->kategori}}">{{ $kat->kategori}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label><b>Gambar</b> </label>
                    <input class="form-control text-dark" type="file" name="gambar" id="gambar" required>
                </div>
                <div class="form-group">
                    <label><b>Judul Berita</b> </label>
                    <input type="text" class="form-control text-dark" name="judul" placeholder="Tulis judul berita">
                </div>
                <div class="form-group">
                    <label><b>Deskripsi Singkat</b> </label>
                    <textarea id="myeditorinstance" class="form-control text-dark" name="ringkasan" rows="8"></textarea>
                </div>
                <div class="form-group">
                    <label><b>Isi Berita</b> </label>
                    <textarea id="myeditorinstance" class="form-control text-dark" name="deskripsi" rows="15"></textarea>
                </div>
                <div class="col-md-19" align="right">
                    <input type="Button" class="btn btn-primary btn-send" value="Kembali" onclick="history.go(-1)">
                    <input type="submit" class="btn btn-success btn-send" value="Upload">
                </div>
            </form>
        </div>
    </div>
</div>

@endsection