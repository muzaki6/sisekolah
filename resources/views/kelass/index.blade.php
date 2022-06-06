@extends('layouts.admin')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- Data Pegawai -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <div class="row">
                    <div class="col-md-6">
                        <h6 class="m-0 font-weight-bold text-dark">Data Mata Pelajaran</h6>
                    </div>
                    <div class="col-md-6 d-flex justify-content-end">
                        @can('kelas-list')
                            <a href="{{ route('kelass.create') }}" class="btn btn-success btn-sm"><i class="fa fa-plus"></i>
                                Tambah Data</a>
                        @endcan
                    </div>
                </div>

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
                                <th scope="col">ID Kelas</th>
                                <th scope="col">Kelas</th>
                                <th scope="col">Jurusan</th>
                                <th scope="col">Ruang</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php $no = 1; @endphp
                            @foreach ($kelass as $key => $kelas)
                                <tr>
                                    {{-- <td scope="row">{{ $siswas + $key }}</td> --}}
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $kelas->id_kelas }}</td>
                                    <td>{{ $kelas->kelas }}</td>
                                    <td>{{ $kelas->jurusan }}</td>
                                    <td>{{ $kelas->ruang }}</td>
                                    <td class="text-center">

                                        <form action="{{ route('kelass.destroy', ['kelass' => $kelas->id_kelas]) }}"
                                            method="POST">
                                            @can('kelas-edit')
                                                <a href="{{ route('kelass.edit', ['kelass' => $kelas->id_kelas]) }}"
                                                    class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
                                            @endcan
                                            @csrf
                                            @can('kelas-delete')
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger btn-sm"
                                                    onclick="return confirm('yakin?');"><i class="fa fa-trash"></i></button>
                                            @endcan
                                        </form>
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
@endsection
