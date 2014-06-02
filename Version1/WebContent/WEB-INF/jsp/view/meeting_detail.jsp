<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<jsp:useBean id="meeting" class="com.meetin.dto.Meeting" scope="request" />
<title>모임 정보</title>
</head>
<body>
<table>
<tr><td>모임번호:</td><td>${meeting.meeting_sq }</td></tr>
<tr><td>카테고리:</td><td>${meeting.meeting_cate }</td></tr>
<tr><td>모임이름:</td><td>${meeting.meeting_nm }</td></tr>
<tr><td>모임날짜:</td><td>${meeting.meeting_dt }</td></tr>
</table>
</body>
</html>