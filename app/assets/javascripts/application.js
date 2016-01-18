// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery-1.9.1.min
//= require turbolinks
//= require modernizr
//= require retina
//= require jquery.fitvids
//= require jquery.slicknav
//= require twitter/bootstrap
//= require nprogress
//= require nprogress-turbolinks
//= require jquery.prettySocial
//= require frogaloop
//= require gmap3
//= require masonry/jquery.event-drag
//= require masonry/jquery.imagesloaded.min
//= require masonry/jquery.infinitescroll.min
//= require masonry/modernizr-transitions
//= require jquery.fittext
//= require jquery.lettering
//= require jquery.textillate


$(document).on('page:load', function() {
	applicash();
});

$(document).ready(function() {
	applicash();
});

// turbolinks page load syntax

function applicash(){
	
	$('#preloader').fadeOut();
	
	$('.prettySocial').prettySocial();
	
	$('.fitvids').fitVids();
	
	//navigation links hover opcaity animation
	$('.navigationButton a').css('opacity', 1);  
	// when hover over the selected item change the opacity to 1  
	$('.navigationButton a').hover(function(){ 
		$(this).stop().fadeTo('medium', 0.4);  
		},  
		function(){  
	    $(this).stop().fadeTo('medium', 1);  
	});
	
	//mobileNavMenu
	$(function(){
		$('#menu').slicknav();
	});
	
	$('.delete_post').on('click', function() {
		if(confirm('Are you sure you want to delete this record')){
	    	return true
	    }else{
	        return false;
	    }
	});
	
	$(".tips").tooltip();
	
	imageHover();
	
}

$(function() {
    var iframe = $('#videoPlayer');
    var player = $f(iframe);

    // When the player is ready, add listeners for pause, finish, and playProgress
    player.addEvent('ready', function() {
        $('#videoLoader').hide();
		$('#videoLoader0').hide();
		$('#videoLoader1').hide();
		$('#videoLoader2').hide();
		$('#videoLoader3').hide();
		$('#videoLoader4').hide();
		$('#videoLoader5').hide();
		$('#videoLoader6').hide();
		$('#videoLoaderWork').hide();
    });
});

// $(function(){
// 	if ($('.pagination').length) {
// 	    $(window).scroll(function() {
// 	      var url = $('.pagination .next_page').attr('href');
// 	      if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
// 	        $('.pagination').text("Loading...");
// 	        return $.getScript(url, function(){
// 				applicash();
// 			});
// 	      }
// 	    });
// 	    return $(window).scroll();
// 	  }
// })

