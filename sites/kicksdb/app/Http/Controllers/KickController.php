<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Collabrand;
use App\Models\Designer;
use App\Models\Kick;
use App\Models\Kmodel;
use App\Models\Person;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;

class KickController extends Controller
{
    const PAGINATION_PAGE_SIZE = 100;
    const MAX_NUMBER_KICKS_IN_GROUP = 11;

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        //Indexes path
        $indexPath = storage_path('indexes/');

        $kicks = new Collection();
        $brands = Brand::all()->sortBy('name');                         
        $collabrands = Collabrand::all()->sortBy('name');
        $people = Person::all()->sortBy('name');
        $designers = Designer::all()->sortBy('name');
        $models = Kmodel::all()->sortBy('name');
        $categories = Category::all()->sortBy('name');

        //Creating an array of product ids by filters
        $data = $request->query();
        $checkboxesCounter = 0;
        $selectedParametersCounter = 0;
        $unitedIndexData = [];

        if (!empty($data['brand'])) {
            $selectedBrands = collect(explode(',', $data['brand']));
            foreach ($selectedBrands as $brandId) {
                $unitedIndexData = array_merge($unitedIndexData, json_decode(file_get_contents($indexPath . 'brand-' . $brandId . '-index.json'), true));
            }
            $checkboxesCounter += count($selectedBrands);
            $namesBrands = Brand::namesByIds($selectedBrands);
            $selectedParametersCounter++;
        }

        if (!empty($data['collabrand'])) {
            $selectedCollabrands = collect(explode(',', $data['collabrand']));
            foreach ($selectedCollabrands as $collabrandId) {
                $unitedIndexData = array_merge($unitedIndexData, json_decode(file_get_contents($indexPath . 'collabrand-' . $collabrandId . '-index.json'), true));
            }
            $checkboxesCounter += count($selectedCollabrands);
            $namesCollabrands = Collabrand::namesByIds($selectedCollabrands);
            $selectedParametersCounter++;
        }

        if (!empty($data['person'])) {
            $selectedPeople = collect(explode(',', $data['person']));
            foreach ($selectedPeople as $personId) {
                $unitedIndexData = array_merge($unitedIndexData, json_decode(file_get_contents($indexPath . 'person-' . $personId . '-index.json'), true));
            }
            $checkboxesCounter += count($selectedPeople);
            $namesPeople = Person::namesByIds($selectedPeople);
            $selectedParametersCounter++;
        }

        if (!empty($data['designer'])) {
            $selectedDesigners = collect(explode(',', $data['designer']));
            foreach ($selectedDesigners as $designerId) {
                $unitedIndexData = array_merge($unitedIndexData, json_decode(file_get_contents($indexPath . 'designer-' . $designerId . '-index.json'), true));
            }
            $checkboxesCounter += count($selectedDesigners);
            $namesDesigners = Designer::namesByIds($selectedDesigners);
            $selectedParametersCounter++;
        }

        if (!empty($data['model'])) {
            $selectedModels = collect(explode(',', $data['model']));
            foreach ($selectedModels as $modelId) {
                $unitedIndexData = array_merge($unitedIndexData, json_decode(file_get_contents($indexPath . 'model-' . $modelId . '-index.json'), true));
            }
            $checkboxesCounter += count($selectedModels);
            $namesModels = Kmodel::namesByIds($selectedModels);
            $selectedParametersCounter++;
        }

        $indexSummary =  array_count_values($unitedIndexData);
        $summaryIds = [];

        foreach ($indexSummary as $key => $value) {
            if ($value == $selectedParametersCounter) {
                $summaryIds[] = $key;
            }
        }

        //Assembling heading
        $heading = 'All sneakers';

        if ($checkboxesCounter == 1) {
            switch (true) {
                case (!empty($data['brand'])):
                    $heading = $namesBrands[0] . ' sneakers';
                    break;
                case (!empty($data['collabrand'])):
                    $heading = $namesCollabrands[0] . ' collab sneakers';
                    break;
                case (!empty($data['person'])):
                    $heading = $namesPeople[0] . ' sneakers';
                    break;
                case (!empty($data['designer'])):
                    $heading = 'Sneakers by ' . $namesDesigners[0];
                    break;
                case (!empty($data['model'])):
                    $heading = $namesModels[0] . ' silhouette sneakers';
                    break;
            }
        }

