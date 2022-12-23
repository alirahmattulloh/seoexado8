@extends('layouts.adminpanel')

@section('menu')
<!-- Modal FILTER EXPORT -->
<div class="modal fade" id="modal_filter" tabindex="-1" role="dialog" aria-labelledby="title_filter" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="title_filter"></h5>
        </button>
      </div>
      <div class="modal-body">
        <form action="{!! route('datacust.export') !!}" id="exportForm" name="exportForm" method="post" enctype="multipart/form-data">
          <div class="form-group">
            @csrf
            <label for="export_status">Filter berdasarkan <b>STATUS & BULAN</b> Transaksi</label>
            <select class="form-control" id="export_status" name="export_status" required>
              <option value=""> -- PILIH STATUS --</option>
              <option value="AKTIF">AKTIF</option>
              <option value="GARANSI">GARANSI</option>
              <option value="NONAKTIF">NONAKTIF</option>
            </select>
          </div>
          <div class="form-group">
            <div class="md-form md-outline input-with-post-icon datepicker">
              <input placeholder="Select date" type="month" id="export_tanggal" name="export_tanggal" class="form-control" required>
            </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-block btn-primary" id="btn-export"></button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- Modal update -->
<div class="modal fade" id="update_status" tabindex="-1" role="dialog" aria-labelledby="modal_update" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal_update"></h5>
        </button>
      </div>
      <div class="modal-body">
        <form action="javascript:void(0)" id="updateForm" name="updateForm" method="post" enctype="multipart/form-data">
          <input type="hidden" name="id" id="id">
          <div class="form-group">
            @csrf
            <label for="status">Status SEO</label>
            <input type="text" class="form-control" id="status" name="status" />
          </div>
          <div class="form-group">
            <label for="updatestatus">UPDATE STATUS</label>
            <select class="form-control" id="update_status" name="update_status" required>
              <option value=""> -- UPDATE STATUS SEO --</option>
              <option value="AKTIF">AKTIF</option>
              <option value="GARANSI">GARANSI</option>
              <option value="NONAKTIF">NONAKTIF</option>
            </select>
          </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-block btn-primary" id="btn-update"></button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- Modal edit -->
<div class="modal fade" id="edit_cust" tabindex="-1" role="dialog" aria-labelledby="modal_edit
  aria-hidden=" true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal_edit"></h5>
        </button>
      </div>
      <div class="modal-body">
        <form action="javascript:void(0)" id="editForm" name="editForm" method="post" enctype="multipart/form-data">
          <input type="hidden" name="edit_id" id="edit_id">
          <div class="row">
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="edit_status">STATUS</label>
                <select class="form-control" id="edit_status" name="edit_status" required>
                  <option value=""> -- PILIH STATUS --</option>
                  <option value="AKTIF">AKTIF</option>
                  <option value="GARANSI">GARANSI</option>
                  <option value="NONAKTIF">NONAKTIF</option>
                </select>
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="edit_timseo">TIM SEO</label>
                <input type="text" class="form-control" name="edit_timseo" id="edit_timseo" placeholder="" required readonly />
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="edit_timclosing">TIM CLOSING</label>
                <input type="text" class="form-control" name="edit_timclosing" id="edit_timclosing" placeholder="" required readonly />
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="edit_web">NAMA WEB</label>
                <input type="text" class="form-control" name="edit_web" id="edit_web" placeholder="Masukan alamat web" required />
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="edit_klien">NAMA KLIEN</label>
                <input type="text" class="form-control" name="edit_klien" id="edit_klien" placeholder="Masukan nama klien" required />
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="edit_notelp">NO. TELP</label>
                <input type="text" class="form-control" name="edit_notelp" id="edit_notelp" placeholder="628xxx" required />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="edit_dp">DOWN PAYMENT</label>
                <input type="text" class="form-control" name="edit_dp" id="edit_dp" placeholder="Masukan jumlah DP klien" required />
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="edit_harga">HARGA LAYANAN</label>
                <input type="text" class="form-control" name="edit_harga" id="edit_harga" placeholder="Masukan harga layanan" required />
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="edit_bayar">PEMBAYARAN</label>
                <input type="text" class="form-control" name="edit_bayar" id="edit_bayar" placeholder="Jumlah pembayaran yang sudah dilakukan" required />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <div class="form-group">
                <div class="md-form md-outline input-with-post-icon datepicker">
                  <label for="edit_tanggal">TRANSAKSI</label>
                  <input type="date" id="edit_tanggal" name="edit_tanggal" class="form-control" required>
                </div>
              </div>
            </div>
            <div class="col-6">
              <div class="form-group">
                <div class="md-form md-outline input-with-post-icon datepicker">
                  <label for="edit_tanggal_offseo">TANGGAL OFF SEO</label>
                  <input type="date" id="edit_tanggal_offseo" name="edit_tanggal_offseo" class="form-control">
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="keterangan">KETERANGAN</label>
                <input type="text" class="form-control" name="edit_keterangan" id="edit_keterangan" placeholder="Masukan nama klien" required />
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="bukti">BUKTI TRANSAKSI</label>
                <input type="text" class="form-control" name="edit_bukti" id="edit_bukti" readonly />
              </div>
            </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-block btn-primary" id="btn-edit"></button>
      </div>
      </form>
    </div>
  </div>
