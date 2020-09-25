@extends('layouts.admin')

@section('content')
  <section class="content-header">
    <h1>Cập nhật Hệ đào tạo</h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">Forms</a></li>
      <li class="active">General Elements</li>
    </ol>
  </section>

  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-info">
          <div class="box-body">
            <form role="form" method="post" action="">
              @csrf
              <div class="form-group">
                <label>Tên từ khóa <span class="text-danger">(*)</span></label>
                <input type="text" name="name" class="form-control" value="{{ $type->name }}" />
              </div>

              <div class="box-footer">
                <button type="submit" class="btn btn-success">Lưu lại</button>
                <button type="" class="btn btn-default">Hủy</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
@stop