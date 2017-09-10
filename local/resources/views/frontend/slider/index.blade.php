<div class="slider">
    {{--{{ Html::image('images/slider/slider_01.jpg','',array('class'=>'')) }}--}}
    <div class="slider-wrapper theme-default">
        <div id="slider1" class="nivoSlider">
            @foreach ($sliders as $key => $data)
                {{ Html::image($data->slider_image,'',array('class'=>'slideshow')) }}
            @endforeach
            {{--{{ Html::image('images/sliders/slider_01.jpg','',array('class'=>'slideshow')) }}--}}
            {{--{{ Html::image('images/sliders/slider_02.jpg','',array('class'=>'slideshow')) }}--}}
            {{--{{ Html::image('images/sliders/slider_03.jpg','',array('class'=>'slideshow')) }}--}}
        </div>
    </div>
</div>