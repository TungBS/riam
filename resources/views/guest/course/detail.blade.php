@extends('layouts.guest')

@section('content')
	<div id="content" class="wrapper">
		<div class="grid">
			<section class="unit three-quarters">
				<article class="post">
					<header class="post-header">
						<h1 class="post-title">{{$course->name}}</h1>
						<div class="breadcrumbs"><a href="{{route('get.home')}}">Trang chủ</a> <i class="delimeter"></i> {{$course->name}}</div>
					</header>
					
					<div class="ib post-date">
						<div class="ib day">19</div>
						<div class="month">Tháng 9</div>
						<div class="year">2020</div>
					</div>
					
					<div class="ib post-content">						
						<div class="post-text">
							{!! $course->content !!}
						</div>
					</div>
				</article>
			</section>
			
			<aside class="unit one-quarter sidebar sidebar-right">
				<div class="widget widget-popular-posts">
					<h4 class="widget-title">Bài viết mới</h4>

					<div class="item">
						<div class="thumbnail">
							<a href="javascript:;"><img src="{{ asset('public/guest/images/posts/post-1.jpg') }}" width="80" height="80" alt="" /></a>
						</div>
						
						<div class="text">
							<a href="javascript:;">Quy định mới: Học sinh được phép sử dụng điện thoại trong lớp!</a>
							<div class="date">15 June 2013</div>
						</div>
					</div>
					
					<div class="item">
						<div class="thumbnail">
							<a href="javascript:;"><img src="{{ asset('public/guest/images/temp/sidebar_post_2.jpg') }}" width="70" height="70" alt="" /></a>
						</div>
						
						<div class="text">
							<a href="javascript:;">Thông báo lịch học và thi lớp liên thông đại học mầm non Hải Phòng</a>
							<div class="date">15 June 2013</div>
						</div>
					</div>
					
					<div class="item">
						<div class="thumbnail">
							<a href="javascript:;"><img src="{{ asset('public/guest/images/temp/sidebar_post_3.jpg') }}" width="70" height="70" alt="" /></a>
						</div>
						
						<div class="text">
							<a href="javascript:;">Quy định về xử phạm với học sinh sai phạm – Bỏ quy định đuổi học học sinh</a>
							<div class="date">15 June 2013</div>
						</div>
					</div>
					
					<div class="item">
						<div class="thumbnail">
							<a href="javascript:;"><img src="{{ asset('public/guest/images/temp/sidebar_post_4.jpg') }}" width="70" height="70" alt="" /></a>
						</div>
						
						<div class="text">
							<a href="javascript:;">Tổng hợp khóa học liên thông đại học điều dưỡng tại tphcm 2020</a>
							<div class="date">15 June 2013</div>
						</div>
					</div>
				</div>
			</aside>
		</div>
	</div>
@stop