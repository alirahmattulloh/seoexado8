@extends('layouts.adminpanel')

@section('menu')
<div class="page-header">
              <h3 class="page-title"> DATA TIM EXADO </h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Administrator</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Data Tim Exado</li>
                </ol>
              </nav>
            </div>
            <div class="row">
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Add New User</h4>
                    @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div><br />
                    @endif
                    <form method="post" action="{{ route('datatim.store') }}">
                    <div class="form-group">
                        @csrf
                        <label for="name">Nama</label>
                        <input type="text" class="form-control" name="nama"/>
                    </div>
                    <div class="form-group">
                        <label for="email">Username</label>
                        <input type="text" class="form-control" name="username"/>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="text" class="form-control" name="password"/>
                    </div>
                    <div class="form-group">
                        <label for="role_id">Role</label>
                        <select class="form-control" id="role_id" name="role_id">
                          <option value=""> -- Select Role --</option>
                          @foreach ($roles as $role)
                            <option value="{{ $role->id }}">{{ $role->role_name }}</option>
                          @endforeach
                        </select>
                    </div>
                    <button type="submit" class="btn btn-block btn-danger">Create User</button>
                </form>
</div>
</div>
</div>
</div>
@endsection