<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\PersonRequest;
use App\Models\Person;

class PersonController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $people = Person::orderBy('id')->paginate(10);

        return view('person.index', compact('people'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('person.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(PersonRequest $request)
    {
        $data = $request->validated();
        Person::create($data);

        return redirect()->route('people.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Person $person)
    {
        return view('person.form', compact('person'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(PersonRequest $request, Person $person)
    {
        $data = $request->validated();
        $person->update($data);

        return redirect()->route('people.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Person $person)
    {
        $person->delete();

        return redirect()->route('people.index');
    }
}