</div>

<div class="page-header">
  <h3 class="page-title"> DATA PELANGGAN </h3>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="#">Administrator</a></li>
      <li class="breadcrumb-item active" aria-current="page">Data Pelanggan</li>
    </ol>
  </nav>
</div>
<marquee behavior="" direction="">Setelah menonaktifkan SEO - Jangan lupa edit tanggal OFF SEO di tombol EDIT ya :)</marquee>
<div class="row">
  <div class="col-lg-12 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-9 col-md-6 col-sm-9">
            <div class="col-5">
              <div class="form-group">
                <label><strong>Filter berdasarkan BULAN : </strong></label>
                <!--<select id="filter_status" name="filter_status" class="form-control" style="width:150px">
                  <option value="">-SEMUA STATUS-</option>
                  <option value="AKTIF">AKTIF</option>
                  <option value="GARANSI">GARANSI</option>
                  <option value="NONAKTIF">NONAKTIF</option>
                </select>-->
                <div class="form-group">
                  <div class="md-form md-outline input-with-post-icon datepicker">
                    <input placeholder="Select date" type="month" id="filter_tanggal" name="filter_tanggal" class="form-control" required>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-2">
            <!-- Button trigger modal 
            <a href="javascript:void(0);">
              <button type="button" name="filter" id="filter" class="btn btn-info btn-md">
                Filter
              </button>
            </a>
            <a href="javascript:void(0);">
              <button type="button" name="reset" id="reset" class="btn btn-default btn-md">
                Reset
              </button>
            </a>-->
            <a href="{!! route('datacust.create') !!}">
              <button type="button" class="btn btn-primary btn-md">
                Tambah
              </button>
            </a>
            <a onClick="mfilter()" href="javascript:void(0);">
              <button type="button" class="btn btn-warning btn-md">
                Export
              </button>
            </a>
          </div>
        </div>
        <div class="table-responsive text-nowrap">
          <table id="datacust-table" class="table table-striped table-hover table-bordered" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th> ID </th>
                <th> UPDATE </th>
                <th> STATUS </th>
                <th> AKSI </th>
                <th> TIM SEO </th>
                <th> TIM CLOSING </th>
                <th> NAMA WEB </th>
                <th> NAMA KLIEN </th>
                <th> NO. TELP </th>
                <th> DP </th>
                <th> HARGA </th>
                <th> PEMBAYARAN </th>
                <th> TANGGAL TRANSAKSI </th>
                <th> TANGGAL OFF SEO </th>
                <th> KETERANGAN </th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <td> <b>TOTAL</b> </td>
                <td> <b>WEB SEO</b> </td>
                <td id="webseo"></td>
                <td> <b>WEB AKTIF</b> </td>
                <td id="webaktif"></td>
                <td> <b>WEB GARANSI</b> </td>
                <td id="webgaransi"></td>
                <td> <b>WEB NONAKTIF</b> </td>
                <td id="webnonaktif"></td>
                <td> <b>RASIO</b> </td>
                <td colspan="5"></td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<!--<div class="page-header">
  <nav aria-label="breadcrumb">
    <ul class="breadcrumb">
      <li class="breadcrumb-item active" aria-current="page">
        <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
      </li>
    </ul>
  </nav>
