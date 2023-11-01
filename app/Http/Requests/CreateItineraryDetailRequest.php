<?php

namespace App\Http\Requests;

use App\Models\ItineraryDetail;
use Illuminate\Foundation\Http\FormRequest;

class CreateItineraryDetailRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return ItineraryDetail::rules();
    }
}
