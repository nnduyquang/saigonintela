<div id="lien-he" class="col-md-12">
    <div class="empty-space-32"></div>
    <div class="col-md-6">
        <div class="lh-top">
                <span class="lh-span-dash">
                    <span class="line"></span>
                </span>
            <h4>LIÊN HỆ TNR THE GOLDVIEW</h4>
            <span class="lh-span-dash">
                    <span class="line"></span>
                </span>
        </div>
        <div class="empty-space-32"></div>
        <p class="lh-p-1">Quí khách vui lòng nhập chính xác thông tin vào form liên hệ bên cạnh để chúng tôi có thể tư vấn tốt nhất.</p>
        <p class="lh-p-2" style="text-align: center;">—–oOo—–</p>
        <p class="lh-p-3" style="text-align: center;">
            @foreach($posts as $key=>$post)
                @if($post->name=='trangchu-contents-lh')
                    {!! $post->content !!}
                @endif
            @endforeach
        </p>
    </div>
    <div class="col-md-6">
        <p class="lh-p-4">Chúng tôi sẽ phản hồi trong vòng 5 phút đến 1 giờ sau khi nhận yêu cầu của quí vị</p>
        <div class="col-md-6">
            <div class="form-group">
                <label for="email">Họ Tên<span class="lh-red">*</span>:</label>
                {!! Form::text('lh_name', null, array('placeholder' => '','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="email">Email<span class="lh-red">*</span>:</label>
                {!! Form::text('lh_email', null, array('placeholder' => '','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="email">Điện Thoại<span class="lh-red">*</span>:</label>
                {!! Form::text('lh_phone', null, array('placeholder' => '','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="email">Địa Chỉ:</label>
                {!! Form::text('lh_address', null, array('placeholder' => '','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="email">Yêu Cầu Thêm:</label>
                {!! Form::textarea('lh_description',null, array('placeholder' => '','id'=>'emp-note','class' => 'form-control','rows'=>'15','style'=>'resize:none')) !!}
            </div>
        </div>
        <div class="col-md-12" style="text-align: center">
            <div class="form-group">
                <button id="btnDanhMuc" type="submit" class="btn btn-primary">Gửi</button>
            </div>
        </div>
    </div>
</div>