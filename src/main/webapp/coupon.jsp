<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<title>No Sidebar - Helios by HTML5 UP</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="stylesheet" href="assets/css/button.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>
	
	<style>
		@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
		
		.wrapper {
			background-image: url(images/header.jpg);
		}
		
		.wrapper1 {
			margin-top:-80px;
			width: 1000px;
		    height: 900px;
		    margin-bottom: -10px; 
		}
		
		#header {
		    height: 0px;
		    padding: 0px 0px 100px 0px;	
		    background-image: url(images/header.jpg);		
		}
		
		.item {
			margin : 30px;
			position: relative;
			bottom: -100px;
			left: 45px;
		}

		img {
			width: 300px;
			height: 300px;
		}
		
		h2 {
			font-size: 2em;
			font-weight: bold;
			color: #ffff;
		}
		
		h3 {
			font-size: 1.5em;
			font-weight: bold;
			color: #ffff;
		}
	</style>
</head>

<body class="no-sidebar is-preload">
	<% memberVO vo = (memberVO)session.getAttribute("vo"); %>
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">
			<nav id="nav">
				<ul>
					<li><a href="Main.jsp">메인</a></li>												
					<li><a href="Reservation.jsp">강의장 연장신청</a></li>
					<li><a href="etc_Reservation.jsp">좌석 예약</a></li>
					<li><a href="freeboardSelectCon">게시판</a></li>
					<% if (vo == null) { %>
					<li><a href="Login.html">로그인</a></li>
					<%} else { %>
					<li><a href="LogOutCon">로그아웃</a></li>
					<li><a href="Mypage.jsp">마이페이지</a></li>
					<%} %>
				</ul>
			</nav>
		</div>

		<!-- Main -->
		<div class="wrapper style1">
	 		<div class="wrapper1">
	 			<h2>&emsp;&emsp;보유 포인트 : <%=request.getParameter("point").substring(0,3) %>P</h2>
	 			<div style="display: flex;">
					<div class="item">
						<img src="assets/css/images/coffee.jpg">
						<div style="display: flex;">
							<h3>&emsp;&emsp;&nbsp;100P&emsp;&ensp;</h3>
							<button onclick=" prompt('매수를 입력하세요'); alert('커피쿠폰 획득!!'); location.href='coupon.jsp?point=  0'"><h3>교환</h3></button>
						</div>
					</div>
					<div class="item">
						<img src="assets/css/images/kt.jpg">
						<div style="display: flex;">
							<h3>&emsp;&emsp;&nbsp;300P&emsp;&ensp;</h3>
							<button onclick=" prompt('매수를 입력하세요'); alert('식권 획득!!'); location.href='Main.jsp'"><h3>교환</h3></button>
						</div>
					</div>
					<div class="item">
						<img src="assets/css/images/dukkup.png">
						<div style="display: flex;">
							<h3>&emsp;&emsp;&nbsp;400P&emsp;&ensp;</h3>
							<button onclick=" prompt('매수를 입력하세요'); alert('빵집쿠폰 획득!!'); location.href='Main.jsp'"><h3>교환</h3></button>
						</div>
					</div>
					<div class="item">
						<img src="assets/css/images/chicken.jpg">
						<div style="display: flex;">
							<h3>&emsp;&ensp;&ensp;&nbsp;1500P&emsp;</h3>
							<button onclick=" prompt('매수를 입력하세요'); alert('황금올리브 획득!!'); location.href='Main.jsp' "><h3>교환</h3></button>
						</div>
					</div>
					<div class="item">
						<img src="assets/css/images/boat.jpg">
						<div style="display: flex;">
							<h3>&ensp;&nbsp;&nbsp;&nbsp;9999999P&ensp;</h3>
							<button onclick=" prompt('매수를 입력하세요'); alert('초호화 여객선 획득!!'); location.href='Main.jsp' "><h3>교환</h3></button>
						</div>
					</div>
				</div>
			</div>		
		</div>


			<!-- Footer -->
			<div id="footer">
                        <div class="row">
                            <div class="col-12">
                                <!-- Contact -->
                                    <section class="contact">
                                        <p><h4>운영기관 : (사)스마트인재개발원</h4><br>
                                            사업자등록번호 : 178-82-00065<br>
                                            대표자 : 차준섭 &nbsp;&nbsp;&nbsp; 총괄책임자 : 반수경<br>
                                            주소 : 광주광역시 동구 제봉로 92 (대성학원 1-3층)<br>
                                            전화문의 : 062-710-3257~9<br>
                                            카카오톡 : @인공지능사관학교<br>
                                            상담시간 : 10시 ~ 17시 (월~금)
                                        </p>
                                            <header>
                                                <h3>자세한 교육과정과 후기가 궁금하시다면?</h3>
                                            </header>
                                        <ul class="icons">
                                            <li><a href="https://www.facebook.com/smhrd0317" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                                            <li><a href="https://www.instagram.com/smhrd0317/" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                                            <li><a href="https://www.youtube.com/channel/UCubIpLB7cA9tWIUZ26WFKPg" class="icon brands fa-youtube"><span class="label">Youtube</span></a></li>
                                            <li><a href="https://blog.naver.com/jang0_0yw" ><span class="label">BLOG</span></a></li>
                                        </ul>
                                    </section>
                                <!-- Copyright -->
                                    <div class="copyright">
                                        <ul class="menu">
                                            <li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                                        </ul>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
		</div>

		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.dropotron.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>

</body>

</html>