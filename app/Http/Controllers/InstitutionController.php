<?php

namespace App\Http\Controllers;

use App\Models\Institution;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreInstitutionRequest;
use App\Http\Requests\UpdateInstitutionRequest;
use App\Http\Resources\InstitutionCollection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;


class InstitutionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        return Institution::all();
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
    public function store(StoreInstitutionRequest $request)
    {
        //

        $institution = new Institution();
        $institution->nameInstitution = $request->nameInstitution;
        $institution->address = $request->address;
        $institution->phoneNumber = $request->phoneNumber;
        $institution->email = $request->email;
        $institution->password = Hash::make($request->password);

        $institution->save();
    }

    /**
     * Display the specified resource.
     */
    public function show($institution)
    {
        //
        return Institution::findOrFail($institution);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Institution $institution)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     *
     *
     */
    public function update(Request $request, $institution)
    {
        $institution = Institution::findOrFail($institution);

        $institution->nameInstitution = $request->nameInstitution;
        $institution->address = $request->address;
        $institution->phoneNumber = $request->phoneNumber;
        $institution->email = $request->email;
        $institution->password = Hash::make($request->password);

        $institution->save();
    }

    /*
     * Remove the specified resource from storage.
     */
    public function destroy($institution)

    {

        return Institution::destroy($institution);
        //

    }
}
