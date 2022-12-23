<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TimprogramController extends Controller
{
    public function index() {
        return view('timprogram.index');
    }
}
