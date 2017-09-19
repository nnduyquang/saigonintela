<div class="slider">
    {{--{{ Html::image('images/slider/slider_01.jpg','',array('class'=>'')) }}--}}
    <div class="slider-wrapper theme-default">
        <div id="slider1" class="nivoSlider hidden-xs hidden-sm">
            @foreach ($sliders as $key => $data)
                {{ Html::image($data->slider_image,'',array('class'=>'slideshow')) }}
            @endforeach
            {{--{{ Html::image('images/sliders/slider_01.jpg','',array('class'=>'slideshow')) }}--}}
            {{--{{ Html::image('images/sliders/slider_02.jpg','',array('class'=>'slideshow')) }}--}}
            {{--{{ Html::image('images/sliders/slider_03.jpg','',array('class'=>'slideshow')) }}--}}
        </div>
        <div class="slider-on-mobile hidden-md hidden-lg">
            {{ Html::image('images/sliders/SMART-CITY-800x1500.jpg','',array('class'=>'slider-mobile hidden-md hidden-lg')) }}
            <div class="slider-mobile-text">
                {{--<p class="slider-header blink_me"><a href="http://www.saigonintelahcm.com/tin-tuc/6-tieu-chuan-can-ho-thong-minh">ThÔNG MINH</a></p>--}}
                <p class="slider-header blink_me"><a href="#">ThÔNG MINH</a></p>
                {{--<p class="slider-description blink_me"><a href="http://www.saigonintelahcm.com/tin-tuc/8-dieu-khac-biet-duy-nhat-chi-co-tai-saigon-intela">KHÁC BIỆT</a></p>--}}
                <p class="slider-description blink_me"><a href="#">KHÁC BIỆT</a></p>
            </div>
            <div class="slider-lienhe">
                <a href="{{URL::to('lien-he')}}">
                    <button id="" class="btn btn-lienhe blink_me">LIÊN HỆ</button>
                </a>
            </div>
        </div>
    </div>
</div>