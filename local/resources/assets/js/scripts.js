var plugins = {
    // owlCarousel: $("#slider"),
    menu: $('.sidebar'),
    slider1: $('#slider1'),
    lightgallery: $('#lightgallery'),
    bottomMenu: $('.bottom-menu')
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

    function runLightgallery() {
        plugins.lightgallery.lightGallery({
            mode: 'lg-fade',
            cssEasing: 'cubic-bezier(0.25, 0, 0.25, 1)',
            thumbnail: true
        });
    }

    function runScrollOnFix() {
        var wrap = plugins.bottomMenu
        $(window).on("scroll", function (e) {
            if ( $(this).scrollTop()  > 850) {
                wrap.addClass("navbar-fixed-top");
            } else {
                wrap.removeClass("navbar-fixed-top");
            }
        });
    }

    sidebar();
    if (plugins.slider1.length) {
        runSlider1();
    }
    if (plugins.lightgallery.length) {
        runLightgallery();
    }
    if (plugins.bottomMenu.length) {
        runScrollOnFix();
    }
});