<!-- start header -->
<header id="header" data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': false, 'stickyStartAt': 108, 'stickySetTop': '-108px', 'stickyChangeLogo': true}">
    <div class="header-body border-color-primary border-top-0 box-shadow-none">
        <div class="header-container container z-index-2">
            <div class="header-row">
                <div class="header-column logo-margin">
                    <div class="header-row">
                        <div class="header-logo header-logo-sticky-change szpm">
                            <div class="logo_szpm">СЗПМ</div>
                        </div>
                        <a href="{{ url('static/9/' . $id_association . '/za-nas') }}"><img src="{{ url('app_public/img/associations/' . $id_association . '.png') }}" class="logo-association" alt="logo"></a>
                    </div>
                </div>

                <div class="header-column ms-3">
                    <div class="header-row">
                        <div class="ime-szpm">Сојуз на здруженија на пензионерите на Македонија<div class="adresa-szpm ime-szpm">www.szpm.org.mk</div></div>

                    </div>
                </div>

                <div class="header-column justify-content-end d-none d-lg-block szpm">
                    <div class="header-row">
                        <ul class="header-extra-info d-flex align-items-center">
                            <li class="align-items-center py-2 pe-4 d-none d-md-inline-flex">
                                <div class="header-extra-info-text py-2">
                                    <div class="feature-box feature-box-style-2 align-items-center">
                                        <div class="feature-box-icon">
                                        </div>
                                        <div class="feature-box-info ps-1">
                                            <label>&nbsp;</label>

                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="header-column justify-content-end d-none d-lg-block szpm">
                    <div class="header-row">
                        <ul class="header-extra-info d-flex align-items-center">
                            <li class="align-items-center py-2 pe-4 d-none d-md-inline-flex">
                                <div class="header-extra-info-text py-2">
                                    <div class="feature-box feature-box-style-2 align-items-center">
                                        <div class="feature-box-icon">
                                            <i class="far fa-envelope text-7 p-relative"></i>
                                        </div>
                                        <div class="feature-box-info ps-1">
                                            <label>СЗПМ</label>
                                            <strong><a href="mailto:kontakt@szpm.org.mk">kontakt@szpm.org.mk</a></strong>
                                            <label>Весник</label>
                                            <strong><a href="mailto:vesnik@szpm.org.mk">vesnik@szpm.org.mk</a></strong>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-nav-bar bg-secondary" data-sticky-header-style="{'minResolution': 991}" data-sticky-header-style-active="{'background-color': 'transparent'}" data-sticky-header-style-deactive="{'background-color': '#0088cc'}">
            <div class="container">
                <div class="header-row">
                    <div class="header-column order-2 order-lg-1">
                        <div class="header-row">
                            <div class="header-nav header-nav-stripe header-nav-divisor header-nav-force-light-text justify-content-start" data-sticky-header-style="{'minResolution': 991}" data-sticky-header-style-active="{/*'margin-left': '110px'*/}" data-sticky-header-style-deactive="{'margin-left': '0'}">
                                <div class="header-nav-main header-nav-main-square header-nav-main-effect-1 header-nav-main-sub-effect-1">
                                    <nav class="collapse">
                                        <ul class="nav nav-pills" id="mainNav">
                                            @if($id_association == 57 || !$id_association)
                                                @include('public._meni')
                                            @else
                                                @include('public._meni_association')
                                            @endif
                                        </ul>
                                    </nav>
                                </div>
                                <button class="btn header-btn-collapse-nav" data-bs-toggle="collapse" data-bs-target=".header-nav-main nav">
                                    <i class="fas fa-bars"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="header-column order-1 order-lg-2 ms-auto">
                        <div class="header-row justify-content-end">
                            <div class="header-nav-features header-nav-features-no-border w-75 w-auto-mobile d-none d-sm-flex">
                                <form class="d-flex w-100" action="{{url('search')}}" method="get">
                                    <div class="simple-search input-group w-100">
                                        <?php
                                        $value = app('request')->input('search') ? app('request')->input('search') : null;

                                        ?>
                                        <input class="form-control border-0" id="search" name="search" type="search" value="{{$value}}" placeholder="Пребарај...">
                                        <button class="btn btn-light" type="submit">
                                            <i class="fa fa-search header-nav-top-icon"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
