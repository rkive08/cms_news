<title>MangoHub | Data Kategori</title>
@extends('layouts.layout')
@section ('content')
@include ('sweetalert::alert')

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h4 class="m-0 font-weight-bold text-primary"><i class="fas fa-fw fa-clipboard-list"></i> Kategori Berita</h4>
    </div>
    <div class="card-body">
        <div>
            <a href="{{ route('kategori.create') }}" class="d-none d-sm-inline-block btn btn-sm btn-success shadow-sm">
                <i class="fas fa-plus fa-sm text-white-50"></i> Tambah </a>
        </div><br>
        <div class="table-responsive">
            <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
                <thead class="font-weight-bold text-light bg-primary" align="center">
                    <tr>
                        <th>No.</th>
                        <th>Kategori</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody class="text-dark" align="center">
                    @foreach ($kategori as $i => $kat)
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td>{{ $kat->kategori}}</td>
                        <td><a href="/kategori/hapus/{{$kat->id}}" onclick="return confirm('Yakin Ingin menghapus kategori `{{$kat->kategori}}` ?')" class="d-none d-sm-inline-block btn-sm btn-outline-danger shadow-sm">
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