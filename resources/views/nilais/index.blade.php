@extends('layouts.admin')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- Data Pegawai -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <div class="row">
                    <div class="col-md-6">
                        <h6 class="m-0 font-weight-bold text-dark">Data Nilai</h6>
                    </div>
                    <div class="col-md-6 d-flex justify-content-end">
                        <a href="{{ route('nilais.create') }}" class="btn btn-success btn-sm"><i class="fa fa-plus"></i>
                            Tambah Data</a>
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
                                <th scope="col">ID Nilai</th>
                                <th scope="col">Nilai</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php $no = 1; @endphp
                            @foreach ($nilais as $key => $nilai)
                                <tr>
                                    {{-- <td scope="row">{{ $siswas + $key }}</td> --}}
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $nilai->id_nilai }}</td>
                                    <td>{{ $nilai->nilai }}</td>
                                    <td class="text-center">

                                        <form action="{{ route('nilais.destroy', ['nilai' => $nilai->id_nilai]) }}"
                                            method="POST">
                                            <a href="{{ route('nilais.edit', ['nilai' => $nilai->id_nilai]) }}"
                                                class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger btn-sm"
                                                onclick="return confirm('yakin?');"><i class="fa fa-trash"></i></button>
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
