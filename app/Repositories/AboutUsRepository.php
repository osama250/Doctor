<?php

namespace App\Repositories;

use App\Models\AboutUs;
use App\Repositories\BaseRepository;

class AboutUsRepository extends BaseRepository
{
    protected $fieldSearchable = [
        'photo'
    ];

    public function getFieldsSearchable(): array
    {
        return $this->fieldSearchable;
    }

    public function model(): string
    {
        return AboutUs::class;
    }
}
