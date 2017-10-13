
<div id="khuyen-mai" class="col-md-12">
    <div class="empty-space-32"></div>
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class="km-top">
                <span class="km-span-dash">
                    {{--<span class="line"></span>--}}
                </span>
            <h4>SÀI GÒN INTELA CĂN HỘ THÔNG MINH VEN SÔNG</h4>
            <span class="km-span-dash">
                    {{--<span class="line"></span>--}}
                </span>
        </div>
    </div>
    <div class="col-md-2"></div>
    <div class="empty-space-32"></div>
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="row">
                @foreach($posts as $key=>$post)
                    @if($post->name=='trangchu-contents-km')
                        {!! $post->content !!}
                    @endif
                @endforeach
                {{--<div class="dash-full-width"></div>--}}
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>

