require('./vendors/slick');

(function($) {

	$(function(){

		$('.banner-slider').slick({
			dots: true,
			arrows: false,
			infinite: true,
			autoplay: true,
			pauseOnHover: false,
			autoplaySpeed: 6000
		});


		$('.home-slider').slick({
			dots: true,
			arrows: false,
			infinite: true,
			autoplay: true,
			pauseOnHover: false,
			autoplaySpeed: 3000
		});


		$('.post-slider').on('init', function(event, slick){
			

			var _this = $(this);
			var prevBtn = $(this).next('.post-slider-nav').find('.prev');
			var nextBtn = $(this).next('.post-slider-nav').find('.next');
			var indicator = $(this).next('.post-slider-nav').find('.indicator');

			prevBtn.on('click', function() {
				_this.slick('slickPrev');
			});

			nextBtn.on('click', function() {
				_this.slick('slickNext');
			});

			var slideToShow = slick.options.slidesToShow;
			var slideCount = slick.$slides.length > slideToShow ? slick.$slides.length : slideToShow;
			
			slideCount = Math.ceil(slideCount / slideToShow);
			
			indicator.text('1 of ' + slideCount)

		}).slick({
			dots: false,
			arrows: false,
			infinite: true,
			autoplay: true,
			pauseOnHover: true,
			autoplaySpeed: 6000,
		  	slidesToShow: 1,
			slidesToScroll: 1,
			fade:true,
			speed: 1000,

		}).on('afterChange', function (event, slick, currentSlide) {

			var prevBtn = $(this).next('.post-slider-nav').find('.prev');
			var nextBtn = $(this).next('.post-slider-nav').find('.next');

			var indicator = $(this).next('.post-slider-nav').find('.indicator');
			var slideToShow = slick.options.slidesToShow;
			
			var slideCount = slick.$slides.length > slideToShow ? slick.$slides.length : slideToShow;
				slideCount = Math.ceil(slideCount / slideToShow);
			
			var currentSlide = (currentSlide / slideToShow) + 1;
		
			indicator.text(currentSlide + ' of ' + slideCount)
			
		});




		$('.image-gallery').slick({
			dots: false,
			arrows: true,
			centerMode: true,
			centerPadding: '60px',
			slidesToShow: 4,
			responsive: [{
						breakpoint: 768,
							settings: {
								arrows: false,
								centerMode: true,
								centerPadding: '40px',
								slidesToShow: 3
							}
						},{
						breakpoint: 480,
							settings: {
								arrows: false,
								centerMode: true,
								centerPadding: '40px',
								slidesToShow: 1
							}
						}]
		});
			

		$('#gallery-modal').on('show.bs.modal', function (event) {
			var button = $(event.relatedTarget)
			var id = button.data('img-id');

			var modal = $(this)
			modal.find('.modal-body img').hide();
			modal.find('img#gal-' + id).show();

		});

	});
}(jQuery));
