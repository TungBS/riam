@extends('layouts.guest')

@section('content')
<div id="content">
	<section class="slider">
		<div class="slider-carousel" data-appear-animation="fadeIn">	
			<div class="items">
				<div class="item item-1">
					<img class="main lazyOwl" data-src="{{ asset('public/guest/images/temp/slider/riam-1.jpg') }}" alt="" />
				</div>
				<div class="item item-2">
					<img class="main lazyOwl" data-src="{{ asset('public/guest/images/temp/slider/riam-2.jpg') }}" alt="" />
				</div>
				<div class="item item-3">
					<img class="main lazyOwl" data-src="{{ asset('public/guest/images/temp/slider/riam-3.jpg') }}" alt="" />
				</div>
			</div>
		</div>
	</section>
	
	<section class="benefits wrapper">
	</section>
	
	<section class="portfolio wrapper">
		<div class="grid">
			<header class="unit hgroup whole">
				<h2>Viện Nghiên Cứu Quản Lý Hành Chính</h2>
				<h5>TUYỂN SINH TRUNG CẤP, CAO ĐẲNG, LIÊN THÔNG ĐẠI HỌC VĂN BẰNG 2 VỪA HỌC VỪA LÀM</h5>
			</header>
			
			<div class="unit">
				<div id="home-portfolio" class="portfolio-items">
					<div class="item w2 wordpress-themes illustrations">
						<a href="javascript:;"><img src="{{ asset('public/guest/images/temp/su-pham-mam-non.jpg') }}" width="336" alt="" /></a>
						<div class="overlay" style="text-align:center;">
							<a href="javascript:;" class="button" style="margin-top:100px;width:200px">Đại học Sư phạm Mầm non</a>
						</div>
					</div>
					
					<div class="item w2 wordpress-themes illustrations">
						<a href="javascript:;"><img src="{{ asset('public/guest/images/temp/su-pham-tieu-hoc.jpg') }}" width="336" alt="" /></a>
						<div class="overlay" style="text-align:center;">
							<a href="javascript:;" class="button" style="margin-top:70px;width:200px">Đại học Sư phạm Tiểu học</a>
						</div>
					</div>
					
					<div class="item w2 wordpress-themes illustrations">
						<a href="javascript:;"><img src="{{ asset('public/guest/images/temp/dai-hoc-dieu-duong.jpg') }}" width="336" alt="" /></a>
						<div class="overlay" style="text-align:center;">
							<a href="javascript:;" class="button" style="margin-top:100px;width:180px">Đại học Điều dưỡng</a>
						</div>
					</div>

					<div class="item w2 wordpress-themes illustrations">
						<a href="javascript:;"><img src="{{ asset('public/guest/images/temp/van-thu-luu-tru.jpg') }}" width="336" alt="" /></a>
						<div class="overlay" style="text-align:center;">
							<a href="javascript:;" class="button" style="margin-top:100px;width:200px">Trung cấp Văn thư Lưu trữ</a>
						</div>
					</div>

					<div class="item w2 wordpress-themes illustrations">
						<a href="javascript:;"><img src="{{ asset('public/guest/images/temp/dai-hoc-cong-nghe-thong-tin.jpg') }}" width="336" alt="" /></a>
						<div class="overlay" style="text-align:center;">
							<a href="javascript:;" class="button" style="margin-top:100px;width:200px">Đại học <br />Công nghệ Thông tin</a>
						</div>
					</div>

					<div class="item w2 wordpress-themes illustrations">
						<a href="javascript:;"><img src="{{ asset('public/guest/images/temp/trung-cap-duoc.jpg') }}" width="336" alt="" /></a>
						<div class="overlay" style="text-align:center;">
							<a href="javascript:;" class="button" style="margin-top:100px;width:180px">Trung cấp Dược</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="services wrapper">
		<div class="grid">
			<div class="unit home-services two-thirds">
				<header class="hgroup">
					<h2>Tuyển sinh - Đào tạo</h2>
				</header>
				<div class="liquid-slider content-slider" id="some-tabs">
					@foreach($types as $type)
						<?php 
							$i = 1;
							$coursesByType = \DB::table('courses')->where('type_id', $type->id)->get();
						?>
						<div>
							<h2 class="title">{{$type->name}}</h2>
							<table>
								<tr>
									<th>Tên chương trình</th>
									<th>Đối tượng</th>
									<th>Thời gian đào tạo</th>
								</tr>
								@foreach($coursesByType as $cour)
									<tr class="{{(($i % 2) != 0) ? 'even': 'odd'}}">
										<td>{{$cour->name}}</td>
										<td>{{$cour->requirements}}</td>
										<td>{{$cour->training_time}}</td>
									</tr>
									<?php $i++; ?>
								@endforeach
							</table>
						</div>
					@endforeach
				</div>
			</div>
			
			<div class="unit home-skills one-third">
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
			</div>
		</div>
	</section>
	
	<section class="benefits wrapper">
		<div class="grid">
			<header class="hgroup">
				<h2>Ngành đào tạo</h2>
			</header>
			@if($courses)
			@foreach($courses as $course)
				<div class="unit one-quarter">
					<a class="thumbnail" href="{{route('get.course.detail', $course->slug.'-'.$course->id)}}">
						<img src="{{asset(parse_url_file($course->avatar))}}" width="295" height="295" alt="{{$course->name}}" />
					</a>
				</div>
			@endforeach
			@endif
		</div>
	</section>
		
	<section class="benefits wrapper">
		<div class="grid">
			<div class="unit one-quarter">
				<h4><a href="javascript:;">Đăng ký Ngành học</a></h4>
				<form action="{{route('post.shopping.pay')}}" method="post">
					@csrf
					<fieldset>
						<p><input type="text" name="tst_name" id="name" required="" value="" placeholder="Họ tên" /></p>
						<p><input type="number" name="tst_phone" id="phone" required="" value="" placeholder="Số điện thoại" /></p>
						<p><input type="email" name="tst_email" id="email" required="" value="" placeholder="Địa chỉ email" /></p>
						<p><input type="text" name="" value="" placeholder="Tên ngành đăng ký" /></p>
						<p>
							<select>
								<option value="">Hệ đào tạo</option>
								@foreach($types as $type)
									<option value="{{$type->id}}">{{$type->name}}</option>
								@endforeach
							</select>
						</p>
						<p><textarea name="tst_note" id="note" placeholder="Ghi chú"></textarea></p>

						<p><input type="submit" value="Đăng ký" /></p>
					</fieldset>
				</form>
			</div>
			
			<div class="unit three-quarters">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.6685862104655!2d106.67815611480131!3d10.836654392280701!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175285380769b0d%3A0x253eb6250dc889f3!2zMTgxIEzDqiDEkOG7qWMgVGjhu40sIFBoxrDhu51uZyA1LCBHw7IgVuG6pXAsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaA!5e0!3m2!1sen!2s!4v1600932162249!5m2!1sen!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			</div>
		</div>
	</section>
</div>
@stop