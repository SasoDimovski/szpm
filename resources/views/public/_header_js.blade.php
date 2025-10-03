
<!-- Vendor -->
<script src="{{url('app_public/vendor/plugins/js/plugins.min.js')}}"></script>

<!-- Theme Base, Components and Settings -->
<script src="{{url('app_public/js/theme.js')}}"></script>

<!-- Theme Custom -->
<script src="{{url('app_public/js/custom.js')}}"></script>

<!-- Theme Initialization Files -->
<script src="{{url('app_public/js/theme.init.js')}}"></script>

<script>
    function MM_jumpMenu(targ,selObj,restore){ //v3.0
        eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
        if (restore) selObj.selectedIndex=0;
    }
    function setCookie(name,value,days) {
        var expires = "";
        if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days*24*60*60*1000));
            expires = "; expires=" + date.toUTCString();
        }
        document.cookie = name + "=" + (value || "")  + expires + "; path=/";
    }
    function getCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for(var i=0;i < ca.length;i++) {
            var c = ca[i];
            while (c.charAt(0)==' ') c = c.substring(1,c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
        }
        return null;
    }

    function eraseCookie(name) {
        document.cookie = name +'=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
    }

    function cookieConsent() {
        if (!getCookie('allowCookies')) {
            $('.toast').show();
            //alert('nema');
        }
    }

    $('#btnDeny').click(()=>{
        eraseCookie('allowCookies')
        $('.toast').hide();
    })

    $('#btnAccept').click(()=>{
        setCookie('allowCookies','1',7)
        $('.toast').hide();
    })

    // load
    cookieConsent()

    // for demo / testing only
    $('#btnReset').click(()=>{
        // clear cookie to show toast after acceptance
        eraseCookie('allowCookies')
        $('.toast').show();
    })

</script>

<!-- Vendor -->
<script src="{{url('app_public/vendor/plugins/js/plugins.min.js')}}"></script>

<!-- Theme Base, Components and Settings -->
<script src="{{url('app_public/js/js/theme.js')}}"></script>

<!-- Theme Custom -->
<script src="{{url('app_public/js/js/custom.js')}}"></script>

<!-- Theme Initialization Files -->
<script src="{{url('app_public/js/js/theme.init.js')}}"></script>