<?php

namespace App\Http\Controllers;

use App\Models\Scheduling;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreSchedulingRequest;
use App\Http\Requests\UpdateSchedulingRequest;
use Illuminate\Support\Facades\DB;

class SchedulingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $schedulings = DB::table('schedulings')
            ->join('clients', 'schedulings.client_id', '=', 'clients.id')
            ->join('lessons', 'schedulings.lesson_id', '=', 'lessons.id')
            ->select('*')
            ->get();
        return $schedulings;
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


        $data = [
            'date' => $request->date,
            'confirmationCode' => $request->confirmationCode,
            'client_id' => $request->client_id,
            'lesson_id' => $request->lesson_id,
            'hour' => $request->hora,

        ];
        $scheduling = Scheduling::create($data);
    }

    /**
     * Display the specified resource.
     */
    public function show(Scheduling $scheduling)
    {
        //

        return Scheduling::findOrFail($scheduling->id);
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
