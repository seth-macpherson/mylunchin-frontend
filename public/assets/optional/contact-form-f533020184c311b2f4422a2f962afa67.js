jQuery(document).ready(function(){$("#submit").click(function(){var a=$("input[name=name]"),b=$("input[name=email]"),c=$("input[name=subject]"),d=$("textarea[name=message]");if(a.val()=="")return a.addClass("hightlight"),!1;a.removeClass("hightlight");if(b.val()=="")return b.addClass("hightlight"),!1;b.removeClass("hightlight");var e=/^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;if(e.test(b.val())==0)return b.addClass("hightlight"),!1;b.removeClass("hightlight");if(d.val()=="")return d.addClass("hightlight"),!1;d.removeClass("hightlight");var f="name="+a.val()+"&email="+b.val()+"&subject="+c.val()+"&comment="+encodeURIComponent(d.val());return $(".contact input, .contact textarea").attr("disabled","true"),$(".loading").show(),$.ajax({url:"contact-form/send.php",type:"GET",data:f,cache:!1,success:function(a){a==1?($(".contact-form").hide(600),$(".form-success").fadeIn("slow")):alert("An unexpected error occured. Please try again later.")}}),!1})})