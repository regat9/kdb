<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Filters\KickFilter;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Collabrand;
use App\Models\Designer;
use App\Models\Kick;
use App\Models\Kmodel;
use App\Models\Person;
use Illuminate\Http\Request;
use Illuminate\View\View;

class KickController2 extends Controller
{
    const PAGINATION_PAGE_SIZE = 10;

    public function index(Request $request)
    {
        $brands = Brand::all();
        $collabrands = Collabrand::all();
        $models = Kmodel::all();
        $designers = Designer::all();
        $people = Person::all();
        $categories = Category::all();

        //filters
        $data = $request->query();
        $filter = app()->make(KickFilter::class, ['queryParams' => array_filter($data)]);
        $kicks = Kick::filter($filter)->get();


        // $kicks = CollectionHelper::paginate(Kick::getByBrandIds([1, 2]), self::PAGINATION_PAGE_SIZE);

// dd($cat);


// http://kicksdb.localhost/catalog/?brand=1&designer=2&category=2&collabrand=1


        return view('kick-x.index', compact('kicks', 'brands', 'collabrands', 'models', 'designers', 'people', 'categories'));
    }
}
