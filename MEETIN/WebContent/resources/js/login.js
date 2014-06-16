function isLogin(val){
	if(val==0){    //로그인 중일때 이용할 수 없음
		$.ajax({
			url : "/session/",
			type : 'post',
			dataType : "text",
			async : true, 
			data : {"KEY":"login","CMD":"check"},
			success : function(result) {
				if(result!="null"){
					alert("로그인 중 이용할 수 없는 페이지 입니다.");
					location.replace("/");
				}				
			}
		});
	}else if(val==1){           //로그인 중에만 이용가능
		
	}else{                     //로그인 상태인지 체크
		$.ajax({
			url : "/session/",
			type : 'post',
			dataType : "text",
			async : true, 
			data : {"KEY":"login","CMD":"check"},
			success : function(result) {
				if(result!="null"){
					$('.DIV_LOGIN_SECTION').hide();
					$('.DIV_LOGOUT_SECTION').show();
				}else{
					$('.DIV_LOGIN_SECTION').show();
					$('.DIV_LOGOUT_SECTION').hide();
				}			
			}
		});
	}
	
}