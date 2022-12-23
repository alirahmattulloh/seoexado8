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
        @if(session('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
          {{ session('success') }}
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif
        @if ($errors->any())
        <div class="alert alert-danger">
          <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
          </ul>
        </div>
        @endif
        <div class="row">
          <div class="col-lg-10 col-md-8 col-sm-6 grid-margin stretch-card">
            <h4 class="card-title">Daftar tim Exado</h4>
          </div>
          <div class="col-lg-2 col-md-4 col-sm-6 grid-margin stretch-card">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" onClick="add()" href="javascript:void(0)">
              Add user
            </button>

            <!-- Modal -->
            <div class="modal fade" id="add_user" tabindex="-1" role="dialog" aria-labelledby="modal_user" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="modal_user"></h5>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="javascript:void(0)" id="userForm" name="userForm" method="post" enctype="multipart/form-data">
                      <input type="hidden" name="id" id="id">
                      <div class="form-group">
                        @csrf
                        <label for="nama">Nama</label>
                        <input type="text" class="form-control" id="nama" name="nama" required />
                      </div>
                      <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="username" name="username" required />
                      </div>
                      <div class="form-group">
                        <label for="password">Password</label>
                        <input type="text" class="form-control" id="password" name="password" required />
                      </div>
                      <div class="form-group">
                        <label for="role_id">Role</label>
                        <select class="form-control" id="role_id" name="role_id" required="">
                          <option value=""> -- Select Role --</option>
                          @foreach ($roles as $role)
                          <option name="role_id" value="{{ $role->id }}">{{ $role->roles_name }}</option>
                          @endforeach
                        </select>
                      </div>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn btn-block btn-primary" id="btn-save"></button>
                  </div>
                  </form>
                </div>
              </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="edit_user" tabindex="-1" role="dialog" aria-labelledby="modal_edit" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="modal_edit"></h5>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="javascript:void(0)" id="editForm" name="editForm" method="post" enctype="multipart/form-data">
                      <input type="hidden" name="edit_id" id="edit_id">
                      <div class="form-group">
                        @csrf
                        <label for="edit_users_kode">ID Pegawai</label>
                        <input type="text" class="form-control" id="edit_users_kode" name="edit_users_kode" readonly />
                      </div>
                      <div class="form-group">
                        <label for="edit_nama">Nama</label>
                        <input type="text" class="form-control" id="edit_nama" name="edit_nama" required />
                      </div>
                      <div class="form-group">
                        <label for="edit_username">Username</label>
                        <input type="text" class="form-control" id="edit_username" name="edit_username" required />
                      </div>
                      <div class="form-group">
                        <label for="edit_password">Password</label>
                        <input type="text" class="form-control" id="edit_password" name="edit_password" required />
                      </div>
                      <div class="form-group">
                        <label for="edit_role_id">Role</label>
                        <select class="form-control" id="edit_role_id" name="edit_role_id" required="">
                          <option value=""> -- Select Role --</option>
                          @foreach ($roles as $role)
                          <option name="role_id" value="{{ $role->id }}">{{ $role->roles_name }}</option>
                          @endforeach
                        </select>
                      </div>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn btn-block btn-primary" id="btn-edit"></button>
                  </div>
                  </form>
                </div>
              </div>
            </div>

          </div>
        </div>
        <div class="table-responsive text-nowrap">
          <table id="users-table" class="table table-striped table-hover" cellspacing="0" width="100%">
            <thead>
              @php $no = 1; @endphp
              <tr>
                <th> ID PEGAWAI </th>
                <th> NAMA </th>
                <!--<th> Progress </th>-->
                <th> USERNAME </th>
                <th> ROLE </th>
                <th> AKSI </th>
              </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- content-wrapper ends -->
<!-- partial:partials/_footer.html -->
<footer class="footer">
  <div class="container-fluid d-flex justify-content-between">
    <span class="text-muted d-block text-center text-sm-start d-sm-inline-block">Copyright © Exado</span>
    <span class="float-none float-sm-end mt-1 mt-sm-0 text-end"> Punya saran ? <a href="#" target="_blank">Klik disini</a></span>
  </div>
</footer>
@endsection
@push('scripts')
<script type="text/javascript">
  $(document).ready(function() {
    $.ajaxSetup({
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
    });
    $('#users-table').DataTable({
      processing: true,
      serverSide: true,
      ajax: "{!! route('datatim.index') !!}",
      columns: [{ // mengambil & menampilkan kolom sesuai tabel database
          data: 'users_kode',
          name: 'users_kode'
        },
        {
          data: 'nama',
          name: 'nama'
        },
        {
          data: 'username',
          name: 'username'
        },
        {
          data: 'roles_name',
          name: 'roles_name'
        },
        {
          data: 'action',
          name: 'action',
          orderable: false
        },
      ]
    });
  });

  function add() {
    $('#userForm').trigger("reset");
    $('#modal_user').html("Add User");
    $("#username").attr("readonly", false);
    $("#btn-save").html('Submit');
    $('#add_user').modal('show');
    $('#id').val('');
  }

  function editFunc(id) {
    $.ajax({
      type: "POST",
      url: "{!! route('datatim.edit') !!}",
      data: {
        id: id
      },
      dataType: 'json',
      success: function(res) {
        $('#modal_edit').html("Edit User");
        $("#btn-edit").html('Save changes');
        $('#edit_user').modal('show');
        $('#edit_id').val(res.id);
        $('#edit_users_kode').val(res.users_kode);
        $("#edit_users_kode").attr("readonly", true);
        $('#edit_nama').val(res.nama);
        $('#edit_username').val(res.username);
        $("#edit_username").attr("readonly", true);
        $('#edit_password').val(res.password);
        $('#edit_role_id').val(res.role_id);
      }
    });
  }

  function deleteFunc(id) {
    if (confirm("Delete record?") == true) {
      var id = id;
      // ajax
      $.ajax({
        type: "POST",
        url: "{!! route('datatim.destroy') !!}",
        data: {
          id: id
        },
        dataType: 'json',
        success: function(res) {
          var oTable = $('#users-table').dataTable();
          oTable.fnDraw(false);
        }
      });
    }
  }

  $('#userForm').submit(function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    $.ajax({
      type: 'POST',
      url: "{!! route('datatim.store') !!}",
      data: formData,
      cache: false,
      contentType: false,
      processData: false,
      success: (data) => {
        $("#add_user").modal('hide');
        var oTable = $('#users-table').dataTable();
        oTable.fnDraw(false);
        $("#btn-save").html('Submit');
        $("#btn-save").attr("disabled", false);
      },
      error: function(data) {
        console.log(data);
      }
    });
  });

  $('#editForm').submit(function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    $.ajax({
      type: 'POST',
      url: "{!! route('datatim.storeEdit') !!}",
      data: formData,
      cache: false,
      contentType: false,
      processData: false,
      success: (data) => {
        $("#edit_user").modal('hide');
        var oTable = $('#users-table').dataTable();
        oTable.fnDraw(false);
        $("#btn-edit").html('Submit');
        $("#btn-edit").attr("disabled", false);
      },
      error: function(data) {
        console.log(data);
      }
    });
  });
</script>
@endpush