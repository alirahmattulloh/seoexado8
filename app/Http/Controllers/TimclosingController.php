<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TimclosingController extends Controller
{
    public function index() {
        return view('timclosing.index');
    }
}
