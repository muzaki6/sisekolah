@extends('layouts.admin')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- Data Pegawai -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark">Data Kelas</h6>
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
                                <th scope="col">No Induk</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Kelas</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php $no = 1; @endphp
                            @foreach ($m_kelas_siswas as $key => $mks)
                                <tr>
                                    {{-- <td scope="row">{{ $siswas + $key }}</td> --}}
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $mks->no_induk }}</td>
                                    <td>{{ $mks->nama }}</td>
                                    <td>{{ $mks->kelas }} {{ $mks->jurusan }} {{ $mks->ruang }}</td>
                                    <td class="text-center">
                                        <form action="{{ route('m_kelas_siswas.destroy', [$mks->id_kelas_siswa]) }}"
                                            method="POST">
                                            <a href="{{ route('m_kelas_siswas.edit', [$mks->id_kelas_siswa]) }}"
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
