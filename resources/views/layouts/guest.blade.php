<!DOCTYPE html>
<html class="no-js" lang="en-US">
<head>
	<meta charset="UTF-8" />
	<title>Galaxy Theme</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
	<link rel="icon" href="{{ asset('public/guest/images/favicon/logo-icon.png') }}" />
	<link rel="stylesheet" title="blue" href="{{ asset('public/guest/css/skin-dark-green.css') }}" type="text/css" media="all" />
	
	<link rel="stylesheet" id="font-awesome-css" href="{{ asset('public/guest/css/libs/font-awesome/css/font-awesome.min.css') }}" type="text/css" media="all" />
	<link rel="stylesheet" id="magnific-popup-css" href="{{ asset('public/guest/css/libs/magnific-popup.css') }}" type="text/css" media="all" />
	<link rel="stylesheet" id="animate-css" href="{{ asset('public/guest/css/libs/animate.min.css') }}" type="text/css" media="all" />
	<link rel="stylesheet" href="{{ asset('public/guest/css/libs/liquid-slider.css') }}" type="text/css" media="all" />
	<link rel="stylesheet" href="{{ asset('public/guest/css/libs/owl.carousel.css') }}" type="text/css" media="all" />
	<link href="http://fonts.googleapis.com/css?family=Bitter|Roboto:400,300,700|Roboto+Slab:300,400,700|Pacifico" rel="stylesheet" type="text/css" />
	<script src="{{ asset('public/guest/js/libs/jquery-1.10.2.min.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/retina-1.1.0.min.js') }}"></script>
	<link rel="stylesheet" href="http://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">
	<!-- Các file css thêm -->
	@yield('css')
</head>

<body class="widgetized-footer {{ isset($bodyClass) ? $bodyClass : 'template-home' }}">
	<div class="primary-wrapper">

		@include('guest._components.header')

		@yield('content')
		
		@include('guest._components.footer')

	</div>
	<script src="js/libs/nprogress.js"></script>
	<script>
		NProgress.start();
	</script>
	<script src="{{ asset('public/guest/js/libs/jquery.tipsy.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/jquery.ui.totop.min.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/jquery.fs.scroller.min.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/jquery.fs.selecter.min.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/jquery.magnific-popup.min.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/jquery.easing.1.3.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/jquery.liquid-slider.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/jquery.touchSwipe.min.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/jquery.waitforimages.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/jquery.icheck.min.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/jquery.bxslider.min.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/owl.carousel.min.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/jquery.appear.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/jquery-ui-1.10.3.custom.min.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/masonry.pkgd.min.js') }}"></script>
	<script src="{{ asset('public/guest/js/libs/idangerous.swiper-2.4.min.js') }}"></script>
	<script src="{{ asset('public/guest/js/front.js') }}"></script>
	<!-- Các file js thêm -->
	<script src="http://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
    {!! Toastr::message() !!}
	@yield('script')
</body>
</html>