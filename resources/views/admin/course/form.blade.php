<form role="form" action="" enctype="multipart/form-data" method="post">
  @csrf
  <div class="col-md-9">
    <div class="box box-warning">
      <div class="box-header with-border">
        <h3 class="box-title">Thông tin khóa học</h3>
      </div>

      <div class="box-body">
        <div class="form-group">
          <label for="name">Tên chương trình</label>
          <input type="text" name="name" value="{{$course->name ?? old('name')}}" class="form-control" />
        </div>

        <div class="row form-group">
          <div class="col-xs-3 form-group">
            <label for="tuition_fees">Học phí</label>
            <input type="text" name="tuition_fees" value="{{$course->tuition_fees ?? old('tuition_fees')}}" class="form-control" />
          </div>
          <div class="col-xs-3 form-group">
            <label for="type_id">Hệ đào tạo</label>
            <select class="form-control select2" name="type_id" style="width: 100%;">
              <option value="">__Chọn hệ đào tạo__</option>
              @foreach($types as $type)
                <option value="{{$type->id}}" {{ (($course->type_id ?? 0) == $type->id) ? "selected='selected'" : "" }}>
                  {{$type->name}}
                </option>
              @endforeach
            </select>
          </div>
          <div class="col-xs-6 form-group">
            <label for="training_time">Thời gian đào tạo</label>
            <input type="text" name="training_time" value="{{$course->training_time ?? old('training_time')}}" class="form-control" />
          </div>
        </div>

        <div class="form-group">
          <label for="requirements">Đối tượng</label>
          <input type="text" name="requirements" value="{{$course->requirements ?? old('requirements')}}" class="form-control" />
        </div>

        <div class="form-group">
          <label>Mô tả ngắn</label>
          <textarea class="form-control" name="description" rows="5">
            {{$course->description ?? old('description')}}
          </textarea>
        </div>

        <div class="form-group">
          <label>Mô tả khóa học</label>
          <textarea class="form-control" name="content" rows="8">
            {{$course->content ?? old('content')}}
          </textarea>
        </div>
      </div>

      <div class="box-footer">
        <button type="submit" class="btn btn-success">{{isset($course)?'Cập nhật':'Thêm mới'}}</button>
        <button type="" class="btn btn-default">Hủy</button>
      </div>
    </div>
  </div>

  <div class="col-md-3">
    <div class="box box-warning">
      <div class="box-header with-border">
        <h3 class="box-title">Ảnh khóa học</h3>
      </div>

      <div class="box-body block-images">
        <div class="form-group">
          <img src="{{ isset($course) ? asset(parse_url_file($course->avatar)) : asset('public/admin/images/no-image.png') }}" onerror="this.onerror=null; this.src='/images/no-image.png';" alt="" class="img-thumbnail" style="width: 220px; height: 220px;">
        </div>
        <div style="position:relative;"> 
          <a class="btn btn-primary" href="javascript:;"> 
            Ảnh đại diện
            <input type="file" style="position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:&quot;progid:DXImageTransform.Microsoft.Alpha(Opacity=0)&quot;;opacity:0;background-color:transparent;color:transparent;" name="avatar" size="40" class="js-upload"> 
          </a> &nbsp; 
          <span class="label label-info" id="upload-file-info"></span> 
        </div>
      </div>

    </div>
  </div>
</form>

<script type="text/javascript" src="{{ asset('public/admin/ckeditor/ckeditor.js') }}"></script>
<script type="text/javascript">
  var options = {
    filebrowserUploadUrl: "{{ route('ckeditor.upload', ['_token' => csrf_token()]) }}",
    filebrowserUploadMethod: 'form',
  };
  CKEDITOR.replace('content', options);
</script>