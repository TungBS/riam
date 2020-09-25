@extends('layouts.admin')
@section('content')
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>Quản lý khóa học<small>(Tổng {{$courses->total()}} khóa học)</small></h1>
    <ol class="breadcrumb">
      <li><a href="{{route('admin.index')}}"><i class="fa fa-dashboard"></i> Trang thống kê</a></li>
      <li class="active">Liệt kê khóa học</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-xs-12">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title"><a href="{{route('admin.course.create')}}" class="btn btn-success btn-sm">Thêm mới <i class="fa fa-plus"></i></a></h3>
            <div class="box-tools">
              <div class="input-group" style="width: 150px;">
                <input type="text" name="table_search" class="form-control input-sm pull-right" />
                <div class="input-group-btn">
                  <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                </div>
              </div>
            </div>
          </div><!-- /.box-header -->
          <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
              <tr>
                <th>STT</th>
                <th>Tên chương trình</th>
                <th>Hệ đào tạo</th>
                <th>Đối tượng</th>
                <th>Học phí</th>
                <th>Hình ảnh</th>
                <th>Tình trạng</th>
                <th>Ngày tạo</th>
                <th>Ngày sửa</th>
                <th>Tác vụ</th>
              </tr>
              @if($courses)
                <?php $i = 1; ?>
                @foreach($courses as $course)
                  <tr>
                    <td>{{ $i }}</td>
                    <td>{{ $course->name }}</td>
                    <td>
                      <span class="label label-info">{{ $course->type->name ?? "[N\A]" }}</span>
                    </td>
                    <td style="max-width:160px">{{ $course->requirements }}</td>
                    <td>{{ number_format($course->tuition_fees,0,',','.') }} đ</td>
                    <td><img src="{{ asset(parse_url_file($course->avatar)) }}" width="80" /></td>
                    <td>
                      @if($course->active)
                        <a href="{{ route('admin.course.active', $course->id) }}" class="label label-success">Hiện</a>
                      @else
                        <a href="{{ route('admin.course.active', $course->id) }}" class="label label-danger">Ẩn</a>
                      @endif
                    </td>
                    <td>
                      @if($course->created_at)
                        {{ $course->created_at->format("H:i:s") }}<br />
                        {{ $course->created_at->format("d/m/Y") }}
                      @endif
                    </td>
                    <td>
                      @if($course->updated_at)
                        {{ $course->updated_at->format("H:i:s") }}<br />
                        {{ $course->updated_at->format("d/m/Y") }}
                      @endif
                    </td>
                    <td>
                      <a href="{{ route('admin.course.update', $course->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Sửa</a>
                      <a href="{{ route('admin.course.delete', $course->id) }}" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i> Xóa</a>
                    </td>
                  </tr>
                  <?php $i++; ?>
                @endforeach
              @endif
            </table>
          </div><!-- /.box-body -->
          <div class="box-footer clearfix">
            <ul class="pagination pagination-sm no-margin pull-right">
              {!! $courses->links() !!}
            </ul>
          </div>
        </div><!-- /.box -->
      </div>
    </div>
  </section><!-- /.content -->
@stop