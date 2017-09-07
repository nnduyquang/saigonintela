var plugins = {
    // owlCarousel: $("#slider"),
    menu: $('.sidebar'),
    slider1: $('#slider1'),
    lightgallery:$('#lightgallery'),
};
$(document).ready(function () {
    function sidebar() {
        var trigger = $('#trigger,#close');
        trigger.on('click', function () {
            $(this).toggleClass('active');
            plugins.menu.toggleClass('closed');
            $('#blurrMe').toggleClass('blurred')
        })
        $('#wrap-container').on('click', function () {
            if ($('#blurrMe').hasClass('blurred')) {

                $('#blurrMe').toggleClass('blurred')
                plugins.menu.toggleClass('closed');
            }
        })
    }
    function runSlider1() {
        plugins.slider1.nivoSlider({
            effect: 'fade',
            animSpeed: 500,
            pauseTime: 3000,
            pauseOnHover: true,
            controlNav: false,
        });
    }
    function runLightgallery(){
        plugins.lightgallery.lightGallery({
            mode: 'lg-fade',
            thumbnail:true
        });
    }
    sidebar();
    if (plugins.slider1.length) {
        runSlider1();
    }
    if(plugins.lightgallery.length){
        runLightgallery();
    }
});