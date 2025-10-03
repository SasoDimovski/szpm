<?php

namespace Modules\Associations\Dto;

use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;

class AssociationsDto
{
    public int $id;
    public int $active;
    public ?string $name;
    public ?string $phone;
    public ?string $link;


    public static function fromRequest(Request $request): self
    {
        $dto = new self();
        $dto->id = (int)$request->input('id');
        $dto->active = (int)$request->input('active');
        $dto->name = $request->input('name');
        $dto->phone = $request->input('phone');
        $dto->link = $request->input('link');



        return $dto;
    }
}

