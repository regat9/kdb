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

        return view('admin.designer.index', compact('designers'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.designer.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(DesignerRequest $request)
    {
        $data = $request->validated();
        $designer = Designer::create($data);

        return to_route('designers.index')->with('success', "Designer <b>$designer->name</b> created successfully.");
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
        return view('admin.designer.form', compact('designer'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(DesignerRequest $request, Designer $designer)
    {
        $data = $request->validated();
        $designer->update($data);

        return to_route('designers.index')->with('success', "Designer <b>$designer->name</b> updated successfully.");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Designer $designer)
    {
        $designer->delete();

        return to_route('designers.index')->with('success', "Designer <b>$designer->name</b> deleted successfully.");
    }
}
