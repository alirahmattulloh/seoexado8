@extends('layouts.seopanel')

@section('menu')
<div class="page-header">
  <h3 class="page-title"> DATA PELANGGAN </h3>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="#">Administrator</a></li>
      <li class="breadcrumb-item active" aria-current="page">Data Pelanggan</li>
    </ol>
  </nav>
</div>
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
        <div class="table-responsive text-nowrap">
          <table id="datacust-table" class="table table-striped table-hover table-bordered" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th> ID </th>
                <th> STATUS </th>
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
        pageLength: '500',
        processing: true,
        serverSide: true,
        ajax: {
          url: "{{ route('timseo.datacust') }}",
          data: {
            filter_tanggal: filter_tanggal
          }
        },
        columns: [{ // mengambil & menampilkan kolom sesuai tabel database
            data: 'id',
            name: 'id'
          },
          {
            data: 'status',
            name: 'status'
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
            data: 'dp',
            render: $.fn.dataTable.render.number('.', ',', 0, 'Rp '),
            name: 'dp'
          },
          {
            data: 'harga',
            render: $.fn.dataTable.render.number('.', ',', 0, 'Rp '),
            name: 'harga'
          },
          {
            data: 'bayar',
            render: $.fn.dataTable.render.number('.', ',', 0, 'Rp '),
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
</script>
@endpush