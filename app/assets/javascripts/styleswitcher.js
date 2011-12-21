/**
*
* Stylessheet switcher appearance script.
* By Tauris ( http://themeforest.net/user/Tauris/ )
*
**/

jQuery(document).ready(function(){
$('.switch-button').click(function() {
	
	if ($(this).is('.open')) {
			$(this).addClass('closed');	
			$(this).removeClass('open');
			$('#switcher').animate({
				'left':'-178px'
			});
		} else {
			$(this).addClass('open');	
			$(this).removeClass('closed');	
			$('#switcher').animate({
				'left':'0px'
			});
		}	
		
});
});