        if ($checkboxesCounter == 2) {
            if (isset($namesBrands)) {
                if (isset($namesCollabrands)) {
                    $heading = $namesCollabrands[0] . ' x ' . $namesBrands[0] . ' collab sneakers';
                } else if (isset($namesPeople)) {
                    $heading = $namesPeople[0] . ' ' . $namesBrands[0] . ' sneakers';
                } else if (isset($namesDesigners)) {
                    $heading = $namesBrands[0] . ' sneakers designed by ' . $namesDesigners[0];
                } else if (isset($namesModels)) {
                    $heading = $namesBrands[0] . ' ' . $namesModels[0] . ' sneakers';
                } else {
                    $heading = $namesBrands[0] . ', ' . $namesBrands[1] . ' sneakers';
                }
            }

            else if (isset($namesCollabrands)) {
                if (isset($namesPeople)) {
                    $heading = $namesCollabrands[0] . ' x ' . $namesPeople[0] . ' sneakers';
                } else if (isset($namesDesigners)) {
                    $heading = $namesCollabrands[0] . ' collab sneakers designed by  ' . $namesDesigners[0];
                } else if (isset($namesModels)) {
                    $heading = $namesCollabrands[0] . ' ' . $namesModels[0] . ' sneakers';
                } else {
                    $heading = $namesCollabrands[0] . ', ' . $namesCollabrands[1] . ' collab sneakers';
                }
            }

            else if (isset($namesPeople)) {
                if (isset($namesDesigners)) {
                    $heading = $namesPeople[0] . ' sneakers designed by ' . $namesDesigners[0];
                } else if (isset($namesModels)) {
                    $heading = $namesPeople[0] . ' ' . $namesModels[0] . ' sneakers';
                } else {
                    $heading = $namesPeople[0] . ', ' . $namesPeople[1] . ' sneakers';
                }
            }

            else if (isset($namesDesigners)) {
                if (isset($namesModels)) {
                    $heading = $namesDesigners[0] . ' ' . $namesModels[0] . ' sneakers';
                } else {
                    $heading = 'Sneakers designed by ' . $namesDesigners[0] . ', ' . $namesDesigners[1];
                }
            }

            else if (isset($namesModels)) {
                $heading = $namesModels[0] . ', ' . $namesModels[1] . ' sneakers';
            }
        }

        if ($checkboxesCounter > 2) {
            $heading = 'Sneakers (kicks)';
        }

        if (empty($data)) {
            $kicks = Kick::all();
            // $kicks = Kick::paginate(self::PAGINATION_PAGE_SIZE);
        } else {
            $kicks = Kick::whereIn('id', $summaryIds)->get();
        }


        //Indexing
        //php artisan index:kicks
        
        // http://kicksdb.localhost/kicks?brand=2,4&designer=5&category=7&collabrand=1

