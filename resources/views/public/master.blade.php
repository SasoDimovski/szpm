<!DOCTYPE html>
<html lang="mk">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    @yield('head')
    <!-- Favicons -->
    @include('public._header_css')
    <!-- Google tag (gtag.js)
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-5756323-17"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-5756323-17');
    </script>-->
</head>
<body data-plugin-page-transition>
<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.1';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

<div class="body">
@include('public._header')
@yield('content')

<!-- ./wrapper -->
@include('public._footer')
</div>
@include('public._header_js')


</body>
</html>
