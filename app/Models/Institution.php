<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Institution extends Model
{
    use HasFactory;
    protected $fillable =
    [
        'nameInstitution',
        'address',
        'phoneNumber',
        'email',
        'password',
    ];
    public function lesson()
    {
        return $this->hasMany(Lesson::class);
    }
}
