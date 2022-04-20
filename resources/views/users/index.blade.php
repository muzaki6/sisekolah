@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-6 margin-tb">
            <div class="pull-left">
                <h2><i class="fas fa-user"></i> Users Management</h2>
            </div>
        </div>
        <div class="col-lg-6 margin-tb text-end">
            <div class="pull-left">
                <a class="btn btn-success text-end" href="{{ route('users.create') }}">
                    <i class="fas fa-user-plus"></i>
                    Create New User</a>
            </div>
        </div>
    </div>
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif

    <table class="table table-bordered mt-2">
        <tr>
            <th>No</th>
            <th>Name</th>
            <th>Email</th>
            <th>Roles</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($data as $key => $user)
            <tr>
                <td>{{ ++$i }}</td>
                <td>{{ $user->name }}</td>
                <td>{{ $user->email }}</td>
                <td>
                    @if (!empty($user->getRoleNames()))
                        @foreach ($user->getRoleNames() as $v)
                            <span class="badge bg-success"><b>{{ $v }}</b></span>
                        @endforeach
                    @endif
                </td>
                <td>

                    <a class="btn btn-info" href="{{ route('users.show', $user->id) }}">Show</a>
                    @can('user-edit')
                        <a class="btn btn-warning" href="{{ route('users.edit', $user->id) }}">Edit</a>
                    @endcan
                    @can('user-delete')
                        {!! Form::open(['method' => 'DELETE', 'route' => ['users.destroy', $user->id], 'style' => 'display:inline']) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    @endcan
                </td>
            </tr>
        @endforeach
    </table>
    {!! $data->render() !!}
@endsection
