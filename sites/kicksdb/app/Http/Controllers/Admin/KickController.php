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
use Exception;
use Illuminate\Support\Facades\Storage;

class KickController extends Controller
{
    const ORIGINAL_IMAGES_DIR = '/img/orig';
    const BIG_IMAGES_DIR = '/img/b';
    const SMALL_IMAGES_DIR = '/img/s';

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kicks = Kick::orderBy('id', 'asc')->paginate(10);

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
        try {
        $data = $request->validated();

        $kick = new Kick();

        $kick->title = $data['title'];
        $kick->style_code = $data['style_code'];
        $kick->slug = strtolower(preg_replace("/[^a-zA-Z0-9_ -]/s", '', str_replace(' ', '-', $data['title'] . '_' . $data['style_code'])));
        $kick->kmodel_id = $data['kmodel_id'] ?? null;
        $kick->description = $data['description'];
        $kick->release_date = $data['release_date'];
        $kick->save();

        $kick->brands()->attach($data['brands'] ?? null);
        $kick->collabrands()->attach($data['collabrands'] ?? null);
        $kick->designers()->attach($data['designers'] ?? null);
        $kick->people()->attach($data['people'] ?? null);

        if (!empty($data['images'])) {
            foreach ($data['images'] as $image) {
                $imageName = strtolower(str_replace(' ', '-', $kick->style_code))
                    . '-' . substr(uniqid(), -7). '.' . $image->getClientOriginalExtension();

                // Put original image on a disk
                Storage::disk('public')->putFileAs(self::ORIGINAL_IMAGES_DIR, $image, $imageName);

                $filePathOrig = self::ORIGINAL_IMAGES_DIR . '/' . $imageName;

                // Resize original image to big size
                $imagick1 = new \Imagick(storage_path('/app/public') . $filePathOrig);
                $imagick1->resizeImage(1200, 0, \Imagick::FILTER_LANCZOS, 1);
                Storage::disk('public')->put(self::BIG_IMAGES_DIR . '/' . $imageName, $imagick1->getimageblob());

                // Resize original image to small size
                $imagick2 = new \Imagick(storage_path('/app/public') . $filePathOrig);
                $imagick2->resizeImage(300, 0, \Imagick::FILTER_LANCZOS, 1);
                Storage::disk('public')->put(self::SMALL_IMAGES_DIR . '/' . $imageName, $imagick2->getimageblob());

                $kickImage = Image::create([
                    'kick_id' => $kick->id,
                    'img_orig' => $filePathOrig,
                    'img_b' => self::BIG_IMAGES_DIR . '/' . $imageName,
                    'img_s' => self::SMALL_IMAGES_DIR . '/' . $imageName,
                ]);

                $kick->images()->save($kickImage);
            }
        }

    } catch (Exception $e) {
        dd($e->getMessage());
    }
        return to_route('kicks.index')->with('success', "Kick <b>$kick->title</b> created successfully.");
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

        $kick->update([
            'title' => $data['title'],
            'style_code' => $data['style_code'] ?? null,
            'slug' => strtolower(preg_replace("/[^a-zA-Z0-9_ -]/s", '', str_replace(' ', '-', $data['title'] . '_' . $data['style_code']))) ?? null,
            'kmodel_id' => $data['kmodel_id'] ?? null,
            'description' => $data['description'] ?? null,
            'release_date' => $data['release_date'] ?? null,
        ]);

        isset($data['brands']) ? $kick->brands()->sync($data['brands']) : $kick->brands()->detach();
        isset($data['collabrands']) ? $kick->collabrands()->sync($data['collabrands']) : $kick->collabrands()->detach();
        isset($data['designers']) ? $kick->designers()->sync($data['designers']) : $kick->designers()->detach();
        isset($data['people']) ? $kick->people()->sync($data['people']) : $kick->people()->detach();

        if (!empty($data['images'])) {
            foreach ($data['images'] as $image) {
                $imageName = strtolower(str_replace(' ', '-', $kick->style_code))
                    . '-' . substr(uniqid(), -7). '.' . $image->getClientOriginalExtension();

                // Put original image on a disk
                Storage::disk('public')->putFileAs(self::ORIGINAL_IMAGES_DIR, $image, $imageName);

                $filePathOrig = self::ORIGINAL_IMAGES_DIR . '/' . $imageName;

                // Resize original image to big size
                $imagick1 = new \Imagick(storage_path('/app/public') . $filePathOrig);
                $imagick1->resizeImage(1200, 0, \Imagick::FILTER_LANCZOS, 1);
                Storage::disk('public')->put(self::BIG_IMAGES_DIR . '/' . $imageName, $imagick1->getimageblob());

                // Resize original image to small size
                $imagick2 = new \Imagick(storage_path('/app/public') . $filePathOrig);
                $imagick2->resizeImage(300, 0, \Imagick::FILTER_LANCZOS, 1);
                Storage::disk('public')->put(self::SMALL_IMAGES_DIR . '/' . $imageName, $imagick2->getimageblob());

                $kickImage = Image::create([
                    'kick_id' => $kick->id,
                    'img_orig' => $filePathOrig,
                    'img_b' => self::BIG_IMAGES_DIR . '/' . $imageName,
                    'img_s' => self::SMALL_IMAGES_DIR . '/' . $imageName,
                ]);

                $kick->images()->save($kickImage);
            }
        }

        return to_route('kicks.index')->with('success', "Kick <b>$kick->title</b> updated successfully.");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Kick $kick)
    {
        foreach ($kick->images as $image) {
            Storage::delete('public' . $image->img_orig);
            Storage::delete('public' . $image->img_b);
            Storage::delete('public' . $image->img_s);
        }

        $kick->images()->delete();
        $kick->delete();

        return to_route('kicks.index')->with('success', "Kick <b>$kick->title</b> deleted successfully.");
    }
}