function imageHover(){
	if ($(window).width() > 992) {
		jQuery('.subtitle-wrap, .subtitle-wrap2, .subtitle-wrap3, .paragraph-wrap, .title-wrap2').not('.flexslider .subtitle-wrap, .flexslider .title-wrap2, .paragraph-wrap').each(function() {
	    	jQuery(this).data('wrapping', jQuery(this).width());
	    	jQuery(this).css('width', 0);
	 	});

	  	jQuery('.images').not('.flexslider .images').bind('mouseenter', function() {
	    	jQuery(this).find('.subtitle-wrap').stop().each(function() {
	      		jQuery(this).delay(250).animate({
	        		width: jQuery(this).data('wrapping')
	      		}, 150);
	    	});
			jQuery(this).find('.subtitle-wrap2').stop().each(function() {
	      		jQuery(this).delay(250).animate({
	        		width: jQuery(this).data('wrapping')
	      		}, 0, function(){
					jQuery(this).find('.subtitle').textillate({ in: { effect: 'fadeInLeft',  delayScale: 0.1, delay: 30 } });
				});
	    	});
			jQuery(this).find('.subtitle-wrap3').stop().each(function() {
	      		jQuery(this).delay(250).animate({
	        		width: jQuery(this).data('wrapping')
	      		}, 0, function(){
					jQuery(this).find('.subtitle').textillate({ in: { effect: 'fadeInLeft',  delayScale: 0.1, delay: 30 } });
				});
	    	});
			jQuery(this).find('.title-wrap2').stop().each(function() {
	      		jQuery(this).delay(250).animate({
	        		width: jQuery(this).data('wrapping')
	      		}, 0, function(){
					jQuery(this).find('.title').textillate({ in: { effect: 'fadeInLeft',  delayScale: 0.1, delay: 30 } });
				});
	    	});
			jQuery(this).find('.paragraph-wrap').stop().each(function() {
	      		jQuery(this).delay(250).animate({
	        		width: jQuery(this).data('wrapping')
	      		}, 150);
	    	});
	  	});

	  	jQuery('.images').not('.flexslider .images').bind('mouseleave', function() {
	    	jQuery(this).find('.subtitle-wrap').stop().each(function() {
	      		jQuery(this).animate({
	        		width: 0
	      		}, 0);
	    	});
			jQuery(this).find('.subtitle-wrap2').stop().each(function() {
	      		jQuery(this).animate({
	        		width: 0
	      		}, 0);
	    	});
			jQuery(this).find('.subtitle-wrap3').stop().each(function() {
	      		jQuery(this).animate({
	        		width: 0
	      		}, 0);
	    	});
			jQuery(this).find('.title-wrap2').stop().each(function() {
	      		jQuery(this).animate({
	        		width: 0
	      		}, 0);
	    	});
			jQuery(this).find('.paragraph-wrap').stop().each(function() {
	      		jQuery(this).animate({
	        		width: 0
	      		}, 0);
	    	});
	  	});


	  	jQuery('.element').hover(function() {
			jQuery(this).find('.caption, .overlay2').stop().animate({
				"opacity": "1"
			}, 150 );
			}, function() {
			jQuery(this).find('.caption, .overlay2').stop().animate({
				"opacity": "0"
			}, 150 ); 
		});

		jQuery('.element').hover(function() {
			 jQuery(this).find('.caption, .overlay3').stop().animate({
				"opacity": "1"
			}, 150 );
			}, function() {
			jQuery(this).find('.caption, .overlay3').stop().animate({
				"opacity": "0"
			}, 150 );
	   	});

		jQuery('.element').hover(function() {
			 jQuery(this).find('.caption, .overlay4').stop().animate({
				"opacity": "1"
			}, 150 );
			}, function() {
			jQuery(this).find('.caption, .overlay4').stop().animate({
				"opacity": "0"
			}, 150 );
	   	});

	  	jQuery('.element').hover(function() {
			 jQuery(this).find('.hidden-infos').stop().fadeToggle(150);	 
	   	});

	  	jQuery('.about').click(function() {
			 jQuery(this).find('.movable-content').stop().animate({
				"margin-left": "300px"
			}, 200 ); 
	   	});

	   	jQuery('.about').bind('mouseleave', function() {
			 jQuery(this).find('.movable-content').stop().animate({
				"margin-left": "0px"
			}, 200 ); 
	   	});

	  	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
	  		$('body').addClass('touch')
		}

		jQuery('#options li').not('.touch #options li').bind('mouseover', function() {
	  		jQuery(this).find('.menu-line').stop().animate({
				"width": "100%"
			}, 150 );
	   	});

		jQuery('#options li').not('.touch #options li').bind('mouseout', function() {
	  		jQuery(this).find('.menu-line').stop().animate({
				"width": "0"
			}, 150 );
	   	});

		jQuery('.button').hover(function() {
			jQuery(this).animate({backgroundColor:'#ddd'}, 150);
			}, function() {
			jQuery(this).animate({backgroundColor:'#d6d6d6'}, 250); 
	   	});
	} else {
		jQuery('.element').hover(function() {
			 jQuery(this).find('.hidden-infos').stop().fadeToggle(150);	 
	   	});
		if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
	  		$('body').addClass('touch')
		}
	}
}