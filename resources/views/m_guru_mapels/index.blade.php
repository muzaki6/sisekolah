@extends('layouts.admin')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- Data Pegawai -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark">Data Pegawai</h6>
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
                                <th scope="col">Nama Guru</th>
                                <th scope="col">Mata Pelajaran</th>
                                <th scope="col">Kelas</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php $no = 1; @endphp
                            @foreach ($m_guru_mapels as $key => $mgm)
                                <tr>
                                    {{-- <td scope="row">{{ $siswas + $key }}</td> --}}
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $mgm->nama }}</td>
                                    <td>{{ $mgm->mapel }}</td>
                                    <td>{{ $mgm->kelas }} {{ $mgm->jurusan }} {{ $mgm->ruang }}</td>
                                    <td class="text-center">

                                        <form action="{{ route('m_guru_mapels.destroy', [$mgm->id_guru_mapel]) }}"
                                            method="POST">
                                            {{-- @can('pegawai-edit') --}}
                                            <a href="{{ route('m_guru_mapels.edit', [$mgm->id_guru_mapel]) }}"
                                                class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
                                            {{-- @endcan --}}
                                            @csrf
                                            {{-- @can('pegawai-delete') --}}
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger btn-sm"
                                                onclick="return confirm('yakin?');"><i class="fa fa-trash"></i></button>
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
