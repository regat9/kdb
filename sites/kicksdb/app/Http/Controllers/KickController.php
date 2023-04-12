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
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;
use Illuminate\View\View;


class KickController extends Controller
{
    const PAGINATION_PAGE_SIZE = 10;
    const MAX_NUMBER_KICKS_IN_GROUP = 11;

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $kicks = Kick::all();
        $brands = Brand::all()->sortBy('name');
        $collaBrands = Collabrand::all()->sortBy('name');
        $kmodels = Kmodel::all()->sortBy('name');
        $designers = Designer::all()->sortBy('name');
        $people = Person::all()->sortBy('name');
        $categories = Category::all()->sortBy('name');

        //filters
        $data = $request->query();
        $filter = app()->make(KickFilter::class, ['queryParams' => array_filter($data)]);
        $kicks = Kick::filter($filter)->get();


        // $kicks = CollectionHelper::paginate(Kick::getByBrandIds([1, 2]), self::PAGINATION_PAGE_SIZE);


// http://kicksdb.localhost/catalog/?brand=1&designer=2&category=2&collabrand=1


        return view('kick.index', compact('kicks', 'brands', 'collaBrands', 'kmodels', 'designers', 'people', 'categories'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $slug): View
    {
        $styleCode = substr($slug, strpos($slug, "_") + 1);
        $kick = Kick::where('style_code', 'ilike', '%' . str_replace('-', ' ', $styleCode) . '%')->first();

        $images = $kick->images;
        $firstImage = $images->first();
        $otherImages = $images->forget(0);
        $brands = $kick->brands->sortBy('name');
        $kmodel = $kick->kmodel;
        $collaBrands = $kick->collabrands;
        $colors = $kick->colors;
        $designers = $kick->designers;
        $people = $kick->people;
        $releaseDate = $kick->release_date;
        $materials = $kick->materials;
        $category = $kick->category;

        if (isset($kmodel)) {
            $kicksByModel = $kmodel->kicks;
            $kicksByModelWOCurrent = $kicksByModel->except(1)->shuffle();

            if (count($kicksByModelWOCurrent) > self::MAX_NUMBER_KICKS_IN_GROUP) {
                $kicksByModelWOCurrent = $kicksByModelWOCurrent->take(self::MAX_NUMBER_KICKS_IN_GROUP);
            }
        } else {
            $kicksByModel = null;
            $kicksByModelWOCurrent = null;
        }

        if ($designers->isNotEmpty()) {
            $kicksByDesigners = new Collection();

            foreach ($designers as $designer) {
                $kicksByDesigners = $kicksByDesigners->merge($designer->kicks);
                $kicksByDesignersWOCurrent = $kicksByDesigners->except(1)->shuffle();
            }

            if (count($kicksByDesignersWOCurrent) > self::MAX_NUMBER_KICKS_IN_GROUP) {
                $kicksByDesignersWOCurrent = $kicksByDesignersWOCurrent->take(self::MAX_NUMBER_KICKS_IN_GROUP);
            }
        } else {
            $kicksByDesigners = null;
            $kicksByDesignersWOCurrent = null;
        }

        if ($brands->isNotEmpty()) {
            $kicksByBrands = new Collection();

            foreach ($brands as $brand) {
                $kicksByBrands = $kicksByBrands->merge($brand->kicks);
                $kicksByBrandsWOCurrent = $kicksByBrands->except(1)->shuffle();
            }

            if (count($kicksByBrandsWOCurrent) > self::MAX_NUMBER_KICKS_IN_GROUP) {
                $kicksByBrandsWOCurrent = $kicksByBrandsWOCurrent->take(self::MAX_NUMBER_KICKS_IN_GROUP);
            }
        }

        return view('kick.show', [
            'kick' => $kick,
            'styleCode' => $styleCode,
            'description' => $kick->description,
            'firstImage' => $firstImage,
            'otherImages' => $otherImages,
            'brands' => $brands,
            'kmodel' => $kmodel,
            'collaBrands' => $collaBrands,
            'colors' => $colors,
            'designers' => $designers,
            'people' => $people,
            'releaseDate' => $releaseDate,
            'materials' => $materials,
            'category' => $category,
            'kicksByModelWOCurrent' => $kicksByModelWOCurrent,
            'kicksByDesignersWOCurrent' => $kicksByDesignersWOCurrent,
            'kicksByBrandsWOCurrent' => $kicksByBrandsWOCurrent,
            'maxNumberKicksInGroup' => self::MAX_NUMBER_KICKS_IN_GROUP,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
