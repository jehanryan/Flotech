var adjustMenu = function() {
	if (ww < 768) {
		jQuery(".toggleMenu").css("display", "inline-block");
		if (!jQuery(".toggleMenu").hasClass("active")) {
			jQuery(".responsiveMenu").hide();
		} else {
			jQuery(".responsiveMenu").show();
		}
		jQuery(".responsiveMenu li").unbind('mouseenter mouseleave');
		jQuery(".responsiveMenu li a.parent").unbind('click').bind('click', function(e) {
			e.preventDefault();
			jQuery(this).parent("li").toggleClass("hover");
		});
	} 
	else if (ww >= 768) {
		jQuery(".toggleMenu").css("display", "none");
		jQuery(".responsiveMenu").show();
		jQuery(".responsiveMenu li").removeClass("hover");
		jQuery(".responsiveMenu li a").unbind('click');
		jQuery(".responsiveMenu li").unbind('mouseenter mouseleave').bind('mouseenter mouseleave', function() {
		 	jQuery(this).toggleClass('hover');			
		});
	}
}

var ww = screen.width;//jQuery(window).width();
jQuery(document).ready(function() {
	jQuery(".responsiveMenu li a").each(function() {
		if (jQuery(this).next().length > 0) {
			jQuery(this).addClass("parent");
		};
	})
	
	jQuery(".toggleMenu").click(function(e) {
		e.preventDefault();
		jQuery(this).toggleClass("active");
		jQuery(this).next(".responsiveMenu").toggle();
	});
	ww = document.body.clientWidth;
	adjustMenu();
})

jQuery(window).bind('resize orientationchange', function() {
	ww = document.body.clientWidth;
	adjustMenu();
});

