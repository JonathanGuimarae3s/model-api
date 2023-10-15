<?php

namespace App\Http\Controllers;

use App\Models\Scheduling;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreSchedulingRequest;
use App\Http\Requests\UpdateSchedulingRequest;

class SchedulingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        return Scheduling::all();
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
    public function store(StoreSchedulingRequest $request)
    {
        //
        return Scheduling::create($request);
    }

    /**
     * Display the specified resource.
     */
    public function show(Scheduling $scheduling)
    {
        //
        return Scheduling::findOrFail($scheduling);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Scheduling $scheduling)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateSchedulingRequest $request, Scheduling $scheduling)
    {
        //
        $scheduling = Scheduling::findOrFail($scheduling);
        $scheduling->update($request);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Scheduling $scheduling)
    {
        //
    }
}
