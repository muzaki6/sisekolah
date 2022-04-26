@extends('layouts.admin')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">Data Siswa</div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-4 col-md-3 col-lg-2">
                                <a href="{{ route('siswa.create') }}" class="btn btn-dark btn-sm btn-block mb-2">Tambah
                                    Siswa</a>
                            </div>
                        </div>
                        @if (session('status'))
                            <div class="alert alert-success">
                                {{ session('status') }}
                            </div>
                        @endif
                        <table class="table caption-top">
                            <thead class="table-dark">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">No. Induk</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Jenis Kelamin</th>
                                    <th scope="col">Agama</th>
                                    <th scope="col">Alamat</th>
                                    <th scope="col">Tahun Masuk</th>
                                    <th scope="col">Created At</th>
                                    <th scope="col">Updated At</th>
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
                                        <td>{{ $siswa->created_at }}</td>
                                        <td>{{ $siswa->updated_at }}</td>
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
