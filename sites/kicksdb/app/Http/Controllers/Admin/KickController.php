<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\KickRequest;
use App\Models\Brand;
use App\Models\Collabrand;
use App\Models\Designer;
use App\Models\Image;
use App\Models\Kick;
use App\Models\Kmodel;
use App\Models\Person;

class KickController extends Controller
{
    const ORIGINAL_IMAGES_DIR = '/orig/';
    const BIG_IMAGES_DIR = '/b/';
    const SMALL_IMAGES_DIR = '/s/';

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kicks = Kick::orderBy('id', 'desc')->paginate(20);

        return view('admin.kick.index', compact('kicks'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $kicks = Kick::all();
        $brands = Brand::all();
        $collabrands = Collabrand::all();
        $designers = Designer::all();
        $people = Person::all();
        $kmodels = Kmodel::all();

        return view('admin.kick.form', compact(
            'kicks',
            'brands',
            'collabrands',
            'designers',
            'people',
            'kmodels',
        ));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(KickRequest $request)
    {
        $data = $request->validated();

        $relations = ['brands', 'collabrands', 'designers', 'people', 'images'];

        foreach ($relations as $relation) {
            if (isset($data[$relation])) {
                $$relation = $data[$relation];
            }

            unset($data[$relation]);
        }

        $kick = Kick::firstOrCreate([
            'title' => $data['title'],
            'style_code' => $data['style_code'],
        ], $data);

        $kick->update($data);

        $this->uploadImages($request, $kick);

        foreach ($relations as $relation) {
            if  (!empty($$relation) && $relation != 'images') {
                foreach ($$relation as $item) {
                    $kick->$relation()->attach($item);
                }
            }
        }

        return to_route('kicks.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Kick $kick)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Kick $kick)
    {
        $brands = Brand::all();
        $collabrands = Collabrand::all();
        $designers = Designer::all();
        $people = Person::all();
        $kmodels = Kmodel::all();

        return view('admin.kick.form', compact(
            'kick',
            'brands',
            'collabrands',
            'designers',
            'people',
            'kmodels',
        ));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(KickRequest $request, Kick $kick)
    {
        $data = $request->validated();
        // dd($data['kmodel_id']);

        $relations = ['brands', 'collabrands', 'designers', 'people', 'images'];

        foreach ($relations as $relation) {
            if ($relation == 'images') {
                $this->uploadImages($request, $kick);
            } elseif (isset($data[$relation])) {
                $$relation = $data[$relation];
                $kick->$relation()->sync($$relation);
            } else {
                $kick->$relation()->detach();
            }

            unset($data[$relation]);
        }

        if (!isset($data['kmodel_id'])) {
            $kick->kmodel_id = null;
        }

        $kick->update($data);

        return to_route('kicks.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Kick $kick)
    {
        $kick->delete();

        return to_route('kicks.index');
    }

     /**
     * Upload images from a disk
     */
    public function uploadImages(KickRequest $request, Kick $kick)
    {
        if ($request->hasFile('images')) {
            $allowedImageExtensions = ['jpg', 'jpeg', 'png'];
            $images = $request->file('images');

            foreach ($images as $image) {
                $imageName = $image->getClientOriginalName();
                $imageExtension = $image->getClientOriginalExtension();
                $check = in_array($imageExtension, $allowedImageExtensions);

                if ($check) {
                    $image->move('img/b', $imageName);

                    $kick->images()->save(new Image([
                        'kick_id' => $kick->id,
                        'image_orig' => '',
                        'image_b' => self::BIG_IMAGES_DIR . $imageName,
                        'image_s' => '',
                    ]));
                }
            }
        }
    }
}
