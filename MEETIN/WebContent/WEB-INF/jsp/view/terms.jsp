<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/style/jqx.base.css" type="text/css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jqxcore.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jqxtabs.js"></script>
<title>약관</title>
</head>
<body>
	<div id="jqxWidget" style="width: 100%;"
		align="center">
		<div id='termsTabs'>
			<ul>
				<li style="margin-left: 30px;">밋인 이용약관</li>
				<li>개인정보 취급방침</li>
				<li>뭐시뭐시뭐시</li>
				<li>결제/결산 규정</li>
			</ul>
			<div id="page1"></div>
			<div id="page2"></div>
			<div id="page3"></div>
			<div id="page4"></div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$('#termsTabs').jqxTabs({
			width : 1100,
			autoHeight : true
		});
		var loadPage = function(url, tabIndex, size) {
			$.post(url,{width: size}).done(function(data) {
				$('#page' + tabIndex).html(data);
			});
		};
		loadPage('${tUrl}', '${tIdx}', '${tSize}');
		$('#termsTabs').on('selected', function(event) {
			var pageIndex = event.args.item + 1;
			var url = '/resources/terms/';
			if (pageIndex == 1) {
				url += 'terms_of_meetin.jsp';
			} else if (pageIndex == 2) {
				url += 'privacy_policy.jsp';
			} else if (pageIndex == 3) {
				url += '.jsp';
			} else if (pageIndex == 4) {
				url += 'terms_of_payment.jsp';
			}
			loadPage(url, pageIndex, '${tSize}');
		});
	});
</script>
</html>