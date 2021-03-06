// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("jquery");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(document).on("ready turbolinks:load", function() {
  // Smooth scrolling using jQuery easing
  //   $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function() {
  //     if (
  //       location.pathname.replace(/^\//, "") ==
  //         this.pathname.replace(/^\//, "") &&
  //       location.hostname == this.hostname
  //     ) {
  //       var target = $(this.hash);
  //       target = target.length ? target : $("[name=" + this.hash.slice(1) + "]");
  //       if (target.length) {
  //         $("html, body").animate(
  //           {
  //             scrollTop: target.offset().top - 70
  //           },
  //           1000,
  //           "easeInOutExpo"
  //         );
  //         return false;
  //       }
  //     }
  //   });

  // Closes responsive menu when a scroll trigger link is clicked
  $(".js-scroll-trigger").click(function() {
    $(".navbar-collapse").collapse("hide");
  });

  // Activate scrollspy to add active class to navbar items on scroll

  // Collapse Navbar
  var navbarCollapse = function() {
    if ($("#mainNav").offset().top > 100) {
      $("#mainNav").addClass("navbar-shrink");
    } else {
      $("#mainNav").removeClass("navbar-shrink");
    }
  };
  // Collapse now if page is not at top
  navbarCollapse();
  // Collapse the navbar when page is scrolled
  $(window).scroll(navbarCollapse);

  var signup = document.getElementById("marginal");
  if (signup) {
    signup.classList.add("animated", "zoomIn");
  }

  var signin = document.getElementById("form-signin");
  if (signin) {
    signin.classList.add("animated", "zoomIn");
  }
});
