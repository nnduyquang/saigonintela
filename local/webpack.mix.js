let mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.styles([
    'bower_components/jquery/dist/jquery.min.js',
    'bower_components/bootstrap/dist/js/bootstrap.min.js',
], '../js/core.common.js')
    .styles([
        'bower_components/bootstrap/dist/css/bootstrap.min.css',
        'bower_components/font-awesome/css/font-awesome.min.css',
    ], '../css/core.common.css')
    .styles([
        'bower_components/nivo-slider/jquery.nivo.slider.pack.js',
    ], '../js/core.frontend.js')
    .styles([
        'bower_components/nivo-slider/nivo-slider.css',
    ], '../css/core.frontend.css')
    .sass('resources/assets/sass/frontend.scss', '../../css/frontend.css').options({processCssUrls: false})
    .sass('resources/assets/sass/trangchu.scss', '../../css/trangchu.css').options({processCssUrls: false})
    .styles('resources/assets/js/scripts.js', '../js/scripts.js')
    .styles([
        'bower_components/lightgallery/dist/css/lightgallery.min.css',
        'bower_components/lightgallery/dist/css/lg-transitions.css',
    ], '../css/lightgallery.css')
    .styles([
        'bower_components/lightgallery/dist/js/lightgallery.min.js',
        'bower_components/lightgallery/modules/js/lg-thumbnail.min.js',
        'bower_components/lightgallery/modules/js/lg-fullscreen.min.js',
    ], '../js/lightgallery.js')
    .copy([
        'bower_components/bootstrap/fonts/**',
        'bower_components/font-awesome/fonts/**',
        'bower_components/lightgallery/src/fonts/**'///////////////////////////
    ], '../fonts')
    .copy([
        'bower_components/nivo-slider/themes',
    ], '../css/themes', false)

