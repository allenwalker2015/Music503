//= require jquery3
//= require social-share-button
//= require ./slick.min.js
//= require ./jquery.sticky.js

$(document).ready(function () {
  $("nav.main-nav").sticky({
    topSpacing: 0
  });
  var sliderOptions = {
    dots: true,
    autoplay: true,
    arrows: false,
    infinite: true,
    autoplaySpeed: 3000,
    speed: 600,
    slidesToShow: 3,
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
  $('.slick-recent-posts').slick(sliderOptions);
  // $('.slick-noticias').slick(sliderOptions);
  // $('.slick-musica').slick(sliderOptions);
  // $('.slick-videos').slick(sliderOptions);
})