        return view('kick.index', compact('kicks', 'brands', 'collabrands', 'people', 'designers', 'categories', 'models', 'heading'));
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
    public function show(string $slug)
    {
        // $kick = Kick::where('slug', $slug)->first();
        // $images = $kick->images->sortBy('display_order');
        // $brands = $kick->brands->sortBy('name');
        // $kmodel = $kick->kmodel;
        // $collabrands = $kick->collabrands;
        // $colors = $kick->colors;
        // $designers = $kick->designers;
        // $people = $kick->people;
        // $releaseDate = $kick->release_date;
        // $materials = $kick->materials;
        // $category = $kick->category;

        // if (isset($kmodel)) {
        //     $kicksByModelWOCurrent = $kmodel->kicks->except(1)->shuffle();

        //     if (count($kicksByModelWOCurrent) > self::MAX_NUMBER_KICKS_IN_GROUP) {
        //         $kicksByModelWOCurrent = $kicksByModelWOCurrent->take(self::MAX_NUMBER_KICKS_IN_GROUP);
        //     }
        // } else {
        //     $kicksByModelWOCurrent = null;
        // }

        // if ($designers->isNotEmpty()) {
        //     $kicksByDesignersWOCurrent = Kick::kicksByDesigners($designers)->except($kick->id)->shuffle();

        //     if (count($kicksByDesignersWOCurrent) > self::MAX_NUMBER_KICKS_IN_GROUP) {
        //         $kicksByDesignersWOCurrent = $kicksByDesignersWOCurrent->take(self::MAX_NUMBER_KICKS_IN_GROUP);
        //     }
        // } else {
        //     $kicksByDesignersWOCurrent = null;
        // }

        // if ($brands->isNotEmpty()) {
        //     $kicksByBrandsWOCurrent = Kick::kicksByBrands($brands)->except($kick->id)->shuffle();

        //     if (count($kicksByBrandsWOCurrent) > self::MAX_NUMBER_KICKS_IN_GROUP) {
        //         $kicksByBrandsWOCurrent = $kicksByBrandsWOCurrent->take(self::MAX_NUMBER_KICKS_IN_GROUP);
        //     }
        // }

        // return view('kick.show', [
        //     'kick' => $kick,
        //     'styleCode' => $kick->styleCode,
        //     'description' => $kick->description,
        //     'images' => $images,
        //     'brands' => $brands,
        //     'kmodel' => $kmodel,
        //     'collabrands' => $collabrands,
        //     'colors' => $colors,
        //     'designers' => $designers,
        //     'people' => $people,
        //     'releaseDate' => $releaseDate,
        //     'materials' => $materials,
        //     'category' => $category,
        //     'kicksByModelWOCurrent' => $kicksByModelWOCurrent,
        //     'kicksByDesignersWOCurrent' => $kicksByDesignersWOCurrent,
        //     'kicksByBrandsWOCurrent' => $kicksByBrandsWOCurrent,
        //     'maxNumberKicksInGroup' => self::MAX_NUMBER_KICKS_IN_GROUP,
        // ]);
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

    /**
     * Display AJAX filters results.
     */
    public function filtersResult(Request $request)
    {
        //Indexes path
        $indexPath = storage_path('indexes/');

        $kicks = new Collection();
        $brands = Brand::all()->sortBy('name');                         
        $collabrands = Collabrand::all()->sortBy('name');
        $people = Person::all()->sortBy('name');
        $designers = Designer::all()->sortBy('name');
        $models = Kmodel::all()->sortBy('name');
        $categories = Category::all()->sortBy('name');

        //Creating an array of product ids by filters
        $data = $request->query();
        $checkboxesCounter = 0;
        $selectedParametersCounter = 0;
        $unitedIndexData = [];

        if (!empty($data['brand'])) {
            $selectedBrands = collect(explode(',', $data['brand']));
            foreach ($selectedBrands as $brandId) {
                $unitedIndexData = array_merge($unitedIndexData, json_decode(file_get_contents($indexPath . 'brand-' . $brandId . '-index.json'), true));
            }
            $checkboxesCounter += count($selectedBrands);
            $namesBrands = Brand::namesByIds($selectedBrands);
            $selectedParametersCounter++;
        }

        if (!empty($data['collabrand'])) {
            $selectedCollabrands = collect(explode(',', $data['collabrand']));
            foreach ($selectedCollabrands as $collabrandId) {
                $unitedIndexData = array_merge($unitedIndexData, json_decode(file_get_contents($indexPath . 'collabrand-' . $collabrandId . '-index.json'), true));
            }
            $checkboxesCounter += count($selectedCollabrands);
            $namesCollabrands = Collabrand::namesByIds($selectedCollabrands);
            $selectedParametersCounter++;
        }

        if (!empty($data['person'])) {
            $selectedPeople = collect(explode(',', $data['person']));
            foreach ($selectedPeople as $personId) {
                $unitedIndexData = array_merge($unitedIndexData, json_decode(file_get_contents($indexPath . 'person-' . $personId . '-index.json'), true));
            }
            $checkboxesCounter += count($selectedPeople);
            $namesPeople = Person::namesByIds($selectedPeople);
            $selectedParametersCounter++;
        }

        if (!empty($data['designer'])) {
            $selectedDesigners = collect(explode(',', $data['designer']));
            foreach ($selectedDesigners as $designerId) {
                $unitedIndexData = array_merge($unitedIndexData, json_decode(file_get_contents($indexPath . 'designer-' . $designerId . '-index.json'), true));
            }
            $checkboxesCounter += count($selectedDesigners);
            $namesDesigners = Designer::namesByIds($selectedDesigners);
            $selectedParametersCounter++;
        }

        if (!empty($data['model'])) {
            $selectedModels = collect(explode(',', $data['model']));
            foreach ($selectedModels as $modelId) {
                $unitedIndexData = array_merge($unitedIndexData, json_decode(file_get_contents($indexPath . 'model-' . $modelId . '-index.json'), true));
            }
            $checkboxesCounter += count($selectedModels);
            $namesModels = Kmodel::namesByIds($selectedModels);
            $selectedParametersCounter++;
        }

        $indexSummary =  array_count_values($unitedIndexData);
        $summaryIds = [];

        foreach ($indexSummary as $key => $value) {
            if ($value == $selectedParametersCounter) {
                $summaryIds[] = $key;
            }
        }

        //Assembling heading
        $heading = 'All sneakers';

        if ($checkboxesCounter == 1) {
            switch (true) {
                case (!empty($data['brand'])):
                    $heading = $namesBrands[0] . ' sneakers';
                    break;
                case (!empty($data['collabrand'])):
                    $heading = $namesCollabrands[0] . ' collab sneakers';
                    break;
                case (!empty($data['person'])):
                    $heading = $namesPeople[0] . ' sneakers';
                    break;
                case (!empty($data['designer'])):
                    $heading = 'Sneakers by ' . $namesDesigners[0];
                    break;
                case (!empty($data['model'])):
                    $heading = $namesModels[0] . ' silhouette sneakers';
                    break;
            }
        }

        if ($checkboxesCounter == 2) {
            if (isset($namesBrands)) {
                if (isset($namesCollabrands)) {
                    $heading = $namesCollabrands[0] . ' x ' . $namesBrands[0] . ' collab sneakers';
                } else if (isset($namesPeople)) {
                    $heading = $namesPeople[0] . ' ' . $namesBrands[0] . ' sneakers';
                } else if (isset($namesDesigners)) {
                    $heading = $namesBrands[0] . ' sneakers designed by ' . $namesDesigners[0];
                } else if (isset($namesModels)) {
                    $heading = $namesBrands[0] . ' ' . $namesModels[0] . ' sneakers';
                } else {
                    $heading = $namesBrands[0] . ', ' . $namesBrands[1] . ' sneakers';
                }
            }

            else if (isset($namesCollabrands)) {
                if (isset($namesPeople)) {
                    $heading = $namesCollabrands[0] . ' x ' . $namesPeople[0] . ' sneakers';
                } else if (isset($namesDesigners)) {
                    $heading = $namesCollabrands[0] . ' collab sneakers designed by  ' . $namesDesigners[0];
                } else if (isset($namesModels)) {
                    $heading = $namesCollabrands[0] . ' ' . $namesModels[0] . ' sneakers';
                } else {
                    $heading = $namesCollabrands[0] . ', ' . $namesCollabrands[1] . ' collab sneakers';
                }
            }

            else if (isset($namesPeople)) {
                if (isset($namesDesigners)) {
                    $heading = $namesPeople[0] . ' sneakers designed by ' . $namesDesigners[0];
                } else if (isset($namesModels)) {
                    $heading = $namesPeople[0] . ' ' . $namesModels[0] . ' sneakers';
                } else {
                    $heading = $namesPeople[0] . ', ' . $namesPeople[1] . ' sneakers';
                }
            }

            else if (isset($namesDesigners)) {
                if (isset($namesModels)) {
                    $heading = $namesDesigners[0] . ' ' . $namesModels[0] . ' sneakers';
                } else {
                    $heading = 'Sneakers designed by ' . $namesDesigners[0] . ', ' . $namesDesigners[1];
                }
            }

            else if (isset($namesModels)) {
                $heading = $namesModels[0] . ', ' . $namesModels[1] . ' sneakers';
            }
        }

        if ($checkboxesCounter > 2) {
            $heading = 'Sneakers (kicks)';
        }

        if (empty($data)) {
            $kicks = Kick::all();
            // $kicks = Kick::paginate(self::PAGINATION_PAGE_SIZE);
        } else {
            $kicks = Kick::whereIn('id', $summaryIds)->get();
        }

        $view = view('kick.result', compact('kicks', 'brands', 'collabrands', 'people', 'designers', 'models', 'categories'))->render();
    
        return response()->json([
            'heading' => $heading,
            'html' => $view
        ]);
    }
}
