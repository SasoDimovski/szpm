@extends('public/master')
@php
    $path_upload = 'uploads/records/';
    $id_association = request()->segment(3);
@endphp
@section('head')
    <title>СЗПМ - Сојуз на здруженија на пензионерите на Македонија</title>

    <meta name="keywords" content="СЗПМ" />
    <meta name="description" content="СЗПМ">
    <meta name="author" content="medium3.mk">
@endsection
<!--=======+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=========-->

@section('content')
    <!--=======+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=========-->
    <div role="main" class="main">


        <div class="container py-4">

            <div class="row">
                <div class="col-lg-8">
                    <div class="blog-posts">
                        @if($record)
                            <h4>{{ $record->module->title }}</h4>
                            <p>{{ $record->subtitle }}</p>
                            <h3>{{ $record->title }}</h3>
                            @if($record->picture)
                                @if ($record->created_at < \Carbon\Carbon::create(2025, 9, 10))
                                <img alt="{{ $record->title }}" src="{{asset('vesnik/images/info/' .  $record->picture)}}">
                                @else
                                <img alt="{{ $record->title }}" src="{{asset($path_upload . $record->id . '/' .  $record->picture)}}">
                                @endif
                            @endif
                            {!! html_entity_decode($record->text, ENT_QUOTES, 'UTF-8') !!}

    @if(count($documents) > 0)
        Документи:
        <div class="card-body p-0 scrollmenu">
            <table class="table">
                <thead>
                <tr>
                    <th>{{__('records.edit.document.id')}}</th>
                    <th>{{__('records.edit.document.name')}}</th>
                    <th>{{__('records.edit.document.file')}}</th>

                </tr>
                </thead>
                <tbody>
                @foreach($documents as $document)

                    @php

                        $document_id = $document->id ?? '';
                        $document_name = $document->name ?? '';
                        $document_file = $document->file ?? '';
                        $document_active = $document->active ?? '';
                        $document_comment = $document->comment ?? '';
                        $extension = strtolower(pathinfo($document_file, PATHINFO_EXTENSION));
                        $styleMap = [
                            'pdf' => 'fa-file-pdf',
                            'doc' => 'fa-file-word',
                            'docx' => 'fa-file-word',
                            'xls' => 'fa-file-excel',
                            'xlsx' => 'fa-file-excel',
                        ];
                        $style = $styleMap[$extension] ?? 'fa-file';
                    @endphp
                    <tr>
                        <td>{{ $document_id}}</td>
                        <td title="{{ $document_name}}">
                            {{
                                 strlen($document_name) > 40
                                     ? (strpos($document_name, ' ', 40) !== false
                                         ? substr($document_name, 0, strpos($document_name, ' ', 40)) . '...'
                                         : substr($document_name, 0, 40) . '...')
                                     : $document_name
                             }}
                        </td>
                        <td>
                            <a href="{{ asset($path_upload. $record->id.'/'. $document_file) }}"
                               class="btn-link text-secondary"
                               target="{{ $extension === 'pdf' ? '_blank' : '_self' }}">
                                <i class="far fa-fw {{ $style }}"></i> {{ $document->file }}
                            </a>
                        </td>


                @endforeach
                </tbody>
            </table>

        </div>
    @endif

@else
    <p><strong>Нема запис</strong></p>
@endif

</div>
    </div>
    <div class="col-lg-4">
        @include('public._desna_kolona')
    </div>

    </div>
    </div>
    </div>
    @endsection