</div>
<div class="row">
  <div class="col-md-4 stretch-card grid-margin">
    <div class="card bg-gradient-danger card-img-holder text-white">
      <div class="card-body">
        <img src="{{ asset('assets/image/dashboard/circle.svg') }}" class="card-img-absolute" alt="circle-image" />
        <h4 class="font-weight-normal mb-3">Rasio perpanjangan admin seo <i class="mdi mdi-chart-line mdi-24px float-right"></i>
        </h4>
        <h2 class="mb-5">$ 15,0000</h2>
        <h6 class="card-text">Increased by 60%</h6>
      </div>
    </div>
  </div>
  <div class="col-md-4 stretch-card grid-margin">
    <div class="card bg-gradient-info card-img-holder text-white">
      <div class="card-body">
        <img src="{{ asset('assets/image/dashboard/circle.svg') }}" class="card-img-absolute" alt="circle-image" />
        <h4 class="font-weight-normal mb-3">ORDER SEO/BULAN <i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
        </h4>
        <h2 class="mb-5">45,6334</h2>
        <h6 class="card-text">Decreased by 10%</h6>
      </div>
    </div>
  </div>
  <div class="col-md-4 stretch-card grid-margin">
    <div class="card bg-gradient-success card-img-holder text-white">
      <div class="card-body">
        <img src="{{ asset('assets/image/dashboard/circle.svg') }}" class="card-img-absolute" alt="circle-image" />
        <h4 class="font-weight-normal mb-3">PENDAPATAN SEO/BULAN <i class="mdi mdi-diamond mdi-24px float-right"></i>
        </h4>
        <h2 class="mb-5">95,5741</h2>
        <h6 class="card-text">Increased by 5%</h6>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-7 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <div class="clearfix">
          <h4 class="card-title float-left">Visit And Sales Statistics</h4>
          <div id="visit-sale-chart-legend" class="rounded-legend legend-horizontal legend-top-right float-right"></div>
        </div>
        <canvas id="visit-sale-chart" class="mt-4"></canvas>
      </div>
    </div>
  </div>
  <div class="col-md-5 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Traffic Sources</h4>
        <canvas id="traffic-chart"></canvas>
        <div id="traffic-chart-legend" class="rounded-legend legend-vertical legend-bottom-left pt-4"></div>
      </div>
    </div>
  </div>
</div>
</div>-->
<!-- content-wrapper ends -->
<!-- partial:partials/_footer.html -->
<footer class="footer">
  <div class="container-fluid d-flex justify-content-between">
    <span class="text-muted d-block text-center text-sm-start d-sm-inline-block">Copyright © Exado</span>
    <span class="float-none float-sm-end mt-1 mt-sm-0 text-end"> Punya saran ? <a href="#" target="_blank">Klik
        disini</a></span>
  </div>
</footer>

