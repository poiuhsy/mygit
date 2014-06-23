<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	int width = Integer.parseInt(request.getParameter("width"));
%>
<%if(width == 1000 ) {%>
	<div style="width: <%=width%>px; margin-left:50px;" align="left">
<%} else { %>
	<div style="width: <%=width%>px; margin-left:10px;" align="left">
<%} %>
	<p class="0">
		<span style="font-size: 14pt; font-weight: bolder;">결제</span><span
			lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 14pt;">/</span><span
			style="font-size: 14pt; font-weight: bolder;">결산규정</span>
	</p>
	<p class="0">
		<span style="font-weight: normal;"><span
			style="font-size: 9pt;"><br></span></span>
	</p>
	<p class="0">
		<span style="font-size: 10pt; font-weight: bold;">하나</span><span
			lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt; font-weight: bold;">.
		</span><span style="font-size: 10pt; font-weight: bold;">만남 종류에 따른 참가비
			결제 대행에 대한 정산 금액</span>
	</p>
	<p class="0" style="margin-left: 40px;">
		<span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt; font-weight: bold;">1)
		</span><span style="font-weight: normal; font-size: 9pt;">유료 모임</span><span
			lang="EN-US"
			style="font-weight: normal; font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">/</span><span
			style="font-weight: normal; font-size: 9pt;">프로젝트 </span>
	</p>
	<p class="0" style="margin-left: 40px;">
		<span style="font-weight: normal;"><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">-
		</span><span style="font-size: 9pt;">개인 </span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">:
		</span><span style="font-size: 9pt;">만남 결제 총 금액 </span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">-
		</span><span style="font-size: 9pt;">약 </span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">20%
		</span><span style="font-size: 9pt;">수수료 </span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">(</span><span
			style="font-size: 9pt;">부가가치세 </span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">10%
				+ </span><span style="font-size: 9pt;">원천징수 </span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">3.3%
		</span><span style="font-size: 9pt;">공제 </span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">+
		</span><span style="font-size: 9pt;">밋인 수수료</span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">)
				= </span><span style="font-size: 9pt;">정산금액 </span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">*
		</span><span style="font-size: 9pt;">부가가치세 및 사업소득세는 국세법에 따른 세금이므로 회사에서
				원천징수 처리하여 세금신고를 해야 하므로 개인에겐 원천징수 할 수밖에 없습니다</span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">.</span></span>
	</p>
	<p class="0" style="margin-left: 40px;">
		<span style="font-weight: normal;"><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">-
		</span><span style="font-size: 9pt;">사업자 </span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">:
		</span><span style="font-size: 9pt;">만남 결제 총 금액 </span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">-
		</span><span style="font-size: 9pt;">밋인 수수료 </span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">=
		</span><span style="font-size: 9pt;">정산금액</span></span>
	</p>
	<p class="0" style="margin-left: 80px;">
		<span style="font-weight: normal;"><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">*
		</span><span style="font-size: 9pt;">밋인의 정산은 사업자의 세금계산서 발행 후에 하는 것을
				원칙으로 합니다</span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">.</span></span>
	</p>
	<p class="0" style="margin-left: 80px;">
		<span style="font-weight: normal;"><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">*10%</span><span
			style="font-size: 9pt;">의 부가치세가 정산금액에 포함되어 있으므로 정산 받으신 금액에
				대해서는 개별적으로 부가가치세를 신고 하셔야 합니다</span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">.
				(</span><span style="font-size: 9pt;">사업자 </span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">:
		</span><span style="font-size: 9pt;">사업자 등록등이 있는 개인사업자 </span><span
			lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">,
		</span><span style="font-size: 9pt;">법인사업자</span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">)</span></span>
	</p>
	<p class="0" style="margin-left: 80px;">
		<span style="font-weight: normal;"><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;"><br></span></span>
	</p>
	<p class="0">
		<span style="font-size: 10pt; font-weight: bold;">둘</span><span
			lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt; font-weight: bold;">.
		</span><span style="font-size: 10pt; font-weight: bold;">정산 정보 자료 등록</span>
	</p>
	<p class="0" style="margin-left: 40px;">
		<span style="font-weight: normal;"><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt; font-weight: bold;">1)
		</span><span style="font-size: 9pt;">내 정보 </span><span
			style="letter-spacing: 0pt; font-size: 9pt;">→ </span><span
			style="font-size: 9pt;">정산 정보 보내기를 통해 이메일로 보내주시면 됩니다</span><span
			lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">.</span></span>
	</p>
	<p class="0" style="margin-left: 40px;">
		<span style="font-weight: normal;"><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">*
		</span><span style="font-size: 9pt;">정산 관련 자료는 반드시 본인 명의로 된 자료만 가능합니다<font
				face="함초롬바탕">. (</font></span></span><span
			style="font-weight: normal; font-size: 9pt;">개인 :&nbsp;</span><span
			style="font-weight: normal; font-size: 9pt;">신분증 사본 </span><span
			lang="EN-US"
			style="font-weight: normal; font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">/
		</span><span style="font-weight: normal; font-size: 9pt;">통장 사본</span><span
			lang="EN-US"
			style="font-weight: normal; font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">,
		</span><span style="font-weight: normal; font-size: 9pt;">사업자&nbsp;<font
			face="함초롬바탕">:&nbsp;</font></span><span
			style="font-weight: normal; font-size: 9pt;">사업자등록증 </span><span
			lang="EN-US"
			style="font-weight: normal; font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">/
		</span><span style="font-weight: normal; font-size: 9pt;">통장 사본</span><span
			lang="EN-US"
			style="font-weight: normal; font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">)</span>
	</p>
	<p class="0" style="margin-left: 40px;">
		<span lang="EN-US"
			style="font-weight: normal; font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;"><br></span>
	</p>
	<p class="0">
		<span style="font-size: 10pt; font-weight: bold;">셋</span><span
			lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt; font-weight: bold;">.
		</span><span style="font-size: 10pt; font-weight: bold;">부가가치 세법에 따라
			개인과의 거래에 발생하는 소득에 대해서 사업소득세</span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt; font-weight: bold;">,
		</span><span style="font-size: 10pt; font-weight: bold;">부가가치세를 세금신고
			하도록 되어 있습니다</span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt; font-weight: bold;">.
		</span><span style="font-size: 10pt; font-weight: bold;">사업 소득세 및
			부가가치세는 밋인에게 속하는 매출이 아니며</span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt; font-weight: bold;">,
		</span><span style="font-size: 10pt; font-weight: bold;">세금이므로 회사에서는
			원천징수하여 세금신고를 해야 하는 의무가 있습니다</span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt; font-weight: bold;">.
		</span><span style="font-size: 10pt; font-weight: bold;">개인으로 등록 및 만남을
			진행하실 경우 원천징수가 진행되는 이유입니다</span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt; font-weight: bold;">.</span>
	</p>
	<p class="0" style="margin-left: 40px;">
		<span style="font-weight: normal;"><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">*
		</span><span style="font-size: 9pt;">관련 법규 조항</span></span>
	</p>
	<p class="0" style="margin-left: 40px;">
		<span style="font-weight: normal;"><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">-
		</span><span style="font-size: 9pt;">부가가치세법 </span><a
			href='http://bit.ly/1bKZluT' style="text-decoration: none;"
			target="_blank"><span lang="EN-US"
				style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">(http://bit.ly/1bKZluT)</span></a></span>
	</p>
	<p class="0" style="margin-left: 40px;">
		<span style="font-weight: normal;"><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">-
		</span><span style="font-size: 9pt;">소득세법 </span><a
			href='http://bit.ly/1cC5XeD' style="text-decoration: none;"
			target="_blank"><span lang="EN-US"
				style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">(http://bit.ly/1cC5XeD)</span></a></span>
	</p>
	<p class="0" style="margin-left: 40px;">
		<span style="font-weight: normal;"><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;"><br></span></span>
	</p>
	<p class="0">
		<span lang="EN-US" style="font-family: 함초롬바탕; font-size: 9pt;">
		</span><span style="font-size: 10pt;">넷</span><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt;">.
		</span><span style="font-size: 10pt;">정산</span>
	</p>
	<p class="0" style="margin-left: 40px;">
		<span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">1)
		</span><span style="font-weight: normal; font-size: 9pt;">정산서는 만남 종류 후
			일주일 전후로 개설자에게 전달됩니다</span><span lang="EN-US"
			style="font-weight: normal; font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">.
		</span><span style="font-weight: normal; font-size: 9pt;">그 후 수수료를 제외한
			결제 금액이 송금 됩니다</span><span lang="EN-US"
			style="font-weight: normal; font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;">.</span>
	</p>
	<p class="0">
		<span style="font-weight: normal;"><span lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 9pt;"><br></span></span>
	</p>
	<p class="0">
		<span style="font-size: 10pt; font-weight: bold;">이 약관 및 방침은 </span><span
			lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt; font-weight: bold;">2013</span><span
			style="font-size: 10pt; font-weight: bold;">년 </span><span
			lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt; font-weight: bold;">11</span><span
			style="font-size: 10pt; font-weight: bold;">월 </span><span
			lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt; font-weight: bold;">25</span><span
			style="font-size: 10pt; font-weight: bold;">일에 작성되었습니다</span><span
			lang="EN-US"
			style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 10pt; font-weight: bold;">.</span>
	</p>

	<div class="end_terms"></div>
</div>