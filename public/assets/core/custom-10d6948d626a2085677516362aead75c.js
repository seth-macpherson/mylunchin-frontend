/*
 * ---------------------------------------------------------------- 
 *  
 *  Purity HTML/CSS Template custom jQuery scripts.
 *  
 * ----------------------------------------------------------------  
 */
jQuery(document).ready(function(){function a(){$(".nav li").hover(function(){$(this).find("ul:first").css({visibility:"visible",display:"none"}).show(300)},function(){$(this).find("ul:first").css({visibility:"hidden"})})}function b(){$(".over").hover(function(){$(this).stop().animate({opacity:.9},250)},function(){$(this).stop().animate({opacity:0},250)})}function c(){$(".portfolio img,.content .blog-gallery, .big_button, .search_submit, .flickr_badge_image img").hover(function(){$(this).stop().animate({opacity:.4},250)},function(){$(this).stop().animate({opacity:1},250)})}function d(){$(".gallery a[rel^='gallery']").prettyPhoto({animation_speed:"fast",theme:"pp_default",deeplinking:!1,allow_resize:!1})}$(window).load(function(){$("#slider").nivoSlider({pauseTime:4e3,effect:"fade",animSpeed:700,directionNav:!1})}),getTwitters("tweet",{id:"norastable",count:1,enableLinks:!0,ignoreReplies:!0,clearContents:!0,template:'<div class="twitter-content">"%text%" </div><div class="quote"><a href="http://twitter.com/%user_screen_name%/statuses/%id_str%/"><span>%time%</span></a></div>'}),a(),$(".over").stop().animate({opacity:0},0),window.addEventListener&&window.addEventListener("unload",function(){},!1),c(),$(".social img").animate({opacity:.5},0),$(".social img").hover(function(){$(this).stop().animate({opacity:1},250)},function(){$(this).stop().animate({opacity:.5},250)}),$(".tabs > ul").tabs(),$(".toggle-view li").click(function(){var a=$(this).children("p");a.is(":hidden")?(a.slideDown("fast"),$(this).children("h6").addClass("active")):(a.slideUp("fast"),$(this).children("h6").removeClass("active"))}),jQuery().quicksand&&(function(a){a.fn.sorted=function(b){var c={reversed:!1,by:function(a){return a.text()}};return a.extend(c,b),$data=jQuery(this),arr=$data.get(),arr.sort(function(b,d){var e=c.by(a(b)),f=c.by(a(d));return c.reversed?e<f?1:e>f?-1:0:e<f?-1:e>f?1:0}),a(arr)}}(jQuery),jQuery(function(){var a=function(a){var b=a.parent().filter('[class*="current"]');return b.find("a").attr("data-value")},e=function(a){var b=a.parent().filter('[class*="current"]');return b.find("a").attr("data-value")},f={duration:500,adjustHeight:"auto"},g=jQuery(".portfolio"),h=g.clone(),i=jQuery(".filter");i.each(function(j){var k=jQuery(this),l=k.find("a");l.bind("click",function(j){var k=jQuery(this),m=k.parent(),n=$(this).text().toLowerCase().replace(" ","-"),o=n.selected,p=n.segment;if(!o){l.parent().removeClass(),m.addClass("current");var q=a(i.eq(1).find("a")),r=e(i.eq(0).find("a"));if(n=="all-projects")var s=h.find("li");else var s=h.find("li."+n);var t=s.sorted({by:function(a){return jQuery(a).text().toLowerCase()}});g.quicksand(t,f,function(){b(),c(),d()})}j.preventDefault()})})})),d()})