<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>
    <script src="../assets/frontend/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.115.4">
    <title>Login</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/blog/">



    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

    <link href="../assets/frontend/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
</head>


<body>
    <section class="vh-100">
        <div class="container-fluid h-custom">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <center>
                    <h1>LOGIN FORM</h1>
                </center>
                <div class="col-md-9 col-lg-6 col-xl-5">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp" class="img-fluid" alt="Sample image">
                </div>
                <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <label for="email" class="col-md-12 col-form-label text-md-left text-dark"><strong>Email :<strong></label>
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror " name="email" value="{{ old('email') }}" placeholder="Masukan Email" required autocomplete="email" autofocus>
                            @if ($errors->has('email'))
                            <span class="h6 text-danger help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                            @endif
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-3">
                            <label for="password" class="col-md-12 col-form-label text-md-left text-dark"><strong>Password :<strong></label>
                            <input id="password" type="password" class="form-control @error('email') is-invalid @enderror" name="password" placeholder="Masukan Password" required autocomplete="current-password">

                            @if ($errors->has('password'))
                            <span class="h6 text-danger help-block">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                            @endif
                        </div>

                        <div class="text-center text-lg-start mt-4 pt-2">
                            <button type="submit" class="btn btn-primary">
                                {{ __('Login') }}
                            </button>
                            <p class="small fw-bold mt-2 pt-1 mb-0">Belum punya akun?<a href="{{ route('register') }}" class="link-danger">Register</a></p>
                        </div>

                    </form>
                </div>
            </div>
        </div>
        <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
            <!-- Copyright -->
            <div class="text-white mb-3 mb-md-0">
                ayuintennurillah ©2023 &bullet; Mini Project Test &bullet; CMS News &bullet; MangoHub
            </div>
            <!-- Copyright -->
    </section>

    <script src="../assets/frontend/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>