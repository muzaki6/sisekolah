<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Si Sekolah</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

    <!-- Styles -->
    <style>
        /*! normalize.css v8.0.1 | MIT License | github.com/necolas/normalize.css */
        html {
            line-height: 1.15;
            -webkit-text-size-adjust: 100%
        }

        body {
            margin: 0
        }

        a {
            background-color: transparent
        }

        [hidden] {
            display: none
        }

        html {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;
            line-height: 1.5
        }

        *,
        :after,
        :before {
            box-sizing: border-box;
            border: 0 solid #e2e8f0
        }

        a {
            color: inherit;
            text-decoration: inherit
        }

        svg,
        video {
            display: block;
            vertical-align: middle
        }

        video {
            max-width: 100%;
            height: auto
        }

        .bg-white {
            --bg-opacity: 1;
            background-color: #fff;
            background-color: rgba(255, 255, 255, var(--bg-opacity))
        }

        .bg-gray-100 {
            --bg-opacity: 1;
            background-color: #f7fafc;
            background-color: rgba(247, 250, 252, var(--bg-opacity))
        }

        .border-gray-200 {
            --border-opacity: 1;
            border-color: #edf2f7;
            border-color: rgba(237, 242, 247, var(--border-opacity))
        }

        .border-t {
            border-top-width: 1px
        }

        .flex {
            display: flex
        }

        .grid {
            display: grid
        }

        .hidden {
            display: none
        }

        .items-center {
            align-items: center
        }

        .justify-center {
            justify-content: center
        }

        .font-semibold {
            font-weight: 600
        }

        .h-5 {
            height: 1.25rem
        }

        .h-8 {
            height: 2rem
        }

        .h-16 {
            height: 4rem
        }

        .text-sm {
            font-size: .875rem
        }

        .text-lg {
            font-size: 1.125rem
        }

        .leading-7 {
            line-height: 1.75rem
        }

        .mx-auto {
            margin-left: auto;
            margin-right: auto
        }

        .ml-1 {
            margin-left: .25rem
        }

        .mt-2 {
            margin-top: .5rem
        }

        .mr-2 {
            margin-right: .5rem
        }

        .ml-2 {
            margin-left: .5rem
        }

        .mt-4 {
            margin-top: 1rem
        }

        .ml-4 {
            margin-left: 1rem
        }

        .mt-8 {
            margin-top: 2rem
        }

        .ml-12 {
            margin-left: 3rem
        }

        .-mt-px {
            margin-top: -1px
        }

        .max-w-6xl {
            max-width: 72rem
        }

        .min-h-screen {
            min-height: 100vh
        }

        .overflow-hidden {
            overflow: hidden
        }

        .p-6 {
            padding: 1.5rem
        }

        .py-4 {
            padding-top: 1rem;
            padding-bottom: 1rem
        }

        .px-6 {
            padding-left: 1.5rem;
            padding-right: 1.5rem
        }

        .pt-8 {
            padding-top: 2rem
        }

        .fixed {
            position: fixed
        }

        .relative {
            position: relative
        }

        .top-0 {
            top: 0
        }

        .right-0 {
            right: 0
        }

        .shadow {
            box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06)
        }

        .text-center {
            text-align: center
        }

        .text-gray-200 {
            --text-opacity: 1;
            color: #edf2f7;
            color: rgba(237, 242, 247, var(--text-opacity))
        }

        .text-gray-300 {
            --text-opacity: 1;
            color: #e2e8f0;
            color: rgba(226, 232, 240, var(--text-opacity))
        }

        .text-gray-400 {
            --text-opacity: 1;
            color: #cbd5e0;
            color: rgba(203, 213, 224, var(--text-opacity))
        }

        .text-gray-500 {
            --text-opacity: 1;
            color: #a0aec0;
            color: rgba(160, 174, 192, var(--text-opacity))
        }

        .text-gray-600 {
            --text-opacity: 1;
            color: #718096;
            color: rgba(113, 128, 150, var(--text-opacity))
        }

        .text-gray-700 {
            --text-opacity: 1;
            color: #4a5568;
            color: rgba(74, 85, 104, var(--text-opacity))
        }

        .text-gray-900 {
            --text-opacity: 1;
            color: #1a202c;
            color: rgba(26, 32, 44, var(--text-opacity))
        }

        .underline {
            text-decoration: underline
        }

        .antialiased {
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale
        }

        .w-5 {
            width: 1.25rem
        }

        .w-8 {
            width: 2rem
        }

        .w-auto {
            width: auto
        }

        .grid-cols-1 {
            grid-template-columns: repeat(1, minmax(0, 1fr))
        }

        @media (min-width:640px) {
            .sm\:rounded-lg {
                border-radius: .5rem
            }

            .sm\:block {
                display: block
            }

            .sm\:items-center {
                align-items: center
            }

            .sm\:justify-start {
                justify-content: flex-start
            }

            .sm\:justify-between {
                justify-content: space-between
            }

            .sm\:h-20 {
                height: 5rem
            }

            .sm\:ml-0 {
                margin-left: 0
            }

            .sm\:px-6 {
                padding-left: 1.5rem;
                padding-right: 1.5rem
            }

            .sm\:pt-0 {
                padding-top: 0
            }

            .sm\:text-left {
                text-align: left
            }

            .sm\:text-right {
                text-align: right
            }
        }

        @media (min-width:768px) {
            .md\:border-t-0 {
                border-top-width: 0
            }

            .md\:border-l {
                border-left-width: 1px
            }

            .md\:grid-cols-2 {
                grid-template-columns: repeat(2, minmax(0, 1fr))
            }
        }

        @media (min-width:1024px) {
            .lg\:px-8 {
                padding-left: 2rem;
                padding-right: 2rem
            }
        }

        @media (prefers-color-scheme:dark) {
            .dark\:bg-gray-800 {
                --bg-opacity: 1;
                background-color: #2d3748;
                background-color: rgba(45, 55, 72, var(--bg-opacity))
            }

            .dark\:bg-gray-900 {
                --bg-opacity: 1;
                background-color: #1a202c;
                background-color: rgba(26, 32, 44, var(--bg-opacity))
            }

            .dark\:border-gray-700 {
                --border-opacity: 1;
                border-color: #4a5568;
                border-color: rgba(74, 85, 104, var(--border-opacity))
            }

            .dark\:text-white {
                --text-opacity: 1;
                color: #fff;
                color: rgba(255, 255, 255, var(--text-opacity))
            }

            .dark\:text-gray-400 {
                --text-opacity: 1;
                color: #cbd5e0;
                color: rgba(203, 213, 224, var(--text-opacity))
            }

            .dark\:text-gray-500 {
                --tw-text-opacity: 1;
                color: #6b7280;
                color: rgba(107, 114, 128, var(--tw-text-opacity))
            }
        }
    </style>

    <!-- Icon Tab Title Web-->
    <link href="{{ asset('storage/image-icon/logo.png') }}" rel="shortcut icon">

    <!-- Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>


    <style>
        body {
            font-family: 'Nunito', sans-serif;
        }
    </style>
