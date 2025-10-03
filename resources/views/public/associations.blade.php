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
    <table class="table">
        <thead>
        <tr>
            <th style="width: 40%;">Здружение</th>
            <th style="width: 40%;">Потстраница на здружението</th>
            <th style="width: 20%;">Телефон</th>
        </tr>
        </thead>
        <tbody>
        @foreach($associations as $association)

                   @if($association->link && $association->id!=57) {{-- da ne go pokaze SZPM=57--}}
                        <tr>
                            <td><a href="static/9/{{ $association->id }}/{{ $association->link }}">{{ $association->name }}</a></td>
                            <td><a href="static/9/{{ $association->id }}/{{ $association->link }}">повеќе информации</a></td>
                            <td>{{ $association->phone }}</td>
                        </tr>
                    @elseif($association->id!=57)
                        <tr>
                            <td>{{ $association->name }}</td>
                            <td></td>
                            <td>{{ $association->phone }}</td>
                    @endif
        @endforeach
        </tbody>
    </table>
                    </div>
                </div>

                <div class="col-lg-4">
                    @include('public._desna_kolona')
                </div>
            </div>
        </div>
    </div>
@endsection