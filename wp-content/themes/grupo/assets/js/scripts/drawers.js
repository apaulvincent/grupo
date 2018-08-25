import {debounce} from './helpers';

(function($) {

	$(function(){

		$('body').on('drawer:close-all', function(e){
			$('body').removeClass('drawer-on');
			$('body').removeClass('menu-drawer-on');
			$('.main-menu li.menu-item-has-children').removeClass('active');
		})


		$(window).on('resize', debounce(() => {
			$('body').trigger('drawer:close-all');
		}, 250));


		// $('.main-menu li.menu-item-has-children').on('mouseover', function(e){
		// 	e.preventDefault();
		// 	let itemId = $(this).attr('id')
		// 	itemId = itemId.replace(/[^\d]/g, "");
		// 	$('.sub-menu-list > .menu-list-row').addClass('hidden')
		// 	$('.sub-menu-list > #menu-id-' + itemId ).removeClass('hidden')

		// 	$('body').addClass('menu-drawer-on');
		// })


		$('.menu-toggle').on('click', function(e){
			e.preventDefault();
			$('body').toggleClass('menu-drawer-on');
		})

		// $('#menu-toggle').click();


        // MOBILE NAVIGATION DROPDOWN 
		$('#mobile-main-nav-drawer .menu-inner .menu-item-has-children').each(function(i, e){
			var a = $(e).find('> a');
			$('<button class="material-icons">expand_more</button>').insertAfter(a);
		});



		$('#mobile-main-nav-drawer .menu-inner .menu-item-has-children > button').on('click', function(e) {
			e.preventDefault();
			$(this).next('.sub-menu').slideToggle();
			$(this).toggleClass('on');

		});


		$('.util-drawer').on('click', '.toggle', function(e){
			e.preventDefault();
			$(this).parent('.util-drawer').toggleClass('on');
		})

	});

}(jQuery));