<?php

namespace App\Http\Controllers;

use App\Models\Lesson;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreLessonRequest;
use App\Http\Requests\UpdateLessonRequest;

class LessonController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        return Lesson::all();
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
    public function store(StoreLessonRequest $request)
    {
        //
        return Lesson::create($request);
    }

    /**
     * Display the specified resource.
     */
    public function show(Lesson $lesson)
    {
        //
        return Lesson::findOrFail($lesson);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Lesson $lesson)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateLessonRequest $request, Lesson $lesson)
    {
        //
        $lesson = Lesson::findOrFail($lesson);
        $lesson->update($request::all());
        return $lesson;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Lesson $lesson)
    {
        //
        return Lesson::destroy($lesson);
    }
}
