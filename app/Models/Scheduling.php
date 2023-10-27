<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Scheduling extends Model
{
    use HasFactory;
    protected $fillable =
    [
        'date',
        'confirmationCode',
        'client_id',
        'lesson_id',
        'hour'
    ];
    public function client()
    {
        return $this->belongsTo(Client::class);
    }
    public function lesson()
    {
        return $this->belongsTo(Lesson::class);
    }
}
