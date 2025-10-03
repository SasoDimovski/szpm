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
@include('public.function-highlight-search')
@section('content')
    <!--=======+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=========-->
    <div role="main" class="main">


        <div class="container py-4">

            <div class="row">
                <div class="col-lg-8">
                    <div class="blog-posts">

@if(count($records) > 0)

        @foreach($records as $record)
                                <article class="post post-medium">
                                    <div class="row mb-3">
                                        <div class="col-lg-12">
                                          {{$record->association->name}}
                                            <div class="post-content">
                                                <div class="post-image slika_vest">

                                                        <a href="{{ url('record/'.$record->id_module.'/'.$record->id_association.'/'.$record->id.'/'.$record->slug) }}">
                                                        @if($record->picture)
                                                            @if ($record->created_at < \Carbon\Carbon::create(2025, 10, 10))
                                                                <img src="{{asset('vesnik/images/info/' .  $record->picture)}}" class="img-fluid img-thumbnail img-thumbnail-no-borders rounded-10" alt="{{ $record->title }}" />
                                                            @else
                                                                <img src="{{asset($path_upload . $record->id . '/' .  $record->picture)}}" class="img-fluid img-thumbnail img-thumbnail-no-borders rounded-10" alt="{{ $record->title }}" />
                                                            @endif
                                                        @endif
                                                    </a>
                                                </div>
                                                <p>{!! highlightSearch($record->subtitle, 'search', 'background-color: #BD362F; color: #fff') !!}</p>
                                                <h2 class="font-weight-semibold pt-4 pt-lg-0 text-4 line-height-2 mb-2"><a href="{{ url('record/'.$record->id_module.'/'.$record->id_association.'/'.$record->id.'/'.$record->slug) }}">{{ $record->title }}
                                                    </a></h2>
                                                <p class="mb-0">{!! highlightSearch($record->intro, 'search', 'background-color: #BD362F; color: #fff') !!}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="post-meta">
                                                @if($record->id_module!=7 && $record->id_module!=9 && $record->id_module!=25 && $record->id_module!=11 )
                                                    <span><i class="far fa-calendar-alt"></i> {{ $record->created_at->format('d.m.Y') }} </span>
                                                @endif
                                                <span class="d-block d-sm-inline-block float-sm-end mt-3 mt-sm-0"><a href="{{ url('record/'.$record->id_module.'/'.$record->id_association.'/'.$record->id.'/'.$record->slug) }}" class="btn btn-xs btn-light text-1 text-uppercase">повеќе</a></span>
                                            </div>
                                        </div>
                                    </div>
                                </article>
        @endforeach

@else
    нема записи
@endif

    <div class="col-sm-6 col-md-6">
        <div class="pagination pagination-sm float-right">
            {{ $records->withQueryString()->links('pagination::bootstrap-4')  }}
        </div>

    </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    @include('public._desna_kolona')
                </div>

            </div>
        </div>
    </div>
@endsection
