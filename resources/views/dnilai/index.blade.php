@extends('layouts.admin')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- Data Pegawai -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark">Data Nilai</h6>
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
                                <th scope="col">Nilai</th>
                                <th scope="col">Siswa</th>
                                <th scope="col">Jenis Nilai</th>
                                <th scope="col">Mata Pelajaran</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php $no = 1; @endphp
                            @foreach ($dnilai as $key => $dnil)
                                <tr>
                                    {{-- <td scope="row">{{ $siswas + $key }}</td> --}}
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $dnil->dnilai }}</td>
                                    <td>{{ $dnil->nama }}</td>
                                    <td>{{ $dnil->nilai }}</td>
                                    <td>{{ $dnil->mapel }}</td>
                                    <td class="text-center">
                                        <form action="{{ route('dnilai.destroy', $dnil->id) }}" method="POST">
                                            {{-- <a href="#" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a> --}}
                                            {{-- @can('dnil-edit') --}}
                                            <a href="{{ route('dnilai.edit', $dnil->id) }}"
                                                class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
                                            {{-- @endcan --}}
                                            @csrf
                                            {{-- @can('dnil-delete') --}}
                                            @method('DELETE')

                                            <button type="submit" class="btn btn-danger btn-sm"
                                                onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')"><i
                                                    class="fa fa-trash"></i></button>
                                            {{-- @endcan --}}
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
