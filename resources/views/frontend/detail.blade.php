<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>
    <script src="../assets/frontend/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.115.4">
    <title>{{$news->judul}}</title>
    <link rel="icon" href="{{ url('assets/backend/img/logo (2).png')}}">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/blog/">



    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

    <link href="../assets/frontend/dist/css/bootstrap.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
    <style>
        article {
            text-align: justify;
            margin-top: 5%;
        }
    </style>
</head>

<body>

    <div class="container">
        <header class="border-bottom lh-1 py-3">
            <div class="row flex-nowrap justify-content-between align-items-center">
                <div class="col-4 pt-1">
                    <a class="link-secondary" href="#"></a>
                </div>
                <div class="col-4 text-center">
                    <a class="blog-header-logo text-body-emphasis text-decoration-none" href="http://127.0.0.1:8000/"><img src="{{ url('assets/backend/img/logo (2).png')}}" width="25%" alt="logo"></a>
                </div>
                <div class="col-4 d-flex justify-content-end align-items-center">
                    <a class="btn btn-sm btn-outline-secondary" href="http://127.0.0.1:8000/login">Sign up</a>
                </div>
            </div>
        </header>

        <main class="container">
            <article class="blog-post">
                <i style="background-color: whitesmoke; padding: 1%; border-radius:7px;"><a href="http://127.0.0.1:8000/">Berita</a> > {{$news->kategori}}</i><br><br>
                <h2 class="display-5 link-body-emphasis mb-1">{{$news->judul}}</h2>
                <p class="blog-post-meta">{{ Carbon\Carbon::parse($news->tgl_post)->translatedFormat('j F Y') }} oleh <a href="#">{{$news->penulis}}</a></p>
                <center>
                    <img src="{{ url('/images/'. $news->gambar) }}" width="100%">
                </center><br>
                <i style="font-size: 20px;">{!!$news->ringkasan!!}</i>
            </article>

            <div class="row g-5">
                <div class="col-md-8">
                    <hr>
                    <article class="blog-post">
                        <p>{!!$news->deskripsi!!}</p>
                    </article>

                </div>
                <div class="col-md-4">
                    <div class="position-sticky" style="top: 2rem;">
                        <div class="p-4 mb-3 bg-body-tertiary rounded">
                            <h4 class="fst-italic">About</h4>
                            <p class="mb-0">Daftar Berita Web Developer
                                Ikuti berita terbaru dengan tag seputar #web developer</p>
                        </div>

                        <div>
                            <h4 class="fst-italic">Recent posts</h4>
                            @foreach ($other as $oth)
                            <ul class="list-unstyled">
                                <li>
                                    <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top" href="/detail/{{ $oth->id }}">
                                        <svg class="bd-placeholder-img" width="100%" height="96" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                                            <img src="{{ url('/images/'. $oth->gambar) }}" width="100px">
                                        </svg>
                                        <div class="col-lg-8">
                                            <h6 class="mb-0">{{ $oth->judul}}</h6>
                                            <small class="text-body-secondary">{{ Carbon\Carbon::parse($oth->tgl_post)->translatedFormat('j F Y') }}</small>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            @endforeach
                        </div>
                    </div>
                </div>
            </div>

        </main>
    </div>
    <br><br>
    <footer class="py-5 text-center bg-primary text-light">
        <p><b> Mini Project CMS News &bullet; MangoHub &bullet; @2023</b></p>
        <p class="mb-0">
            <a href="#" style="color: white;">Back to top</a>
        </p>
    </footer>
    <script src="../assets/frontend/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>