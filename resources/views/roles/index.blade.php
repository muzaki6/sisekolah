@extends('layouts.admin')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        Data Roles
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-4 col-md-3 col-lg-2">
                                @can('user-create')
                                    <a href="{{ route('roles.create') }}" class="btn btn-dark btn-sm btn-block mb-2"><i
                                            class="fas fa-fw fa-plus"></i>Tambah
                                        Role</a>
                                @endcan
                            </div>
                        </div>
                        @if ($message = Session::get('success'))
                            <div class="alert alert-success">
                                <p>{{ $message }}</p>
                            </div>
                        @endif

                        <table class="table caption-top">
                            <thead class="table-dark">
                                <tr>
                                    <th>No</th>
                                    <th>Name</th>
                                    <th width="280px">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($roles as $key => $role)
                                    <tr>
                                        <td>{{ ++$i }}</td>
                                        <td>{{ $role->name }}</td>
                                        <td>
                                            <a class="btn btn-outline-info btn-sm"
                                                href="{{ route('roles.show', $role->id) }}">Show</a>
                                            @can('role-edit')
                                                <a class="btn btn-outline-warning btn-sm"
                                                    href="{{ route('roles.edit', $role->id) }}">Edit</a>
                                            @endcan
                                            @can('role-delete')
                                                {!! Form::open(['method' => 'DELETE', 'route' => ['roles.destroy', $role->id], 'style' => 'display:inline']) !!}
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
    {!! $roles->render() !!}
@endsection
