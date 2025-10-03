<aside class="sidebar pb-4">
    <div class="row">


        <div class="col-lg-6 col-md-4 col-sm-6 col-6 mb-4 mb-lg-10">
            <div class="p-relative">
                <div class="box-shadow-1 box-shadow-1-hover">
												<span class="thumb-info thumb-info-no-overlay thumb-info-show-hidden-content-hover">
													@if($vesnik->picture)
                                                        <span class="thumb-info-wrapper overlay-show overlay-gradient-bottom-content border-radius-0 rounded-top">
														@if($vesnik->lastDocument)
                                                                @if ($vesnik->created_at < \Carbon\Carbon::create(2025, 10, 10))
                                                                    <a href="{{ asset('vesnik/'. $vesnik->lastDocument->file) }}" target="_blank">
                                                                    <img src="{{ asset('vesnik/'. $vesnik->picture) }}" class="img-fluid" alt=""></a>
                                                                @else
                                                                    <a href="{{ asset($path_upload . $vesnik->id . '/' . $vesnik->lastDocument->file) }}" target="_blank">
                                                                    <img src="{{ asset($path_upload . $vesnik->id . '/' . $vesnik->picture) }}" class="img-fluid" alt=""></a>
                                                                @endif
{{--                                                            @else--}}
{{--                                                                <img src="{{ asset($path_upload . $vesnik->id . '/' . $vesnik->picture) }}" class="img-fluid" alt="">--}}
                                                            @endif
													    </span>
                                                    @endif
													<span class="thumb-info-content">
														<span class="thumb-info-content-inner bg-light p-2">
															<h5 class="mb-0">Пензионер плус</h5>
															<p class="line-height-7 mb-0">{{ $vesnik->title }}</p>
															<span class="thumb-info-content-inner-hidden p-absolute d-block w-100 py-1">
																<a href="{{ url('records/24/57/vesnici') }}" class="font-weight-semibold text-decoration-underline">архива на сите броеви</a>

															</span>
														</span>
													</span>
												</span>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-4 col-sm-6 col-6 mb-4 mb-lg-10">
            <div class="p-relative">
                <div class="box-shadow-1 box-shadow-1-hover">
												<span class="thumb-info thumb-info-no-overlay thumb-info-show-hidden-content-hover">
													@if($koha->picture)
                                                        <span class="thumb-info-wrapper overlay-show overlay-gradient-bottom-content border-radius-0 rounded-top">
														@if($koha->lastDocument)
                                                                @if ($koha->created_at < \Carbon\Carbon::create(2025, 10, 10))
                                                                    <a href="{{ asset('vesnik/'. $koha->lastDocument->file) }}" target="_blank">
                                                                    <img src="{{ asset('vesnik/'. $koha->picture) }}" class="img-fluid" alt=""></a>
                                                                @else
                                                                    <a href="{{ asset($path_upload . $koha->id . '/' . $koha->lastDocument->file) }}" target="_blank">
                                                                    <img src="{{ asset($path_upload . $koha->id . '/' . $koha->picture) }}" class="img-fluid" alt=""></a>
                                                                @endif
                                                            @endif
													    </span>
                                                    @endif
													<span class="thumb-info-content">
														<span class="thumb-info-content-inner bg-light p-2">
															<h5 class="mb-0">Коха</h5>
															<p class="line-height-7 mb-0">{{ $koha->title }}</p>
															<span class="thumb-info-content-inner-hidden p-absolute d-block w-100 py-1">
																<a href="{{ url('records/22/57/koha') }}" class="font-weight-semibold text-decoration-underline">архива на сите броеви</a>

															</span>
														</span>
													</span>
												</span>
                </div>
            </div>
        </div>
        @if(count($bilteni) > 0)
            @foreach($bilteni as $bilten)
                <div class="col-lg-6 col-md-4 col-sm-6 col-6 mb-4 mb-lg-10">
                    <div class="p-relative">
                        <div class="box-shadow-1 box-shadow-1-hover">
												<span class="thumb-info thumb-info-no-overlay thumb-info-show-hidden-content-hover">
													@if($bilten->picture)
                                                        <span class="thumb-info-wrapper overlay-show overlay-gradient-bottom-content border-radius-0 rounded-top">
														@if($bilten->lastDocument)
                                                                @if ($bilten->created_at < \Carbon\Carbon::create(2025, 10, 10))
                                                                    <a href="{{ asset('vesnik/'. $bilten->lastDocument->file) }}" target="_blank">
                                                                    <img src="{{ asset('vesnik/'. $bilten->picture) }}" class="img-fluid" alt=""></a>
                                                                @else
                                                                    <a href="{{ asset($path_upload . $bilten->id . '/' . $bilten->lastDocument->file) }}" target="_blank">
                                                                    <img src="{{ asset($path_upload . $bilten->id . '/' . $bilten->picture) }}" class="img-fluid" alt=""></a>
                                                                @endif
                                                            @endif
													    </span>
                                                    @endif
													<span class="thumb-info-content">
														<span class="thumb-info-content-inner bg-light p-2">
															<h5 class="mb-0">{{ $bilten->title }}</p>
