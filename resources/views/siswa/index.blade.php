@extends('layouts.app')

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
                                <tr>
                                    <th scope="row">1</th>
                                    <td>20220001</td>
                                    <td>Osaman Musa</td>
                                    <td>Laki-Laki</td>
                                    <td>Islam</td>
                                    <td>Jakarta</td>
                                    <td>2022</td>
                                    <td>2022-06-02</td>
                                    <td>2022-06-02</td>
                                    <td class="text-left">
                                        <a href="#" class="btn btn-warning btn-sm">Edit</a>
                                        <a href="#" class="btn btn-danger btn-sm">Edit</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
