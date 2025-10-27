<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Year extends Model
{
    use HasFactory;

    protected $fillable = [
        'year',
        'is_current',
        'ppmp_deadline',
        'pr_deadline',
        'is_open'
    ];

    public function officeSignatories()
    {
        return $this->hasMany(CollegeOfficeUnitSignatory::class, 'year_id');
    }
}
