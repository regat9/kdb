<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Collabrand;
use App\Models\Designer;
use App\Models\Kick;
use App\Models\Person;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;

class StartController extends Controller
{
    public function show()
    {
        $featured = Kick::where('title', 'ilike', '%' . 'WMNS' . '%' )
        ->orWhere('title', 'ilike', '%' . '2020' . '%' )
        ->get();

        $lastReleased = Kick::all()->sortByDesc('release_date')->take(6);

        $brands = Brand::all();
        $collaBrands = Collabrand::all();
        $designers = Designer::all();
        $people = Person::all();

        return view('start', compact('featured', 'lastReleased', 'brands', 'collaBrands', 'designers', 'people'));
    }

}
