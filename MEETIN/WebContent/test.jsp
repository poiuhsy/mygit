<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
	.selectbox{
		position:relative;
		border:1px solid #cdcdcd; 
		width: 130px
	}
	.selectbox.active{
		z-index:20
	}
	.selectbox ul{
		display:none;
		position:absolute;
		top:100%;
		left:0;
		border:1px solid #cecece;
		border-top:none;
		border-bottom:none;
		width:90px;
		background:#fff;
		margin:1px 0 0 -1px
	}
	.selectbox.active ul{
		z-index:30
	}
	.selectbox button{
		background:none;
		border:none;
		display:block;
		text-align:left;
	}
	.selectbox>span{
	display:block;
		border-right:1px solid #cecece;
		margin-right:22px;
		padding:5px 10px;
		
	}
	.selectbox>span>button{
		padding:0;
		margin:0;
		width:130px;
		background:url(resources/images/box_27_btn.png) no-repeat 100% 50%;
	}
	.selectbox>ul li{
		margin-left:-40px;
		position:relative;
		border-bottom:1px solid #cecece;
		list-style: none;
		text-align: left;
	}
	.selectbox>ul button, .selectbox>ul a{
		color:#555;
		text-decoration:none;
		display:block;
		font-size:12px;
		padding:5px 10px
	}
</style>
</head>
<body>
	<table style="margin-left: 100px">
		<tr>
			<td>
				<div class="selectbox">    
				<span> 선택<button  type="button"></button> </span>
					<button type="button"><span>선택</span></button> 
				    <ul>       
				     	<li><a href="#" target="_blank" title="새 창">Asan Family Site1</a></li>        
				     	<li><a href="#" target="_blank" title="새 창">Asan Family Site1</a></li>        
				     	<li><a href="#" target="_blank" title="새 창">Asan Family Site1</a></li>    
				     </ul>
	  			</div>
			</td>
			
		</tr>
	</table>	
</body>
<script type="text/javascript">
	$(document).ready(function(){    
		$(".selectbox button").click(function(){        
			$(this).parents('.selectbox').children('ul').slideToggle("fast");        
			$(this).parents('.selectbox').toggleClass('active');    
		});    
		$(".selectbox button").on('outerClick', function(){        
			$(this).parents('.selectbox').children('ul').slideUp("fast");   
		});
	});
</script>
</html>