</head>


<body class="antialiased" style="background-image: url('storage/image-background/background1.jpg')">
    <nav class="container-fluid navbar navbar-expand-lg navbar-light bg-light">
        <!-- <a class="navbar-brand" href="#">Sistem Informasi Sekolah</a> -->
        <img class="navbar-brand" src="{{ asset('image/image-icon/logo2.png') }}" style="width: 140px;"
            alt="">
        </div>
        <div class="collapse navbar-collapse col-md-2 justify-content-end" id="navbarScroll">
            <ul class="navbar-nav" style="--bs-scroll-height: 100px;">
                <ul class="nav navbar-nav">
                    {{-- <li class="nav-item mx-2">
                        <a class="nav-link " href="#">Beranda</a>
                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="#">Profil</a>
                    </li>
                    <li class="nav-item dropdown mx-2">
                        <!-- <a class="nav-link" href="#"></a> -->

                        <a class="nav-link dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Program Keahlian
                        </a>

                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <li><a class="dropdown-item" href="#">Teknik Komputer dan Jaringan</a></li>
                            <li><a class="dropdown-item" href="#">Administrasi Perkantoran</a></li>
                            <li><a class="dropdown-item" href="#">Rekayasa Perangkat Lunak</a></li>
                        </ul>

                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="#">Galeri</a>
                    </li> --}}
                    <li class="nav-item mx-3">
                        @if (Route::has('login'))
                            @auth
                                <a href="{{ url('/home') }}"
                                    class="text-sm text-gray-700 dark:text-gray-500 underline">Home</a>
                            @else
                                <div class="btn-group">
                                    <a class="nav-link btn " style="color: #0a2351;border: 1px solid #0a2351;" ;
                                        aria-current="page" href="{{ route('login') }}">Login</a>
                                    @if (Route::has('register'))
                                        <a class="nav-link btn text-white" style="background:#0a2351;"
                                            href="{{ route('register') }}">Register</a>
                                    @endif
                                </div>
                            @endauth
                        @endif
                    </li>
                </ul>
            </ul>
        </div>
    </nav>
    <!-- <div class="container mt-5 mb-5 col-md-12 bg-success">
                        </div> -->
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="{{ asset('image/image-background/siswa.jpg') }}" class="d-block w-100 h-50" alt="...">
            </div>
            <div class="carousel-item">
                <img src="{{ asset('image/image-background/siswa.jpg') }}" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="{{ asset('image/image-background/siswa.jpg') }}" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    {{-- <div class="container mt-3">
        <div class="row">
            <div class="col-md-6">
                <h3><b>Prakata Kepala Sekolah</b></h3>
                <p>Assalamu'alaikum wr.wb.</p>
                <p class="left">Puji syukur kepada Allah SWT, Tuhan Yang Maha Esa yang telah memberikan rahmat
                    dan anugerahNya sehingga website SiSekolah ini dapat terbit. Salah satu tujuan dari website ini
                    adalah untuk menjawab akan setiap kebutuhan informasi dengan memanfaatkan sarana teknologi informasi
                    yang ada. Kami sadar sepenuhnya dalam rangka memajukan pendidikan di era berkembangnya Teknologi
                    Informasi yang begitu pesat, sangat diperlukan berbagai sarana prasarana yang kondusif, kebutuhan
                    berbagai informasi siswa, guru, orangtua maupun masyarakat. Semoga dengan adanya website ini dapat
                    membantu dan bermanfaat, terutama informasi yang berhubungan dengan pendidikan, ilmu pengetahuan dan
                    informasi. Kami mengharapkan masukan dari berbagai pihak untuk website ini agar kami terus belajar
                    dan meng-update diri, sehingga tampilan, isi dan mutu website akan terus berkembang dan lebih baik
                    nantinya.</p>
                <p>Terima kasih
                    Wassalamu'alaikum wr.wb.
                </p>
            </div>
            <div class="col-md-3">
                <h3><b>Program Sekolah</b></h3>
                <p class="left">
                    Adanya berbagai kegiatan pelatihan dari luar dan praktek yang sering dilakukan di sekolah ini
                    memudahkan siswa berhubungan dengan dunia usaha dan dunia industri juga dalam menghadapi kemajuan
                    teknologi yang saat ini berkembang dengan pesat dan siap terjun dalam dunia kerja.
                </p>
            </div>
            <div class="col-md-3">
                <h3><b>Program Keahlian</b></h3>
                <p class="left">
                    SMK ini memiliki 8 program keahlian ,berikut daftar lengkapnya ada Administrasi Perkantoran,
                    Perbankan, Akuntansi, Pemasaran, Teknik Komputer Jaringan, Multimedia, Pemasaran, Usaha Perjalanan
                    Wisata.
                </p>
            </div>
        </div>
    </div>
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-6">
                <h3><b>Profil Sekolah</b></h3>
                <p class="left">
                    Berdirinya SMEA Negeri Kediri adalah prakarsa dari Wali Kota Kediri yaitu Bapak Anwar Zainudin pada
                    bulan Agustus 1965 dengan menempati gedung SMP Negeri 5 Kediri di Kecamatan Pesantren. Namun seiring
                    dengan perkembangannya pada bulan Agustus 1966 pindah ke SMP Negeri 3 Kediri di Jalan Joyoboyo
                    Kediri. Pada tahun 1968 SKOPMA (Sekolah Koperasi Tingkat menengah Atas) dengan pimpinan bapak Raboen
                    Koesharto, BSc. berintegrasi ke SMEA Negeri Kediri dan menempati gedung baru di Jl. Monginsidi 36.
                    Selanjutnya dengan semakin banyaknya minat dari Masyarakat Kediri dan sekitarnya terhadap SMEA
                    Negeri Kediri maka pada tahun 1986 menempati gedung baru di jalan Veteran no. 5 yang dibangun atas
                    bantuan dana dari ADB (Asian Development Bank) hingga sekarang, namun untuk gedung yang berada di
                    jalan Monginsidi masih tetap dipakai untuk kegiatan pembelajaran kelas X (sepuluh) kompetensi
                    keahlian Bisnis Manajemen dan Keuangan
                </p>
            </div>
            <div class="col-md-6">
                <h3><b>Info Kegiatan</b></h3>
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                gambar
                            </div>
                            <div class="col-md-8">
                                <h5>Apel Pagi dalam rangka memperingatu HUT Pramuka asek</h5>
                                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Omnis, non! Laborum,</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                gambar
                            </div>
                            <div class="col-md-8">
                                <h5>Upacara hari Senin</h5>
                                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Omnis, non! Laborum,</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                gambar
                            </div>
                            <div class="col-md-8">
                                <h5>Siswa Peraih Medali Emas</h5>
                                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Omnis, non! Laborum,</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> --}}
    <div class="py-2 bg-white text-dark" style="height:40px;">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; Sistem Informasi Sekolah - Kelompok 2</span>
        </div>
    </div>
</body>

</html>
