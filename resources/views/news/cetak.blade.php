<!DOCTYPE html>
<html>

<head>
    <title>Cetak Berita</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        * {
            font-family: 'Times New Roman', Times, serif;
            margin-left: 5%;
            margin-right: 5%;
        }

        p,
        i {
            text-align: justify;
        }


        .page-break {
            page-break-after: always;
        }
    </style>
</head>

<body>
    <div class="page-break">
        @foreach($cetak as $i=>$ctk)
        <p>[{{ ++$i }}]</p>
        <h3>{{ $ctk->judul}}</h3>
        <hr>
        <i>Oleh : {{$ctk->penulis}} &nbsp; | &nbsp; {{ Carbon\Carbon::parse($ctk->tgl_post)->translatedFormat('l, d F Y') }}</i><br><br>
        <center>
            <img src="{{ public_path('/images/') . $ctk->gambar }}" width="100%" height="30%">
        </center>
        <i>Kategori : {{$ctk->kategori}}</i>
        <hr>
        <p><i>{!!$ctk->ringkasan!!}</i></p>
        <hr>
        <p>{!!$ctk->deskripsi!!}</p>
    </div>
    <div class="page-break">
    </div>
    @endforeach

</body>

</html>