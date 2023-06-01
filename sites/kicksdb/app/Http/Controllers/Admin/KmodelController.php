<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\KmodelRequest;
use App\Models\Kmodel;


class KmodelController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kmodels = Kmodel::orderBy('id')->paginate(10);

        return view('admin.kmodel.index', compact('kmodels'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.kmodel.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(KmodelRequest $request)
    {
        $data = $request->validated();
        $kmodel = Kmodel::create($data);

        return to_route('kmodels.index')->with('success', "Model <b>$kmodel->name</b> created successfully.");
    }

    /**
     * Display the specified resource.
     */
    public function show(Kmodel $kmodel)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Kmodel $kmodel)
    {
        return view('admin.kmodel.form', compact('kmodel'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(KmodelRequest $request, Kmodel $kmodel)
    {
        $data = $request->validated();
        $kmodel->update($data);

        return to_route('kmodels.index')->with('success', "Model <b>$kmodel->name</b> updated successfully.");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Kmodel $kmodel)
    {
        $kmodel->delete();

        return to_route('kmodels.index')->with('success', "Model <b>$kmodel->name</b> deleted successfully.");
    }
}
