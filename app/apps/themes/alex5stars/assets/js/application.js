//= require jquery3
//= require social-share-button
//= require ./slick.min.js

$(document).ready(function () {
  var sliderOptions = {
    dots: true,
    autoplay: true,
    arrows: false,
    infinite: true,
    speed: 300,
    slidesToShow: 1,
    adaptiveHeight: true,
    responsive: [
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  }
  $('.slick-noticias').slick(sliderOptions);
  // $('.slick-musica').slick(sliderOptions);
  // $('.slick-videos').slick(sliderOptions);
})