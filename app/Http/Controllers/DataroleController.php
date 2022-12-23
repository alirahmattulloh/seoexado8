<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Role;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\DB;

class DataroleController extends Controller
{
    public function index()
    {
        if (request()->ajax()) {
            //return datatables()->of(Product::select('*'))
            $datarole = DB::table('roles')
                ->select('roles.*')
                ->get();

            return datatables()->of($datarole)
                ->addColumn('action', 'datarole.datarole-action')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }

        $roles = Role::all();
        return view('datarole.index', compact('roles'));
    }

    public function store(Request $request)
    {

        $request->validate([
            'kode' => 'required',
            'nama' => 'required',
        ]);

        $datarole = Role::create([
            'roles_kode' => $request->kode,
            'roles_name' => $request->nama,
        ]);

        return Response()->json($datarole);
    }

    public function edit(Request $request)
    {
        $where = array('id' => $request->id);
        $datarole = Role::where($where)->first();

        return Response()->json($datarole);
    }

    public function storeEdit(Request $request)
    {
        $dataroleId = $request->edit_id;

        $request->validate([
            'edit_kode' => 'required',
            'edit_nama' => 'required',
        ]);

        $datarole = Role::updateOrCreate(
            [
                'id' => $dataroleId
            ],
            [
                'roles_kode' => $request->edit_kode,
                'roles_name' => $request->edit_nama,
            ]

        );

        return Response()->json($datarole);
    }

    public function destroy(Request $request)
    {
        $datarole = Role::where('id', $request->id)->delete();

        return Response()->json($datarole);
    }
}
