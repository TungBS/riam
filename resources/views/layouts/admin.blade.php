<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Viện Nghiên Cứu Quản Lý Hành Chính | Quản trị</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="{{ asset('public/admin/bootstrap/css/bootstrap.min.css') }}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('public/admin/font-awesome-4.7.0/css/font-awesome.min.css') }}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="{{ asset('public/admin/ionicons-2.0.1/css/ionicons.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('public/admin/dist/css/AdminLTE.min.css') }}">
    <link rel="stylesheet" href="{{ asset('public/admin/dist/css/skins/_all-skins.min.css') }}">

    <!-- Select2 để thêm từ khóa cho sản phẩm -->
    <link rel="stylesheet" href="{{ asset('public/admin/plugins/select2/select2.min.css') }}">
    <link rel="stylesheet" href="http://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">
    <!-- Các file css thêm -->
    @yield('css')
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="{{route('admin.index')}}" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>TQT</b></span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Trang quản trị</b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
        </nav>
      </header>

      <aside class="main-sidebar">
        <section class="sidebar">
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <ul class="sidebar-menu">
            <li class="header">THỐNG KÊ TRANG</li>
            <li>
              <a href="{{route('admin.index')}}">
                <i class="fa fa-dashboard"></i> 
                <span>Trang thống kê</span>
              </a>
            </li>
            <li>
              <a href="{{route('admin.type.index')}}">
                <i class="fa fa-database"></i>
                <span>Quản lý Hệ đào tạo</span>
                <span class="label label-primary pull-right">
                  {{\DB::table('types')->count()}}
                </span>
              </a>
            </li>
            <li>
              <a href="{{route('admin.course.index')}}">
                <i class="fa fa-cubes"></i>
                <span>Quản lý Khóa học</span>
                <span class="label label-primary pull-right">
                  {{\DB::table('courses')->count()}}
                </span>
              </a>
            </li>
            <li>
              <a href="{{route('admin.transaction.index')}}">
                <i class="fa fa-database"></i>
                <span>Quản lý Đơn hàng</span>
                <span class="label label-primary pull-right">
                  {{\DB::table('transactions')->count()}}
                </span>
              </a>
            </li>
            <li>
              <a href="{{route('admin.contact.index')}}">
                <i class="fa fa-phone"></i>
                <span>Quản lý Liên hệ</span>
                <span class="label label-primary pull-right">
                  {{\DB::table('contacts')->count()}}
                </span>
              </a>
            </li>
            <li>
              <a href="{{route('admin.menu.index')}}">
                <i class="fa fa-phone"></i>
                <span>Danh mục bài viết</span>
                <span class="label label-primary pull-right">
                  {{\DB::table('menus')->count()}}
                </span>
              </a>
            </li>
            <li>
              <a href="{{route('admin.article.index')}}">
                <i class="fa fa-phone"></i>
                <span>Bài viết</span>
                <span class="label label-primary pull-right">
                  {{\DB::table('articles')->count()}}
                </span>
              </a>
            </li>
          </ul>
        </section>
      </aside>

      <div class="content-wrapper">
        @yield('content')
      </div>

      <footer class="main-footer">
        <strong>
          Copyright © 2018 Viện Nghiên Cứu Quản Lý Hành Chính | 181, Lê Đức Thọ, phường 17, quận Gò Vấp, TP.HCM
        </strong>
      </footer>

      <div class="control-sidebar-bg"></div>
    </div>

    <!-- jQuery 2.1.4 -->
    <script src="{{ asset('public/admin/plugins/jQuery/jQuery-2.1.4.min.js') }}"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="{{ asset('public/admin/bootstrap/js/bootstrap.min.js') }}"></script>
    <!-- SlimScroll -->
    <script src="{{ asset('public/admin/plugins/slimScroll/jquery.slimscroll.min.js') }}"></script>
    <!-- FastClick -->
    <script src="{{ asset('public/admin/plugins/fastclick/fastclick.min.js') }}"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset('public/admin/dist/js/app.min.js') }}"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="{{ asset('public/admin/dist/js/demo.js') }}"></script>
    <!-- Select2 cho thêm từ khóa -->
    <script src="{{ asset('public/admin/plugins/select2/select2.min.js') }}"></script>

    <script type="text/javascript">
      $(function() {
        // Run select2
        if ($(".js-select2-keyword").length > 0) {
          $(".js-select2-keyword").select2({
            placeholder: "__Chọn từ khóa__",
            maximumSelectionLength: 3,
          });
        }

        // View hình ảnh
        $(".js-upload").change(function(){
          let $this = $(this);
          if (this.files && this.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e){
              $this.parents('.block-images').find('img').attr('src', e.target.result);
            };
            reader.readAsDataURL(this.files[0]);
          }
        });

        // Xử lý phần Đơn hàng 
        $(".js-view-transaction").click(function (event) {
          event.preventDefault();
          let $this = $(this);
          let URL = $this.attr('href');

          $.ajax({
            url: URL,
          }).done(function(results){
            $("#modal-view-transaction .content").html(results.html);
            $("#modal-view-transaction").modal({
              show: true,
            });
          });
          console.log("111");
        });

        $('body').on("click", ".js-delete-order", function(event){
          event.preventDefault();
          let URL = $(this).attr('href');
          let $this = $(this);
          $.ajax({
            url: URL,
          }).done(function(results){
            if (results.code == 200) {
              $this.parents("tr").remove();
            }
          }); 
        });
      });
    </script>

    <!-- Các file js thêm -->
    @yield('script')
  </body>
</html>
