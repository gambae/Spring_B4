<%@page import="com.VO.memberVO"%>
<%@page import="com.DAO.etc_reservationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<title>No Sidebar - Helios by HTML5 UP</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="stylesheet" href="assets/css/etc_reservation.css?after" />
	<link rel="stylesheet" href="assets/css/button.css?after" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>

	<style>
		@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
		
		.food .food-item:hover {
		    width: 40%;
		    opacity: 1;
		}
		.rsv-date {
			width: 335px;
			margin: -200px 0px 20px 66px;
			background-color : #c6e2ff;
			
		}
		
		.food-item-contents {
			background-color: transparent;
		}
		
		.food-item{
			opacity: 1;
		}
	</style>
</head>

<body class="no-sidebar is-preload">
	<% etc_reservationDAO etc_dao = new etc_reservationDAO(); %>
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
			<form action="#" method="post">
			<input type="date" class="rsv-date" id="now_date" name="reservation_date">
			
            <div class="wrapper1">
				<ul class="food">
				
					<li class="food-item">
						<img class="food-item-cover" src="assets/css/images/AI_cafe.jpg">
						<div class="food-item-contents">
							<h2 style="display:inline">AI_Cafe</h2>
							<h4>예약 인원</h4>
							<p>
							<div id="reservation" style="display:flex">
								<button type="button" onclick="location.href='etc_ReservationSelectCon?location=Cafe&date=2022-09-05'" class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px; margin-right:150px;">
									<h3><%= etc_dao.reservationCount("Cafe") %>명</h3>
								</button>
								
								<% if (vo != null) { %>
									<input type="submit" value="예약" formaction="Cafe.jsp" style="padding:0px 30px 0px 30px;">
								<% } else { %>
									<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">예약</button>
								<% } %>
							</div>
							</p>
						</div>
					</li>
					
					<li class="food-item">
						<img class="food-item-cover" src="assets/css/images/AI_Lab2.jpg">
						<div class="food-item-contents">
							<h2 style="display:inline">AI_lab(2F)</h2>
							<h4>예약 인원</h4>
							<p>
							<div id="reservation" style="display:flex">
								<button class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px; margin-right:150px;">
									<h3>7명</h3>
								</button>
								
								<% if (vo != null) { %>
									<input type="submit" value="예약" formaction="Ai_lab_2f.jsp" style="padding:0px 30px 0px 30px;">
								<% } else { %>
									<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">예약</button>
								<% } %>
							</div>
							</p>
						</div>
					</li>
					
					<li class="food-item">
						<img class="food-item-cover" src="assets/css/images/휴게실_2.jpg">
						<div class="food-item-contents">
							<h2 style="display:inline">휴게실(2F)</h2>
							<h4>예약 인원</h4>
							<p>
							<div id="reservation" style="display:flex">
								<button class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px; margin-right:150px;">
									<h3>4명</h3>
								</button>
								
								<% if (vo != null) { %>
									<input type="submit" value="예약" formaction="Retiringroom(2F).jsp" style="padding:0px 30px 0px 30px;">
								<% } else { %>
									<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">예약</button>
								<% } %>
							</div>
							</p>
							</p>
						</div>
					</li>
					
					<li class="food-item">
						<img class="food-item-cover" src="assets/css/images/AI_Lab3.jpg">
						<div class="food-item-contents">
							<h2 style="display:inline">AI_lab(3F)</h2>
							<h4>예약 인원</h4>
							<p>
							<div id="reservation" style="display:flex">
								<button class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px; margin-right:150px;">
									<h3>11명</h3>
								</button>
								
								<% if (vo != null) { %>
									<input type="submit" value="예약" formaction="AI_lab(3F).jsp" style="padding:0px 30px 0px 30px;">
								<% } else { %>
									<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">예약</button>
								<% } %>
							</div>
							</p>
						</div>
					</li>
					
					<li class="food-item">
						<img class="food-item-cover" src="assets/css/images/휴게실_3.jpg">
						<div class="food-item-contents">
							<h2 style="display:inline">휴게실(3F)</h2>
							<h4>신청 인원</h4>
							<p>
							<div id="reservation" style="display:flex">
								<button class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px; margin-right:150px;">
									<h3>9명</h3>
								</button>
								
								<% if (vo != null) { %>
									<input type="submit" value="예약" formaction="Retiringroom(3F).jsp" style="padding:0px 30px 0px 30px;">
								<% } else { %>
									<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">예약</button>
								<% } %>
							</div>
							</p>
						</div>
					</li>
				</ul>			
			</div>
		</form>

			<!-- Footer -->
			<div id="footer">
				<div class="container">

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
                                    
                            </div>
                        </div>
				</div>
			</div>
		</div>
	
		<!-- Scripts -->
		<script>
			var today = new Date();
			document.getElementById('now_date').valueAsDate= today;
		</script>
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