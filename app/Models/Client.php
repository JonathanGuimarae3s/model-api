<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    use HasFactory;
    protected $fillable =
    [
        'nameClient',
        'responsible',
        'email',
        'phoneNumber',
        'age',
    ];
    public function scheduling()
    {
        return $this->hasMany(Scheduling::class);
    }
}
