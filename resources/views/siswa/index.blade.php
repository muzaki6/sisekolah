@extends('layouts.admin')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- Data Siswa -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark">Data Siswa</h6>
            </div>
            <div class="card-body">
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Induk</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Jenis Kelamin</th>
                                <th scope="col">Agama</th>
                                <th scope="col">Alamat</th>
                                <th scope="col">Tahun</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($siswas as $key => $siswa)
                                <tr>
                                    <th scope="row">{{ $siswas->firstItem() + $key }}</th>
                                    <td>{{ $siswa->no_induk }}</td>
                                    <td>{{ $siswa->nama }}</td>
                                    <td>{{ $siswa->jenis_kelamin }}</td>
                                    <td>{{ $siswa->agama }}</td>
                                    <td>{{ $siswa->alamat }}</td>
                                    <td>{{ $siswa->tahun_masuk }}</td>
                                    <td class="text-center">
                                        <a href="#" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
                                        <a href="#" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">Data Siswa</div>
                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success">
                                {{ session('status') }}
                            </div>
                        @endif
                        <table class="table table table-bordered caption-top">
                            <thead class="table-dark text-center">
                                <tr class="">
                                    <th scope="col">No</th>
                                    <th scope="col">Induk</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Jenis Kelamin</th>
                                    <th scope="col">Agama</th>
                                    <th scope="col">Alamat</th>
                                    <th scope="col">Tahun Masuk</th>
                                    <th scope="col">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($siswas as $key => $siswa)
                                    <tr>
                                        <th scope="row">{{ $siswas->firstItem() + $key }}</th>
                                        <td>{{ $siswa->no_induk }}</td>
                                        <td>{{ $siswa->nama }}</td>
                                        <td>{{ $siswa->jenis_kelamin }}</td>
                                        <td>{{ $siswa->agama }}</td>
                                        <td>{{ $siswa->alamat }}</td>
                                        <td>{{ $siswa->tahun_masuk }}</td>
                                        <td class="text-center">
                                            <a href="#" class="btn btn-warning btn-sm">Edit</a>
                                            <a href="#" class="btn btn-danger btn-sm">Hapus</a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="d-flex justify-content-end">
                            {{ $siswas->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
