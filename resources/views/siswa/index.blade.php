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
                            @php $no = 1; @endphp
                            @foreach ($siswas as $key => $siswa)
                                <tr>
                                    {{-- <td scope="row">{{ $siswas + $key }}</td> --}}
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $siswa->no_induk }}</td>
                                    <td>{{ $siswa->nama }}</td>
                                    <td>{{ $siswa->jenis_kelamin }}</td>
                                    <td>{{ $siswa->agama }}</td>
                                    <td>{{ $siswa->alamat }}</td>
                                    <td>{{ $siswa->tahun_masuk }}</td>
                                    <td class="text-center">
                                        <form action="{{ route('siswa.destroy', $siswa->id) }}" method="POST">
                                            {{-- <a href="#" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a> --}}
                                            @can('siswa-edit')
                                                <a href="{{ route('siswa.edit', $siswa->id) }}"
                                                    class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
                                            @endcan
                                            @csrf
                                            @can('siswa-delete')
                                                @method('DELETE')

                                                <button type="submit" class="btn btn-danger btn-sm"
                                                    onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')"><i
                                                        class="fa fa-trash"></i></button>
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
