<?php

namespace Modules\Records\Dto;

use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;

class RecordsDto
{
    public int $id;
    public ?int $id_user_logged;
    public ?int $id_user;
    public ?int $id_module;
    public ?int $id_association;
    public string $title;
    public ?string $slug;
    public ?string $subtitle;
    public ?string $intro;
    public ?string $text;
    public ?UploadedFile $picture = null;
    public ?int $main;
    public ?int $cover;
    public int $active;

    public static function fromRequest(Request $request): self
    {
        $dto = new self();
        $dto->id = (int)$request->input('id');
        $dto->id_user = (int)$request->input('id_user');
        $dto->id_user_logged = (int)$request->input('id_user_logged');
        $dto->id_module = (int)$request->input('id_module');
        $dto->id_association = (int)$request->input('id_association');
        $dto->title = $request->input('title');
        $dto->slug = $request->input('slug');
        $dto->subtitle = $request->input('subtitle');
        $dto->intro = $request->input('intro');
        $dto->text = $request->input('text');
        $dto->picture = $request->file('picture');
        $dto->main = (int)$request->input('main');
        $dto->cover = (int)$request->input('cover');
        $dto->active = (int)$request->input('active');

        return $dto;
    }
}

