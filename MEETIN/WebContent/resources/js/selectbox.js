$(document).ready(function(){  
	var li_over = false;
	var select_list = $('.selectbox');
	for(var i=0;i<select_list.length;++i){
		$(select_list[i]).width($(select_list[i]).attr('value'));
		$(select_list[i]).children('ul').width(Number($(select_list[i]).attr('value'))-40);
		$(select_list[i]).children('button').width($(select_list[i]).attr('value'));
	}
	$(".selectbox button").click(function(){  
		
		if($(this).parents('.selectbox').children('ul').height()>200){
			$(this).parents('.selectbox').children('ul').css('border-bottom','1px solid #cecece');
			$(this).parents('.selectbox').children('ul').height(200);
			$(this).parents('.selectbox').children('ul').css('overflow-y','scroll');
		}else{
			$(this).parents('.selectbox').children('ul').css('border-bottom','1px solid #cecece');
		}
		var li_list = $(".selectbox li");
		for(var i=0;i<$(".selectbox li").length;++i){
			$(li_list[i]).css('background-color','white');
		}
	
		if($(this).parents('.selectbox').children('ul').css('display')=="block"){
			$(this).parents('.selectbox').children('ul').hide(); 
		}else if($(this).parents('.selectbox').children('ul').css('display')=="none"){
			$(this).parents('.selectbox').children('ul').show(); 
		}
	}); 	 
	$(".selectbox li").mouseover(function(){
		li_over = true;
		var li_list = $(".selectbox li");
		for(var i=0;i<li_list.length;++i){
			$(li_list[i]).css('background-color','white');
			$(li_list[i]).css('color','black');
		}
		$(this).css('background-color','#d0d0d0');
		$(this).css('color','white');
	});
	$(".selectbox li").mouseleave(function(){
		li_over = false;
	});
	$(".selectbox li").click(function(){
		$(this).parents('.selectbox').children('button').children('span').html($(this).attr('value'));
		
		var li_list = $(".selectbox li");
		for(var i=0;i<$(".selectbox li").length;++i){
			$(li_list[i]).css('background-color','white');
			$(li_list[i]).css('color','black');
		}  
		$(this).parents('.selectbox').children('ul').hide(); 
	});	
	$(".selectbox button").blur(function(){  
		if(!li_over){
			$(this).parents('.selectbox').children('ul').hide(); 
		}
		
	});

});

