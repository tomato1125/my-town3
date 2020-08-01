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