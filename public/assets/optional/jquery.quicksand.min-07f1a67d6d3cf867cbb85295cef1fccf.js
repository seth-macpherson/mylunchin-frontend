/*

Quicksand 1.2.1

Reorder and filter items with a nice shuffling animation.

Copyright (c) 2010 Jacek Galanciak (razorjack.net) and agilope.com
Big thanks for Piotr Petrus (riddle.pl) for deep code review and wonderful docs & demos.

Dual licensed under the MIT and GPL version 2 licenses.
http://github.com/jquery/jquery/blob/master/MIT-LICENSE.txt
http://github.com/jquery/jquery/blob/master/GPL-LICENSE.txt

Project site: http://razorjack.net/quicksand
Github site: http://github.com/razorjack/quicksand

*/
(function(a){a.fn.quicksand=function(b,c,e){var f={duration:750,easing:"swing",attribute:"data-id",adjustHeight:"auto",useScaling:!0,enhancement:function(){},selector:"> *"};a.extend(f,c);if(a.browser.msie||typeof a.fn.scale=="undefined")f.useScaling=!1;var g;return typeof c=="function"?g=c:typeof (e=="function")&&(g=e),this.each(function(c){var e,h=[],i=a(b).clone(),j=a(this);c=a(this).css("height");var k,l=!1,m=a(j).offset(),n=[],p=a(this).find(f.selector);if(a.browser.msie&&a.browser.version.substr(0,1)<7)j.html("").append(i);else{var q=0,r=function(){q||(j.html(u.html()),typeof g=="function"&&g.call(this),l&&j.animate({height:k}),f.enhancement(j),q=1)},s=j.offsetParent(),t=s.offset();s.css("position")=="relative"?s.get(0).nodeName.toLowerCase()!="body"&&(t.top+=parseFloat(s.css("border-top-width")),t.left+=parseFloat(s.css("border-left-width"))):(t.top-=parseFloat(s.css("border-top-width")),t.left-=parseFloat(s.css("border-left-width")),t.top-=parseFloat(s.css("margin-top")),t.left-=parseFloat(s.css("margin-left"))),j.animate({height:a(this).height()}),p.each(function(b){n[b]=a(this).offset()}),a(this).stop(),p.each(function(b){a(this).stop();var c=a(this).get(0);c.style.position="absolute",c.style.margin="0",c.style.top=n[b].top-parseFloat(c.style.marginTop)-t.top+"px",c.style.left=n[b].left-parseFloat(c.style.marginLeft)-t.left+"px"});var u=a(j).clone();s=u.get(0),s.innerHTML="",s.setAttribute("id",""),s.style.height="auto",s.style.width=j.width()+"px",u.append(i),u.insertBefore(j),u.css("opacity",0),s.style.zIndex=-1,s.style.margin="0",s.style.position="absolute",s.style.top=m.top-t.top+"px",s.style.left=m.left-t.left+"px",f.adjustHeight==="dynamic"?j.animate({height:u.height()},f.duration,f.easing):f.adjustHeight==="auto"&&(k=u.height(),parseFloat(c)<parseFloat(k)?j.animate({height:k}):l=!0),p.each(function(){var b=[];typeof f.attribute=="function"?(e=f.attribute(a(this)),i.each(function(){if(f.attribute(this)==e)return b=a(this),!1})):b=i.filter("["+f.attribute+"="+a(this).attr(f.attribute)+"]"),b.length?f.useScaling?h.push({element:a(this),animation:{top:b.offset().top-t.top,left:b.offset().left-t.left,opacity:1,scale:"1.0"}}):h.push({element:a(this),animation:{top:b.offset().top-t.top,left:b.offset().left-t.left,opacity:1}}):f.useScaling?h.push({element:a(this),animation:{opacity:"0.0",scale:"0.0"}}):h.push({element:a(this),animation:{opacity:"0.0"}})}),i.each(function(){var b=[],c=[];typeof f.attribute=="function"?(e=f.attribute(a(this)),p.each(function(){if(f.attribute(this)==e)return b=a(this),!1}),i.each(function(){if(f.attribute(this)==e)return c=a(this),!1})):(b=p.filter("["+f.attribute+"="+a(this).attr(f.attribute)+"]"),c=i.filter("["+f.attribute+"="+a(this).attr(f.attribute)+"]"));var g;if(b.length===0){g=f.useScaling?{opacity:"1.0",scale:"1.0"}:{opacity:"1.0"},d=c.clone();var k=d.get(0);k.style.position="absolute",k.style.margin="0",k.style.top=c.offset().top-t.top+"px",k.style.left=c.offset().left-t.left+"px",d.css("opacity",0),f.useScaling&&d.css("transform","scale(0.0)"),d.appendTo(j),h.push({element:a(d),animation:g})}}),u.remove(),f.enhancement(j);for(c=0;c<h.length;c++)h[c].element.animate(h[c].animation,f.duration,f.easing,r)}})}})(jQuery)