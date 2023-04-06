<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\CollabrandRequest;
use App\Models\Collabrand;

class CollabrandController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $collabrands = Collabrand::orderBy('id')->paginate(5);

        return view('collabrand.index', compact('collabrands'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('collabrand.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CollabrandRequest $request)
    {
        $data = $request->validated();
        Collabrand::create($data);

        return redirect()->route('collabrands.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Collabrand $collabrand)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Collabrand $collabrand)
    {
        return view('collabrand.form', compact('collabrand'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(CollabrandRequest $request, Collabrand $collabrand)
    {
        $data = $request->validated();
        $collabrand->update($data);

        return redirect()->route('collabrands.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Collabrand $collabrand)
    {
        $collabrand->delete();

        return redirect()->route('collabrands.index');
    }
}
