<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\Datacust;
use App\Models\Role;
use App\Models\User;
use DataTables;
use Validator;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\DatacustExport;
use App\Imports\DatacustImport;
use Illuminate\Support\Facades\DB;

class DatacustController extends Controller
{
    public function index(Request $request)
    {
        if (request()->ajax()) {
            if (!empty($request->filter_tanggal)) {
                $datacust = DB::table('datacusts')
                    ->select('datacusts.*')
                    ->where('tanggal', 'like', "%" . $request->filter_tanggal . "%")
                    ->get();
            } else {
                $datacust = DB::table('datacusts')
                    ->select('datacusts.*')
                    ->get();
            }
            return datatables()->of($datacust)
                ->addColumn('action', 'datacust.datacust-action')
                ->addColumn('update', 'datacust.datacust-update')
                ->rawColumns(['action', 'update'])
                ->addIndexColumn()
                ->make(true);
        }

        $datacust = Datacust::all();

        return view('datacust.index', ['datacust' => $datacust]);
    }

    public function timseo(Request $request)
    {
        if (request()->ajax()) {
            if (!empty($request->filter_tanggal)) {
                $datacust = DB::table('datacusts')
                    ->select('datacusts.*')
                    ->where('status', '=', "AKTIF")
                    ->where('tanggal', 'like', "%" . $request->filter_tanggal . "%")
                    ->get();
            } else {
                $datacust = DB::table('datacusts')
                    ->select('datacusts.*')
                    ->where('status', '=', "AKTIF")
                    ->get();
            }
            return datatables()->of($datacust)
                ->make(true);
        }

        $datacust = Datacust::all();

        return view('datacust.indexTimseo', ['datacust' => $datacust]);
    }

    public function export(Request $request)
    {
        $nama_file = 'rekap_SEO_' . date('d-m-Y') . '.xlsx';
        return Excel::download(new DatacustExport($request->export_status, $request->export_tanggal), $nama_file);
    }

    public function import(Request $request)
    {
        // validasi
        $this->validate($request, [
            'file' => 'required|mimes:xls,xlsx'
        ]);

        // menangkap file excel
        $file = $request->file('file');

        // membuat nama file unik
        $nama_file = rand() . $file->getClientOriginalName();

        // upload ke folder file_siswa di dalam folder public
        $file->move('datacust', $nama_file);

        // import data
        Excel::import(new DatacustImport, public_path('/datacust/' . $nama_file));

        // alihkan halaman kembali
        return redirect('/admin/datacust')->with('success', 'Data pelanggan berhasil di IMPORT');
    }

    public function create()
    {
        $timseos = User::select('*')->where('role_id', '=', 5)->get();
        $timclosings = User::select('*')->where('role_id', '=', 2)->get();

        return view('datacust.create', compact('timseos', 'timclosings'));
    }

    public function store(Request $request)
    {
        $datacustId = $request->id;

        $request->validate([
            'status' => 'required',
            'timseo' => 'required',
            'timclosing' => 'required',
            'web' => 'required',
            'klien' => 'required',
            'notelp' => 'required',
            'harga' => 'required|int',
            'bayar' => 'required|int',
            'tanggal' => 'required',
            'keterangan' => 'required'
        ]);

        if ($request->bayar === $request->harga) {
            $lunas = "LUNAS";
            $onseo = "AKTIF";
            $datacust = Datacust::updateOrCreate(
                [
                    'id' => $datacustId
                ],
                [
                    'status' => $onseo,
                    'timseo' => $request->timseo,
                    'timclosing' => $request->timclosing,
                    'web' => $request->web,
                    'klien' => $request->klien,
                    'notelp' => $request->notelp,
                    'harga' => $request->harga,
                    'bayar' => $request->bayar,
                    'tanggal' => $request->tanggal,
                    'keterangan' => $lunas,
                ]
            );
        } elseif ($request->bayar === '0') {
            $offseo = "OFF SEO - BELUM BAYAR";
            $offstatus = "NONAKTIF";
            $datacust = Datacust::updateOrCreate(
                [
                    'id' => $datacustId
                ],
                [
                    'status' => $offstatus,
                    'timseo' => $request->timseo,
                    'timclosing' => $request->timclosing,
                    'web' => $request->web,
                    'klien' => $request->klien,
                    'notelp' => $request->notelp,
                    'harga' => $request->harga,
                    'bayar' => $request->bayar,
                    'tanggal' => $request->tanggal,
                    'keterangan' => $offseo,
                ]
            );
        } else {
            $datacust = Datacust::updateOrCreate(
                [
                    'id' => $datacustId
                ],
                [
                    'status' => $request->status,
                    'timseo' => $request->timseo,
                    'timclosing' => $request->timclosing,
                    'web' => $request->web,
                    'klien' => $request->klien,
                    'notelp' => $request->notelp,
                    'harga' => $request->harga,
                    'bayar' => $request->bayar,
                    'tanggal' => $request->tanggal,
                    'keterangan' => $request->keterangan,
                ]
            );
        }

        return redirect('/admin/datacust/create')->with('success', 'New data suceccfully added');
    }

