<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use App\Traits\UploadImage;

class AboutUs extends Model
{
    use HasFactory, Translatable , UploadImage;
    protected $fillable          =  [ 'photo','title','description' ];
    public $translatedAttributes =  [ 'title', 'description' ];

    public static function rules() {
        $langs = LaravelLocalization::getSupportedLanguagesKeys();
        foreach( $langs as $lang ) {
            $rules[$lang . '.title']        = 'required|string|min:5';
            $rules[$lang . '.description']  = 'required|string|min:5|max:255';
        }
        // $rules['photo']   = 'required|file|mimes:jpg,png,mp4,jpeg,avi';

        return $rules;
    }

    public function setPhotoAttribute($file) {
        $name = $this->ulpoadImages($file , 'Admins');
        $this->attributes['photo'] = $name;
    }

    public function getPhotoAttribute() {
        return asset('images/'.$this->attributes['photo']);
    }

}
