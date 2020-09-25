@extends('layouts.admin')

@section('content')
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>Quản lý Hệ đào tạo<small>(Tổng {{$types->total()}} Hệ đào tạo)</small></h1>
          <ol class="breadcrumb">
            <li><a href="{{route('admin.index')}}"><i class="fa fa-dashboard"></i> Trang thống kê</a></li>
            <li class="active">Liệt kê Hệ đào tạo</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title"><a href="{{route('admin.type.create')}}" class="btn btn-success btn-sm">Thêm mới <i class="fa fa-plus"></i></a></h3>
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
                      <th>Hệ đào tạo</th>
                      <th>Đường dẫn</th>
                      <th>Tình trạng</th>
                      <th>Ngày tạo</th>
                      <th>Ngày sửa</th>
                      <th>Tác vụ</th>
                    </tr>
                    @if($types)
                      <?php $i = 1; ?>
                      @foreach($types as $type)
                        <tr>
                          <td>{{ $i }}</td>
                          <td>{{ $type->name }}</td>
                          <td>{{ $type->slug }}</td>
                          <td>
                            @if($type->status)
                              <a href="{{ route('admin.type.active', $type->id) }}" class="label label-success">Hiện</a>
                            @else
                              <a href="{{ route('admin.type.active', $type->id) }}" class="label label-danger">Ẩn</a>
                            @endif
                          </td>
                          <td>
                            @if($type->created_at)
                              Vào lúc {{ $type->created_at->format("H:i:s") }}<br />
                              Ngày {{ $type->created_at->format("d/m/Y") }}
                            @endif
                          </td>
                          <td>
                            @if($type->updated_at)
                              Vào lúc {{ $type->updated_at->format("H:i:s") }}<br />
                              Ngày {{ $type->updated_at->format("d/m/Y") }}
                            @endif
                          </td>
                          <td>
                            <a href="{{ route('admin.type.update', $type->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Sửa</a>
                            <a href="{{ route('admin.type.delete', $type->id) }}" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i> Xóa</a>
                          </td>
                        </tr>
                        <?php $i++; ?>
                      @endforeach
                    @endif
                  </table>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                  <ul class="pagination pagination-sm no-margin pull-right">
                    {!! $types->links() !!}
                  </ul>
                </div>
              </div><!-- /.box -->
            </div>
          </div>
        </section><!-- /.content -->
@stop