@endsection
@push('scripts')
<script type="text/javascript">
  $(document).ready(function() {
    fill_datatable();

    function fill_datatable(filter_tanggal = '') {
      $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });
      var table = $('#datacust-table').DataTable({        
        "footerCallback": function(row, data, start, end, display) {
          var api = this.api(),
            data;

          // converting to interger to find total
          var intVal = function(i) {
            return typeof i === 'string' ?
              i.replace(/[\$,]/g, '') * 1 :
              typeof i === 'number' ?
              i : 0;
          };

          // computing column Total of the complete result
          var allseo = table.data().length;
          var aktifseo = table.column(2).data().filter(function(value, index) {
            return value === "AKTIF" ? true : false;
          }).length;
          var garansiseo = table.column(2).data().filter(function(value, index) {
            return value === "GARANSI" ? true : false;
          }).length;
          var nonaktifseo = table.column(2).data().filter(function(value, index) {
            return value === "NONAKTIF" ? true : false;
          }).length;

          function formatAsPercent(num) {
            return new Intl.NumberFormat('default', {
              style: 'percent',
              minimumFractionDigits: 2,
              maximumFractionDigits: 2,
            }).format(num / 100);
          }
          //computing column Total of the complete result 
          var rasio = (parseInt(aktifseo) / parseInt(allseo)) * parseInt(100);

          // Update footer by showing the total with the reference of the column index 
          $(api.column(2).footer()).html(allseo);
          $(api.column(4).footer()).html(aktifseo);
          $(api.column(6).footer()).html(garansiseo);
          $(api.column(8).footer()).html(nonaktifseo);
          $(api.column(10).footer()).html(formatAsPercent(rasio));
        },

        pageLength: '500',
        processing: true,
        serverSide: true,
        ajax: {
          url: "{{ route('datacust.index') }}",
          data: {
            filter_tanggal: filter_tanggal
          }
        },
        columns: [{ // mengambil & menampilkan kolom sesuai tabel database
            data: 'id',
            name: 'id'
          },
          {
            data: 'update',
            name: 'update',
            orderable: false
          },
          {
            data: 'status',
            name: 'status'
          },
          {
            data: 'action',
            name: 'action',
            orderable: false
          },
          {
            data: 'timseo',
            name: 'timseo'
          },
          {
            data: 'timclosing',
            name: 'timclosing'
          },
          {
            data: 'web',
            name: 'web'
          },
          {
            data: 'klien',
            name: 'klien'
          },
          {
            data: 'notelp',
            name: 'notelp'
          },
          {
            data: 'dp',  render: $.fn.dataTable.render.number( '.', ',', 0, 'Rp ' ),
            name: 'dp'
          },
          {
            data: 'harga',  render: $.fn.dataTable.render.number( '.', ',', 0, 'Rp ' ),
            name: 'harga'
          },
          {
            data: 'bayar',  render: $.fn.dataTable.render.number( '.', ',', 0, 'Rp ' ),
            name: 'bayar'
          },
          {
            data: 'tanggal',
            name: 'tanggal'
          },
          {
            data: 'tanggal_offseo',
            name: 'tanggal_offseo'
          },
          {
            data: 'keterangan',
            name: 'keterangan'
          },
        ]
      });
    }
    $('#filter_tanggal').change(function() {
      var filter_tanggal = $('#filter_tanggal').val();
      $('#datacust-table').DataTable().destroy();
      fill_datatable(filter_tanggal);
    });

  });

  function editFunc(id) {
    $.ajax({
      type: "POST",
      url: "{!! route('datacust.edit') !!}",
      data: {
        id: id
      },
      dataType: 'json',
      success: function(res) {
        $('#modal_edit').html("Edit data");
        $("#btn-edit").html('Save changes');
        $('#edit_cust').modal('show');
        $('#edit_id').val(res.id);
        $('#edit_status').val(res.status);
        $('#edit_timseo').val(res.timseo);
        $('#edit_timclosing').val(res.timclosing);
        $('#edit_web').val(res.web);
        $('#edit_klien').val(res.klien);
        $('#edit_notelp').val(res.notelp);
        $('#edit_dp').val(res.dp);
        $('#edit_harga').val(res.harga);
        $('#edit_bayar').val(res.bayar);
        $('#edit_tanggal').val(res.tanggal);
        $('#edit_keterangan').val(res.keterangan);
        $('#edit_bukti').val(res.bukti);

      }
    });
  }

  function updateFunc(id) {
    $.ajax({
      type: "POST",
      url: "{!! route('datacust.edit') !!}",
      data: {
        id: id
      },
      dataType: 'json',
      success: function(res) {
        $('#modal_update').html("Update status");
        $("#btn-update").html('Update status');
        $('#update_status').modal('show');
        $('#id').val(res.id);
        $('#status').val(res.status);
        $('#status').attr('readonly', true);
      }
    });
  }

  function deleteFunc(id) {
    if (confirm("Delete record?") == true) {
      var id = id;
      // ajax
      $.ajax({
        type: "POST",
        url: "{!! route('datacust.destroy') !!}",
        data: {
          id: id
        },
        dataType: 'json',
        success: function(res) {
          var oTable = $('#datacust-table').dataTable();
          oTable.fnDraw(false);
        }
      });
    }
  }

  $('#editForm').submit(function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    $.ajax({
      type: 'POST',
      url: "{!! route('datacust.storeEdit') !!}",
      data: formData,
      cache: false,
      contentType: false,
      processData: false,
      success: (data) => {
        $("#edit_cust").modal('hide');
        var oTable = $('#datacust-table').dataTable();
        oTable.fnDraw(false);
        $("#btn-edit").html('Submit');
        $("#btn-edit").attr("disabled", false);
      },
      error: function(data) {
        console.log(data);
      }
    });
  });

  $('#updateForm').submit(function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    $.ajax({
      type: 'POST',
      url: "{!! route('datacust.storeUpdate') !!}",
      data: formData,
      cache: false,
      contentType: false,
      processData: false,
      success: (data) => {
        $("#update_status").modal('hide');
        var oTable = $('#datacust-table').dataTable();
        oTable.fnDraw(false);
        $("#btn-update").html('Update status');
        $("#btn-update").attr("disabled", false);
      },
      error: function(data) {
        console.log(data);
      }
    });
  });

  function mfilter() {
    $('#exportForm').trigger("reset");
    $('#title_filter').html("Filter Export Excel");
    $("#btn-export").html('EXPORT NOW!');
    $('#modal_filter').modal('show');
  }
</script>
@endpush