    public function storeEdit(Request $request)
    {
        $datacustId = $request->edit_id;

        $request->validate([
            'edit_status' => 'required',
            'edit_timseo' => 'required',
            'edit_timclosing' => 'required',
            'edit_web' => 'required',
            'edit_klien' => 'required',
            'edit_notelp' => 'required|int',
            'edit_harga' => 'required|int',
            'edit_bayar' => 'required|int',
            'edit_tanggal' => 'required',
            'edit_tanggal_offseo',
            'edit_keterangan' => 'required'
        ]);

        if ($request->edit_bayar === $request->edit_harga) {
            $lunas = "LUNAS";
            $onstatus = "AKTIF";
            $datacust = Datacust::updateOrCreate(
                [
                    'id' => $datacustId
                ],
                [
                    'status' => $onstatus,
                    'timseo' => $request->edit_timseo,
                    'timclosing' => $request->edit_timclosing,
                    'web' => $request->edit_web,
                    'klien' => $request->edit_klien,
                    'notelp' => $request->edit_notelp,
                    'harga' => $request->edit_harga,
                    'bayar' => $request->edit_bayar,
                    'tanggal' => $request->edit_tanggal,
                    'tanggal_offseo' => $request->edit_tanggal_offseo,
                    'keterangan' => $lunas,
                ]
            );
        } elseif ($request->edit_bayar === '0') {
            $offseo = "OFF SEO - BELUM BAYAR";
            $offstatus = "NONAKTIF";
            $datacust = Datacust::updateOrCreate(
                [
                    'id' => $datacustId
                ],
                [
                    'status' => $offstatus,
                    'timseo' => $request->edit_timseo,
                    'timclosing' => $request->edit_timclosing,
                    'web' => $request->edit_web,
                    'klien' => $request->edit_klien,
                    'notelp' => $request->edit_notelp,
                    'harga' => $request->edit_harga,
                    'bayar' => $request->edit_bayar,
                    'tanggal' => $request->edit_tanggal,
                    'tanggal_offseo' => $request->edit_tanggal_offseo,
                    'keterangan' => $offseo,
                ]
            );
        } else {
            $datacust = Datacust::updateOrCreate(
                [
                    'id' => $datacustId
                ],
                [
                    'status' => $request->edit_status,
                    'timseo' => $request->edit_timseo,
                    'timclosing' => $request->edit_timclosing,
                    'web' => $request->edit_web,
                    'klien' => $request->edit_klien,
                    'notelp' => $request->edit_notelp,
                    'harga' => $request->edit_harga,
                    'bayar' => $request->edit_bayar,
                    'tanggal' => $request->edit_tanggal,
                    'tanggal_offseo' => $request->edit_tanggal_offseo,
                    'keterangan' => $request->edit_keterangan,
                ]
            );
        }

        return Response()->json($datacust);
    }

    public function storeUpdate(Request $request)
    {
        $datacustId = $request->id;

        $request->validate([
            'update_status' => 'required',
        ]);

        $datacust = Datacust::updateOrCreate(
            [
                'id' => $datacustId
            ],
            [
                'status' => $request->update_status,
            ]
        );

        return Response()->json($datacust);
    }

    public function edit(Request $request)
    {
        $where = array('id' => $request->id);
        $datacust = Datacust::where($where)->first();

        return Response()->json($datacust);
    }

    public function destroy(Request $request)
    {
        $datacust = Datacust::where('id', $request->id)->delete();

        return Response()->json($datacust);
    }
}
