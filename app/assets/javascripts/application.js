//= require jquery
//= require rails-ujs
//= require underscore
//= require_tree .


$(function() {
  $('.PostIndex').slick({
    dots: true,
    accessibility: true,
    autoplay: true,
    centerMode: true,
    centerPadding: '30px',
    slidesToShow: 3,
    prevArrow: '<button class="slide-arrow prev-arrow"></button>',
    nextArrow: '<button class="slide-arrow next-arrow"></button>',
    responsive: [
      {
        breakpoint: 768,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 3
        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 1
        }
      }
    ]
  });
});