<title>MangoHub | Data Berita</title>
@extends('layouts.layout')
@section ('content')
@include ('sweetalert::alert')

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h4 class="m-0 font-weight-bold text-primary"><i class="fas fa-fw fa-list"></i> Data Postingan Berita</h4>
    </div>
    <div class="card-body">
        <div>
            <a href="{{ route('news.create') }}" class="d-none d-sm-inline-block btn btn-sm btn-success shadow-sm">
                <i class="fas fa-plus fa-sm text-white-50"></i> Tambah </a>
        </div><br>
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead class="font-weight-bold text-dark" align="center">
                    <tr>
                        <th>No.</th>
                        <th>Gambar</th>
                        <th>Judul</th>
                        <th>Kategori</th>
                        <th>Ringkasan</th>
                        <th>Penulis</th>
                        <th>Tanggal Post</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody class="text-dark">
                    @foreach ($news as $i => $new)
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td><img src="{{ url('/images/'. $new->gambar) }}" width="100px"></td>
                        <td>{{ $new->judul }}</td>
                        <td>{{ $new->kategori}}</td>
                        <td>{{ $new->ringkasan}}</td>
                        <td>{{ $new->penulis}}</td>
                        <td> {{ Carbon\Carbon::parse($new->tgl_post)->translatedFormat('j F Y') }}</td>
                        <td><a href="{{ route('news.edit', [$new->id])}}" class="d-none d-sm-inline-block btn-sm btn-outline-success shadow-sm">
                                <i class="fas fa-edit fa-sm text-gray-50" title="Edit"></i>
                            </a>
                            <a href="/news/hapus/{{$new->id}}" onclick="return confirm('Yakin Ingin menghapus berita `{{$new->judul}}` ?')" class="d-none d-sm-inline-block btn-sm btn-outline-danger shadow-sm">
                                <i class="fas fa-trash-alt fa-sm-text-gray-50" title="Hapus"></i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection