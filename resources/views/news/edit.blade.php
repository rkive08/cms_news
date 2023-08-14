@extends('layouts.layout')
@section ('content')

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h4 class="m-0 font-weight-bold text-primary">Edit Berita</h4>
    </div>
    <div class="card-body">
        <div class="col-md-12 col-sm-12 bg-white p-4">
            <form action="{{ route('news.update', [$news->id]) }}" method="POST" enctype="multipart/form-data">
                {{csrf_field()}}
                @csrf
                <input type="hidden" name="_method" value="PUT">
                <div class="card-body">
                    <div class="form-group">
                        <label for=""><b>Kategori Berita</b> </label>
                        <select name="kategori" class="form-control" required>
                            <option value="" disabled selected>---Pilih Kategori---</option>
                            @foreach ($kategori as $kat)
                            @if ($news->kategori == $kat->kategori)
                            <option value="{{ $kat->kategori}}" selected>{{ $kat->kategori}}</option>
                            @else
                            <option value="{{ $kat->kategori}}">{{$kat->kategori}}</option>
                            @endif
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label><b>Gambar</b> </label>
                        <input class="form-control" type="file" name="gambar" id="gambar" value="{{ $news->gambar }}" required>
                    </div>
                    <div class="form-group">
                        <img class="img-thumbnail mt-2" src="{{ asset('images/'.$news['gambar']) }}" width="150">
                    </div>
                    <div class="form-group">
                        <label for=""><b>Judul Berita</b> </label>
                        <input type="text" name="judul" class="form-control" value="{{ $news->judul }}" required>
                    </div>
                    <div class="form-group">
                        <label><b>Deskripsi Singkat</b> </label>
                        <textarea id="myeditorinstance" class="form-control" name="ringkasan" rows="5" value="{{ $news->ringkasan }}" required>{{ $news->ringkasan }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for=""><b>Deskripsi</b> </label>
                        <textarea id="myeditorinstance" class="form-control" name="deskripsi" rows="25" value="{{ $news->deskripsi }}" required>{{ $news->deskripsi }}</textarea>
                    </div>

                    <br>
                    <a href="{{ route('news.index') }}"><input type="button" class="btn btn-primary btn-send" value="Kembali"></a>
                    <input type="submit" class="btn btn-success btn-send" value="Update">
            </form>
        </div>
    </div>
</div>
@endsection