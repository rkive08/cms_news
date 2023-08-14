<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>
    <script src="../assets/frontend/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.115.4">
    <title>MangoHub News</title>
    <link rel="icon" href="assets/backend/img/logo (2).png">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/blog/">



    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

    <link href="../assets/frontend/dist/css/bootstrap.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
    <x-head.tinymce-config />
</head>

<body>


    <div class="container">
        <header class="border-bottom lh-1 py-3">
            <div class="row flex-nowrap justify-content-between align-items-center">
                <div class="col-4 pt-1">
                    <a class="link-secondary" href="#"></a>
                </div>
                <div class="col-4 text-center">
                    <a class="blog-header-logo text-body-emphasis text-decoration-none" href="http://127.0.0.1:8000/"><img src="assets/backend/img/logo (2).png" width="25%" alt="logo"></a>
                </div>
                <div class="col-4 d-flex justify-content-end align-items-center">
                    <a class="btn btn-sm btn-outline-secondary" href="http://127.0.0.1:8000/login">Sign up</a>
                </div>
            </div>
        </header>

        <div class="nav-scroller py-1 mb-3 border-bottom bg-primary">
            <nav class="nav nav-underline justify-content-between">&nbsp;
                <a class="nav-item nav-link link-body-emphasis active text-light" href="http://127.0.0.1:8000/">Semua</a>
                @foreach($navbar as $nav)
                <a class="nav-item nav-link link-body-emphasis text-light" href="#">{{$nav->kategori}}</a>
                @endforeach
                &nbsp;
            </nav>
        </div>
    </div>
    @foreach($banner as $ban)
    <main class="container">
        <div class="p-4 p-md-5 mb-4 rounded text-body-emphasis bg-body-secondary">
            <div class="col-lg-6 px-0">
                <h1 class="display-4 fst-italic">{{$ban->judul}}</h1>
                <p class="lead my-3">{!!$ban->ringkasan!!}</p>
                <p class="lead mb-0"><a href="/detail/{{ $ban->id }}" class="text-body-emphasis fw-bold">Continue reading...</a></p>
            </div>
        </div>
        @endforeach

        <div class="row mb-2">
            @foreach($lainnya as $lain)
            <div class="col-md-6">
                <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                    <div class="col p-4 d-flex flex-column position-static">
                        <strong class="d-inline-block mb-2 text-success-emphasis">{{$lain->kategori}}</strong>
                        <h3 class="mb-0">{{$lain->judul}}</h3>
                        <div class="mb-1 text-body-secondary">{{ Carbon\Carbon::parse($lain->tgl_post)->translatedFormat('j F Y') }}</div>
                        <p class="mb-auto">{!! $lain->ringkasan !!}</p>
                        <a href="/detail/{{ $lain->id }}" class="icon-link gap-1 icon-link-hover stretched-link">
                            Continue reading
                            <svg class="bi">
                                <use xlink:href="#chevron-right" />
                            </svg>
                        </a>
                    </div>
                    <div class="col-auto d-none d-lg-block">
                        <img src="{{ url('/images/'. $lain->gambar) }}" width="200" height="100">
                    </div>
                </div>
            </div>
            @endforeach
        </div>

        <div class="row g-5">
            <div class="col-md-8">
                <h2 class="display-5 link-body-emphasis mb-1">Another News</h2>
                <hr>
                <div class="row mb-2">
                    @foreach($lainnya2 as $lain2)
                    <div class="col-md-6">
                        <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                            <div class="col p-4 d-flex flex-column position-static">
                                <strong class="d-inline-block mb-2 text-success-emphasis">{{$lain2->kategori}}</strong>
                                <h3 class="mb-0">{{$lain2->judul}}</h3>
                                <div class="mb-1 text-body-secondary">{{ Carbon\Carbon::parse($lain2->tgl_post)->translatedFormat('j F Y') }}</div>
                                <p class="mb-auto">{!!$lain2->ringkasan!!}</p>
                                <a href="/detail/{{ $lain2->id }}" class="icon-link gap-1 icon-link-hover stretched-link">
                                    Continue reading
                                    <svg class="bi">
                                        <use xlink:href="#chevron-right" />
                                    </svg>
                                </a>
                            </div>
                            <div class="col-auto d-none d-lg-block">
                                <img src="{{ url('/images/'. $lain2->gambar) }}" width="200" height="100">
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>

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
                        @foreach ($news as $new)
                        <ul class="list-unstyled">
                            <li>
                                <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top" href="/detail/{{ $new->id }}">
                                    <svg class="bd-placeholder-img" width="100%" height="96" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                                        <img src="{{ url('/images/'. $new->gambar) }}" width="100px">
                                    </svg>
                                    <div class="col-lg-8">
                                        <h6 class="mb-0">{{ $new->judul}}</h6>
                                        <small class="text-body-secondary">{{ Carbon\Carbon::parse($new->tgl_post)->translatedFormat('j F Y') }}</small>
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

    <footer class="py-5 text-center bg-primary text-light">
        <p><b> Mini Project CMS News &bullet; MangoHub &bullet; @2023</b></p>
        <p class="mb-0">
            <a href="#" style="color: white;">Back to top</a>
        </p>
    </footer>
    <script src="../assets/frontend/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>