</h5>

															<span class="thumb-info-content-inner-hidden p-absolute d-block w-100 py-1">
																<a href="{{ url('records/21/57/bilteni') }}" class="font-weight-semibold text-decoration-underline">архива на сите броеви</a>

															</span>
														</span>
													</span>
												</span>
                        </div>
                    </div>
                </div>
            @endforeach
        @else
            нема записи
        @endif

    </div>

    <div class="card border-0 rounded-3 bg-red mb-4">
        <div class="card-body">
            <h4 class="card-title mb-1 text-4 font-weight-bold text-light">Страници на здруженија</h4>
            <select class="btn btn-light btn-modern" name="jumpMenu" id="jumpMenu" onchange="MM_jumpMenu('parent',this,0)">
                <option>Избери здружение</option>
                @foreach($associations as $association)
                    @if($association->link && $association->id!=57)  //da ne go pokaze SZPM=57
                        <option value="{{ asset('static/9/'.$association->id.'/'.$association->link)}}">{{ $association->name }}</option>
                    @endif
                @endforeach
            </select>
        </div>
    </div>


    <div class="card border-0 bg-color-grey rounded-3">
        <div class="card-body">
            <h4 class="card-title mt-2 mb-1 text-4 font-weight-bold">Инфо</h4>
            <ul class="simple-post-list">
                @if(count($news) > 0)
                    @foreach($news as $new)
                        <li>
                            <div class="post-info">
                                <a href="{{ url('record/'.$new->id_module.'/'.$new->id_association.'/'.$new->id.'/'.$new->slug) }}">{{ $new->title }}</a>
                                <div class="post-meta">
                                    {{ $new->created_at }}
                                </div>
                            </div>
                        </li>
                    @endforeach

                @else
                    нема записи
                @endif
            </ul>
        </div>
    </div>

    <h5 class="font-weight-semi-bold pt-4">Линкови</h5>
    <ul class="nav nav-list flex-column mb-2">
        <li class="nav-item"><a class="nav-link" href="https://www.mtsp.gov.mk/">Министерство за социјална политика, демографија и млади</a></li>
        <li class="nav-item"><a class="nav-link" href="https://zdravstvo.gov.mk/">Министерство за здравство</a></li>
        <li class="nav-item"><a class="nav-link" href="https://fzo.org.mk/">Фонд за здравствено осигурување</a></li>
        <li class="nav-item"><a class="nav-link" href="http://ms.gov.mk/">Министерство за спорт</a></li>
        <li class="nav-item"><a class="nav-link" href="https://www.piom.com.mk/">Фонд на ПИОМ</a></li>
        <li class="nav-item"><a class="nav-link" href="https://ckrm.org.mk/">Црвен крст</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Дежурни амбуланти во Скопје</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Брза помош </a></li>
        <li class="nav-item"><a class="nav-link" href="#">Полиција</a></li>
    </ul>
</aside>
