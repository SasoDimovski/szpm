<?php

namespace Modules\Documents\Dto;

use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;

class DocumentsDto
{
    public int $id;
    public int $id_user_logged;
    public int $id_module;
    public ?string $id_record;
    public ?string $name;
    public ?UploadedFile $file = null;
    public ?string $type;
    public ?string $path;
    public ?string $size;
    public ?string $comment;
    public int $public;
    public int $active;

    public static function fromRequest(Request $request): self
    {
        $dto = new self();
        $dto->id = (int)$request->input('id');
        $dto->id_user_logged = (int)$request->input('id_user_logged');
        $dto->id_module = (int)$request->input('id_module');
        $dto->id_record = (int)$request->input('id_record');
        $dto->name = $request->input('name');
        $dto->file  = $request->file('file ');
        $dto->type = $request->input('type');
        $dto->path = $request->input('path');
        $dto->size = $request->input('size');
        $dto->comment = $request->input('comment');
        $dto->public = (int)$request->input('public');
        $dto->active = (int)$request->input('active');
        return $dto;
    }
}

