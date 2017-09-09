<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TienIch extends Model
{
    protected $fillable = [
        'tienich_image','tienich_order','tienich_content', 'tienich_is_active','created_at','updated_at'
    ];
    protected $table = 'tienichs';
}
