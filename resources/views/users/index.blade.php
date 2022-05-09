@extends('layouts.admin')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">Data User</div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-4 col-md-3 col-lg-2">
                                @can('user-create')
                                    <a href="{{ route('users.create') }}" class="btn btn-dark btn-sm btn-block mb-2"><i
                                            class="fas fa-fw fa-folder"></i> Tambah
                                        User</a>
                                @endcan
                            </div>
                        </div>
                        @if ($message = Session::get('success'))
                            <div class="alert alert-success alert-block">
                                <p>{{ $message }}</p>
                            </div>
                        @endif
                        <table class="table caption-top">
                            <thead class="table-dark">
                                <tr>
                                    <th scope="col">No</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Roles</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $key => $user)
                                    <tr>
                                        <td>{{ ++$i }}</td>
                                        <td>{{ $user->name }}</td>
                                        <td>{{ $user->email }}</td>
                                        <td>
                                            @if (!empty($user->getRoleNames()))
                                                @foreach ($user->getRoleNames() as $v)
                                                    <span class="badge bg-success text-white">{{ $v }}</span>
                                                @endforeach
                                            @endif
                                        </td>
                                        <td>
                                            <a class="btn btn-outline-info btn-sm"
                                                href="{{ route('users.show', $user->id) }}">Show</a>
                                            @can('user-edit')
                                                <a class="btn btn-outline-warning btn-sm"
                                                    href="{{ route('users.edit', $user->id) }}">Edit</a>
                                            @endcan
                                            @can('user-delete')
                                                {!! Form::open(['method' => 'DELETE', 'route' => ['users.destroy', $user->id], 'style' => 'display:inline']) !!}
                                                {!! Form::submit('Delete', ['class' => 'btn btn-outline-danger btn-sm']) !!}
                                                {!! Form::close() !!}
                                            @endcan
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {!! $data->render() !!}
@endsection
