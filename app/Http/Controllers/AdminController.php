<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use App\Models\Datacust;
use Carbon\Carbon;

class AdminController extends Controller
{
    public function index()
    {
        $bulanini = Carbon::now()->month;
        $tahunini = Carbon::now()->year;
        $jmlseo = Datacust::count();
        $orderseo = Datacust::whereYear('tanggal', '=', $tahunini)
            ->whereMonth('tanggal', '=', $bulanini)
            ->count();
        $omzetseo = Datacust::select()->whereYear('tanggal', '=', $tahunini)->whereMonth('tanggal', '=', $bulanini)->sum('bayar');

        return view('admin.index', compact('jmlseo', 'orderseo', 'omzetseo'));
    }
}
