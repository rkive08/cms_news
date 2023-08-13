<title>MangoHub | Log Aktifitas</title>
@extends('layouts.layout')
@section ('content')
@include ('sweetalert::alert')

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h4 class="m-0 font-weight-bold text-primary"><i class="fas fa-fw fa-key"></i> Data Log Aktifitas</h4>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                <thead class="font-weight-bold text-dark" align="center">
                    <tr>
                        <th>No.</th>
                        <th>Username</th>
                        <th>Aktifitas</th>
                        <th>Waktu</th>
                    </tr>
                </thead>
                <tbody class="text-dark">
                    @foreach ($activity_log as $i => $log)
                    <tr>
                        <td align="center">{{ ++$i }}</td>
                        <td>{{ $log->user->name}}</td>
                        <td>{{ $log->description}}</td>
                        <td align="center"> {{$log->created_at}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection