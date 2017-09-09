<div id="tien-ich" class="col-md-12">
    <div class="container">
        <div class="empty-space-32"></div>
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="ti-top">
                <span class="ti-span-dash">
                    <span class="line"></span>
                </span>
                <h4>TIỆN ÍCH 5 SAO SAIGON INTELA</h4>
                <span class="ti-span-dash">
                    <span class="line"></span>
                </span>
            </div>
        </div>
        <div class="col-md-2"></div>
        <div class="empty-space-32"></div>
    </div>
    <div class="col-md-12">
        <div class="ti-list-img">
            <div id="lightgallery">
                @foreach ($tienichs as $key => $data)
                    <a href="{{$data->tienich_image}}">
                        {{ Html::image($data->tienich_image,'',array('class'=>'ti-img')) }}
                        <div class="ti-name"><span>{{$data->tienich_content}}</span></div>
                    </a>
                @endforeach
                {{--<a href="images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg">--}}
                    {{--{{ Html::image('images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg','',array('class'=>'ti-img')) }}--}}
                    {{--<div class="ti-name"><span>Phòng Gym TNR GOLDVIEW</span></div>--}}
                {{--</a>--}}
                {{--<a href="images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg">--}}
                    {{--{{ Html::image('images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg','',array('class'=>'ti-img')) }}--}}
                    {{--<div class="ti-name"><span>Phòng Gym TNR GOLDVIEW</span></div>--}}
                {{--</a>--}}
                {{--<a href="images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg">--}}
                    {{--{{ Html::image('images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg','',array('class'=>'ti-img')) }}--}}
                    {{--<div class="ti-name"><span>Phòng Gym TNR GOLDVIEW</span></div>--}}
                {{--</a>--}}
                {{--<a href="images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg">--}}
                    {{--{{ Html::image('images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg','',array('class'=>'ti-img')) }}--}}
                    {{--<div class="ti-name"><span>Phòng Gym TNR GOLDVIEW</span></div>--}}
                {{--</a>--}}
                {{--<a href="images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg">--}}
                    {{--{{ Html::image('images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg','',array('class'=>'ti-img')) }}--}}
                    {{--<div class="ti-name"><span>Phòng Gym TNR GOLDVIEW</span></div>--}}
                {{--</a>--}}
                {{--<a href="images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg">--}}
                    {{--{{ Html::image('images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg','',array('class'=>'ti-img')) }}--}}
                    {{--<div class="ti-name"><span>Phòng Gym TNR GOLDVIEW</span></div>--}}
                {{--</a>--}}
                {{--<a href="images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg">--}}
                    {{--{{ Html::image('images/temps/Ho-boi-tang-thuong-du-an-the-goldview-cho-nguoi-lon.jpg','',array('class'=>'ti-img')) }}--}}
                    {{--<div class="ti-name"><span>Phòng Gym TNR GOLDVIEW</span></div>--}}
                {{--</a>--}}
            </div>
        </div>
    </div>

</div>