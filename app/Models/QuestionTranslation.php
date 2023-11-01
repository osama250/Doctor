<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuestionTranslation extends Model
{
    use HasFactory;

    protected $table        = 'question_translations';
    protected $primaryKey   = 'id';
    public $fillable        = [ 'question' , 'answer' ];
    public $timestamps      = false;
}
