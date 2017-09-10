<div class="container-contact module12">
    <div class="contain-swap col-lg-12">
        <div class="col-lg-12">
            <div class="heading-text">
                <h5 class="sub-heading in">Chúng tôi sẽ phản hồi trong vòng 5 phút đến 1 giờ sau khi nhận yêu cầu của quí vị</h5>
                <h3 class="heading in">Liên Hệ Đặt Chỗ</h3>
                <hr class="heading-line in">

            </div>
        </div>
        <div class="container">
            <div class="wp-contact col-lg-8 col-lg-offset-2">

                <div class="col-lg-6 col-xs-12">
                    {{Form::text('lh_name','',array('class'=>'form-control input-text','placeholder'=>'Họ Tên'))}}
                    <i class="fa fa-exclamation-circle errorName" rel="popover" data-toggle="tooltip" data-placement="top" title="Tên Không Được Để Trống"></i>
                </div>
                <div class="col-lg-6 col-xs-12">
                    {{Form::text('lh_email','',array('class'=>'form-control input-text','placeholder'=>'Email'))}}
                    <i class="fa fa-exclamation-circle errorEmail" rel="popover" data-toggle="tooltip" data-placement="top" title="Tên Không Được Để Trống"></i>
                </div>
                <div class="col-lg-6 col-xs-12">
                    {{Form::text('lh_phone','',array('class'=>'form-control input-text','placeholder'=>'Điện Thoại'))}}
                    <i class="fa fa-exclamation-circle errorPhone" rel="popover" data-toggle="tooltip" data-placement="top" title="Tên Không Được Để Trống"></i>
                </div>
                <div class="col-lg-6 col-xs-12">
                    {{Form::text('lh_address','',array('class'=>'form-control input-text','placeholder'=>'Địa Chỉ'))}}
                </div>
                <div class="col-lg-12 col-xs-12">
                    {{Form::textarea('lh_description','',array('size' => '30x5','class'=>'form-control input-area','placeholder'=>'Thông Tin Cần Báo Giá'))}}
                </div>
                <div class="col-lg-12">
                    <button id="btnSendMail" type="button" class="btn btn-contact">GỬI THÔNG TIN<i
                                class="fa fa-spinner fa-spin fa-3x fa-fw loadingSending"></i><i class="fa fa-check-circle successSending" aria-hidden="true"></i></button>
                </div>
            </div>
        </div>

    </div>
</div>