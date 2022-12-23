@extends('layouts.adminpanel')

@section('menu')
<div class="page-header">
  <h3 class="page-title"> DAFTAR ROLE TIM EXADO </h3>
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
            <h4 class="card-title">Daftar role tim Exado</h4>
          </div>
          <div class="col-lg-2 col-md-4 col-sm-6 grid-margin stretch-card">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" onClick="add()" href="javascript:void(0)">
              Add Role
            </button>

            <!-- Modal -->
            <div class="modal fade" id="add_role" tabindex="-1" role="dialog" aria-labelledby="modal_role" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="modal_role"></h5>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="javascript:void(0)" id="roleForm" name="userForm" method="post" enctype="multipart/form-data">
                      <input type="hidden" name="id" id="id">
                      <div class="form-group">
                        @csrf
                        <label for="kode">Kode</label>
                        <input type="text" class="form-control" id="kode" name="kode" required />
                      </div>
                      <div class="form-group">
                        <label for="nama">Nama</label>
                        <input type="text" class="form-control" id="nama" name="nama" required />
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
            <div class="modal fade" id="edit_role" tabindex="-1" role="dialog" aria-labelledby="modal_edit" aria-hidden="true">
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
                        <label for="edit_kode">Kode</label>
                        <input type="text" class="form-control" id="edit_kode" name="edit_kode" required />
                      </div>
                      <div class="form-group">
                        <label for="edit_nama">Nama</label>
                        <input type="text" class="form-control" id="edit_nama" name="edit_nama" required />
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
          <table id="roles-table" class="table table-striped table-hover" cellspacing="0" width="100%">
            <thead>
              @php $no = 1; @endphp
              <tr>
                <th> ID </th>
                <th> KODE ROLE </th>
                <!--<th> Progress </th>-->
                <th> NAMA ROLE </th>
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
    $('#roles-table').DataTable({
      processing: true,
      serverSide: true,
      ajax: "{!! route('datarole.index') !!}",
      columns: [{ // mengambil & menampilkan kolom sesuai tabel database
          data: 'id',
          name: 'id'
        },
        {
          data: 'roles_kode',
          name: 'roles_kode'
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
    $('#roleForm').trigger("reset");
    $('#modal_role').html("Add Role");
    $("#btn-save").html('Submit');
    $('#add_role').modal('show');
    $('#id').val('');
  }

  function editFunc(id) {
    $.ajax({
      type: "POST",
      url: "{!! route('datarole.edit') !!}",
      data: {
        id: id
      },
      dataType: 'json',
      success: function(res) {
        $('#modal_edit').html("Edit Role");
        $("#btn-edit").html('Save changes');
        $('#edit_role').modal('show');
        $('#edit_id').val(res.id);
        $('#edit_kode').val(res.roles_kode);
        $('#edit_kode').attr("readonly", true);
        $('#edit_nama').val(res.roles_name);
      }
    });
  }

  function deleteFunc(id) {
    if (confirm("Delete record?") == true) {
      var id = id;
      // ajax
      $.ajax({
        type: "POST",
        url: "{!! route('datarole.destroy') !!}",
        data: {
          id: id
        },
        dataType: 'json',
        success: function(res) {
          var oTable = $('#roles-table').dataTable();
          oTable.fnDraw(false);
        }
      });
    }
  }

  $('#roleForm').submit(function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    $.ajax({
      type: 'POST',
      url: "{!! route('datarole.store') !!}",
      data: formData,
      cache: false,
      contentType: false,
      processData: false,
      success: (data) => {
        $("#add_role").modal('hide');
        var oTable = $('#roles-table').dataTable();
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
      url: "{!! route('datarole.storeEdit') !!}",
      data: formData,
      cache: false,
      contentType: false,
      processData: false,
      success: (data) => {
        $("#edit_role").modal('hide');
        var oTable = $('#roles-table').dataTable();
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