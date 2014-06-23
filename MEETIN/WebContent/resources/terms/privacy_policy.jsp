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
	<h2>
		<span style="font-size: 9pt;">&nbsp;</span><span
			style="font-size: 12pt;">1. 수집하는 개인정보의 항목</span>
	</h2>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 9pt;">&nbsp;</span><span
			style="font-size: 10pt;">하나. 회원공통 - 필수</span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;</span><span
			style="font-size: 9pt;">&nbsp;1) 성명</span><br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;2)
			E-Mail</span><br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;3) 비밀번호</span><br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;4)
			휴대전화번호</span><br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;5) 성별,
			나이</span><span style="font-size: 9pt;"> </span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 9pt;">&nbsp;<span
			style="font-size: 10pt;">둘. 회원공통 - 선택</span></span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;1) 자기소개
			정보 (학교, 직장, 프로필)</span><br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;2) 홈페이지</span><br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;3) SNS
			정보 </span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 9pt;">&nbsp;<span
			style="font-size: 10pt;">셋. 개설자 회원 (개인)</span></span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;1) 정산을
			위한 신분증 사본</span><br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;2) 결제
			정산용 통장사본</span><br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;2) 입금 받을
			계좌번호 정보 </span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 9pt;">&nbsp;<span
			style="font-size: 10pt;">넷. 개설자 회원 (법인)</span></span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;1) 정산을
			위한 사업자등록증 사본</span><br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;2) 결제
			정산용 통장 사본 </span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 9pt;">&nbsp;<span
			style="font-size: 10pt;">다섯. 참여 회원</span></span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;- 개인정보의
			수집 및 이용목적</span><br>
		<br>
		<span style="font-size: 9pt;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1) 서비스 이용기록, 접속 기록, 접속 IP 정보, 쿠키,
			결제기록</span><br>
		<span style="font-size: 9pt;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2) 사용 이동통신사, 계좌번호 </span><br>
		<span style="font-size: 9pt;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3) 신용카드, 체크카드 이용 시 카드 정보</span><br>
		<span style="font-size: 9pt;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4) 휴대전화 결제 시 전화번호, 승인번호 등 </span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 10pt;">&nbsp;여섯. 개인정보 수집방법</span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;1) 홈페이지,
			서면, 팩스, 전화, 이메일, 이벤트</span><br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;2) 프로필
			입력, 회원가입 등 생성정보 수집 툴을 통한 정보 수집 </span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 10pt;">&nbsp;일곱. 회원의 기본 인권 침해의 우려가 있는
			정보는 수집하지 않습니다.</span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 9pt;">&nbsp;<span
			style="font-size: 10pt;">여덟. 회원이 제공한 모든 정보는 상기 목적에 필요한 용도 이외에는
				사용되지 않습니다. 수집범위의 변경, 사용목적 및 용도 변경시는 반드시 사전동의를 구할 것입니다.</span></span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<span style="font-size: 9pt;"> </span>
	<h2>
		<span style="font-size: 12pt;">2. 밋인의 개인정보의 수집 및 이용목적</span>
	</h2>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;- 함께 할 사람을
			만나다. “밋인” 서비스는 사용자 등록 없이 서비스를 열람 할 수 있습니다.&nbsp;</span><span
			style="font-size: 9pt;">그러나 회사는 서비스 안의 다양한 콘텐츠 들과 로그인 기반의 양질의
			서비스를 제공하기 위해 이용자 개인의 정보를 수집하고 있습니다.&nbsp;회사는 이용자들의 동이 없이는 절대 개인 정보를
			공개하지 않으며, 수집된 정보는 아래 명시된 내용으로 사용됩니다. </span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 9pt;">&nbsp;<span
			style="font-size: 10pt;">하나. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른
				요금정산</span></span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;1) 콘텐츠
			제공, 맞춤 서비스, 구매 및 요금 결제, 본인 인증 </span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 10pt;">&nbsp;둘. 회원 관리</span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;1) 회원제
			서비스 이용 및 인증 서비스에 따른 본인 확인 (부정이용 방지, 가입 의사 확인, 가입 제한, 개인 식별, 고객 불만 처리)
		</span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 9pt;">&nbsp;<span
			style="font-size: 10pt;">셋. 신규 서비스 개발 및 마케팅</span></span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;1) 고객의
			접속 빈도, 관심사, 서비스 이용 통계 등을 통해 수집된 개인정보를 기반으로 보다 더 유용한 서비스 개발을 위해 사용할 수
			있습니다.&nbsp;회사는 신규 콘텐츠를 개발 시 기존 이용자들이 회사에 제공한 개인정보를 바탕으로 개발해야 할 서비스를
			우선순위를 정하고, 이용자들이 가장 합리적으로 이용할 콘텐츠를 선택하여 제공 할 수 있습니다.</span>
	</p>
	<p>
		<br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;2) 대부분
			무료 이용 (정보 획득, 서비스 이용) 인 서비스를 원활하게 제공하기 위해 광고를 유치할 수 있으며 이때 이용자들의 대한
			정확한 개인정보를 바탕으로 맞춤형으로 전달할 수 있습니다. 회사는 광고회사들로부터 광고를 받아 해당 이용자에게 맞는 광고를
			보여줄 뿐, 광고회사에게 절대로 이용자들의 개인정보를 제공하지 않습니다. </span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h2>
		<span style="font-size: 9pt;">&nbsp;<span
			style="font-size: 10pt;">3. 개인 정보의 보유 및 이용기간</span></span>
	</h2>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 10pt;">&nbsp;하나. </span><span
			style="font-size: 10pt;">회원의 개인정보는 회원가입 후 서비스 이용기간이 종료되거나 회원
			탈퇴 등의 사유로 이메일이나 서면으로 개인정보 삭제를 요구하는 경우 회사 자체 서비스 이용약관 및 개인정보 취급방침에 동의한
			기본정보에 관해서는 회원 탈퇴 시 즉각 파기하고, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 관련 법령에 의하여 명시
			기간 동안 보관관리 후 파기 합니다.</span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 9pt;">&nbsp;<span
			style="font-size: 10pt;">둘. </span></span><span style="font-size: 10pt;">이름,
			E-Mail, 휴대전화번호, 비밀번호, 이용정보, 결제정보 등의 회원정보</span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;1) 보존 기간
			: 회원으로서의 자격을 유지하는 동안 (회원가입부터 회원탈퇴시 까지)</span><br>
		<span style="font-size: 9pt;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(근거 : 회사의 서비스이용약관 및
			개인정보취급방침에 동의) </span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h3>
		<span style="font-size: 9pt;">&nbsp;<span
			style="font-size: 10pt;">셋. </span></span><span style="font-size: 10pt;">관계법령의
			규정에 의한 보관관리</span>
	</h3>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;1) 계약,
			청약철회, 회원서비스 제공 등의 거래에 관한 기록 : 5년</span><br>
		<span style="font-size: 9pt;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(근거 : 전자상거래 등에서의
			소비자보호에 관한 법률)</span>
	</p>
	<p>
		<br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;2) 대금 결제
			및 재화 등의 공급에 관한 기록 : 5년</span><br>
		<span style="font-size: 9pt;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(근거 : 전자 상거래 등에서의
			소비자보호에 관한 법률)</span>
	</p>
	<p>
		<br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;3) 소비자
			불만 또는 분쟁처리에 관한 기록 : 3년</span><br>
		<span style="font-size: 9pt;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(근거 : 전자상거래 등에서의
			소비자보호에 관한 법률)</span>
	</p>
	<p>
		<br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;4) 사이트
			방문기록 : 3개월</span><br>
		<span style="font-size: 9pt;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(근거 : 통신비밀보호법) </span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h2>
		<span style="font-size: 9pt;">&nbsp;</span><span
			style="font-size: 10pt;">넷. </span><span style="font-size: 10pt;">개인
			정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</span>
	</h2>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;1) 회사는
			이용자들에게 특화된 맞춤 서비스를 제공하기 위해서 이용자들의 정보를 저장하고 수시로 불러오는 쿠키를 사용합니다.</span>
	</p>
	<p>
		<br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;2) 쿠키의
			사용목적 (로그인, 로그아웃 체크시 사용 / 게시판 게시물 등록시 사용 / 각종 이벤트 참여 정도 및 방문 회수 파악 등을
			통한 마케팅 및 맞춤 서비스 제공)</span>
	</p>
	<p>
		<br>
		<span style="font-size: 9pt;"> &nbsp;&nbsp;&nbsp;&nbsp;3) 쿠키의
			설치/운영 및 거부</span><br>
		<span style="font-size: 9pt;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 이용자는 쿠키 설치에 대한 선택권을
			가지고 있습니다. 따라서, 이용자는 웹에서 옵션을 설정함으로써 쿠키를 허용하거나, 쿠키가 저장될 때 마다 확인을 거치거나,
			모든 쿠키의 저장을 거부할 수 있습니다.</span><br>
		<span style="font-size: 9pt;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 다만, 쿠키의 저장을 거부할
			경우에는 이용에 어려움이 발생 할 수 있습니다. </span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<h2>
		<span style="font-size: 10pt;">&nbsp;다섯. 개인정보관리책임자 및 담당자</span>
	</h2>
	<span style="font-size: 9pt;"> </span>
	<p>
		<span style="font-size: 9pt;"> </span><b><span
			style="font-size: 9pt;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;개인정보 관리 책임자</span><br>
		<span style="font-size: 9pt;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이름 : 한상윤 </span><br>
		<span style="font-size: 9pt;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;직위 : 관리 책임자</span><br>
		<span style="font-size: 9pt;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;메일 : han@meetin.kr</span><br>
		<br>
		<br>
		<span style="font-size: 9pt;"> </span></b><span style="font-size: 9pt;">
		</span>
	</p>
	<span style="font-size: 9pt;"> </span>
	<div class="end_terms">
		<span style="font-size: 9pt;"> </span>
		<p>
			<span style="font-size: 11pt;"><b><span
					style="font-size: 9pt;">이 약관 및 방침은 2013년 11월 25일에 작성되었습니다.</span></b></span>
		</p>
	</div>
</div>