<div id="vi-tri" class="col-md-12">
    <div class="container">
        <div class="col-md-8">
            @foreach($posts as $key=>$post)
                @if($post->name=='trangchu-contents-vt')
                    {!! $post->content !!}
                @endif
            @endforeach
        </div>
        <div class="col-md-4">
            <ul>
                <li>Đến sân vận động Thống Nhất chỉ 5 phút</li>
                <li>Đến sân vận động Thống Nhất chỉ 5 phút</li>
                <li>Đến trung tâm tài chính Tp. Hồ Chí Minh chỉ 3 phút</li>
                <li>Đến sân vận động Thống Nhất chỉ 5 phút</li>
            </ul>
        </div>
    </div>
</div>