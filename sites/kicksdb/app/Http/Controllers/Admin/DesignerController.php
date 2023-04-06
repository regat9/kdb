<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\DesignerRequest;
use App\Models\Designer;

class DesignerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $designers = Designer::orderBy('id')->paginate(10);

        return view('designer.index', compact('designers'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('designer.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(DesignerRequest $request)
    {
        $data = $request->validated();
        Designer::create($data);

        return redirect()->route('designers.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Designer $designer)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Designer $designer)
    {
        return view('designer.form', compact('designer'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(DesignerRequest $request, Designer $designer)
    {
        $data = $request->validated();
        $designer->update($data);

        return redirect()->route('designers.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Designer $designer)
    {
        $designer->delete();

        return redirect()->route('designers.index');
    }
}
