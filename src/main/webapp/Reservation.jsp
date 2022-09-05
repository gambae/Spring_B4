<%@page import="com.DAO.reservationDAO"%>
<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="stylesheet" href="assets/css/reservation.css?after" />
	<link rel="stylesheet" href="assets/css/button.css?after" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>

	<style>
		@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
		
		.selectbox {
			padding: 0px 50px 0px 30px;
			height: 50px;
			margin-right:10px;
		}

		.food .food-item:hover {
		    width: 70%;
		    opacity: 1;
		}
		
		
	</style>
</head>

<body class="no-sidebar is-preload">
	
	<% 
		memberVO vo = (memberVO)session.getAttribute("vo"); 
		reservationDAO dao = new reservationDAO();
	%>
	
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
				<form action="ReservationCon" method="post">
					<ul class="food">
					
						<li class="food-item">
								<img class="food-item-cover" src="assets/css/images/SpringA.jpg">
								<div class="food-item-contents">
									<h2 style="display:inline">Spring_A</h2>
									<h4>신청 인원</h4>
									<p>
										<div id="reservation" style="display:flex">
											<button type="button" onclick="location.href='ReservationSelectCon?cls=Spring_A'" class="w-btn w-btn-gra3 w-btn-gra-anim" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px; margin-right:140px" >
												<h3><%= dao.reservationCount("Spring_A") %>명</h3>
											</button>
					
											<select name="time"  class="selectbox">
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
											</select>
							
											<% if (vo != null && dao.repetitionCheck(vo.getId()) == 0) { %>
												<input type="submit"  value="신청" formaction="ReservationCon?cls=Spring_A" onclick="alert('신청 완료')" style="height: 50px; padding: 10px 30px 10px 30px;">
											<% } else if (vo == null) { %>
												<button type="button" onclick="alert('로그인 후 신청 가능합니다.')" class="submitbox">신청</button>
											<% } else { %>
												<button type="button" onclick="alert('이미 신청한 아이디입니다.')" class="submitbox">신청</button>
											<% } %>
										</div>
									</p>
							</div>
						</li>
						
						<li class="food-item">
								<img class="food-item-cover" src="assets/css/images/SpringB.jpg">
								<div class="food-item-contents">
									<h2 style="display:inline">Spring_B</h2>
									<h4>신청 인원</h4>
									<p>
										<div id="reservation"style="display:flex">
											<button type="button" onclick="location.href='ReservationSelectCon?cls=Spring_B'"  class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px;" >
												<h3>5명</h3>
											</button>
					
											<select name="time"  class="selectbox">
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
											</select>
							
											<% if (vo != null && dao.repetitionCheck(vo.getId()) == 0) { %>
												<input type="submit" value="신청" formaction="ReservationCon?cls=Spring_B" onclick="alert('신청 완료')" style="white-space: nowrap; height: 50px; padding: 0px 30px 0px 30px; ">
											<% } else if (vo == null) { %>
												<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">신청</button>
											<% } else { %>
												<button type="button" onclick="alert('이미 신청한 아이디입니다.')">신청</button>
											<% } %>
										</div>
									</p>
							</div>
						</li>
						
						<li class="food-item">
								<img class="food-item-cover" src="assets/css/images/JS_A.jpg">
								<div class="food-item-contents">
									<h2 style="display:inline">JavaScript_A</h2>
									<h4>신청 인원</h4>
									<p>
										<div id="reservation"style="display:flex">
											<button type="button" onclick="location.href='ReservationSelectCon?cls=JavaScript_A'" class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px;" >
												<h3>8명</h3>
											</button>
					
											<select name="time"  class="selectbox">
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
											</select>
							
											<% if (vo != null && dao.repetitionCheck(vo.getId()) == 0) { %>
												<input type="submit" value="신청" formaction="ReservationCon?cls=JavaScript_A" onclick="alert('신청 완료')" style="white-space: nowrap; height: 50px; padding: 0px 30px 0px 30px; ">
											<% } else if (vo == null) { %>
												<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">신청</button>
											<% } else { %>
												<button type="button" onclick="alert('이미 신청한 아이디입니다.')">신청</button>
											<% } %>
										</div>
									</p>
							</div>
						</li>
						
						<li class="food-item">
								<img class="food-item-cover" src="assets/css/images/JS_B.jpg">
								<div class="food-item-contents">
									<h2 style="display:inline">JavaScript_B</h2>
									<h4>신청 인원</h4>
									<p>
										<div id="reservation"style="display:flex">
											<button type="button" onclick="location.href='ReservationSelectCon?cls=JavaScript_B'" class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px;" >
												<h3>10명</h3>
											</button>
					
											<select name="time"  class="selectbox">
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
											</select>
							
											<% if (vo != null && dao.repetitionCheck(vo.getId()) == 0) { %>
												<input type="submit" value="신청" formaction="ReservationCon?cls=JavaScript_B" onclick="alert('신청 완료')" style="white-space: nowrap; height: 50px; padding: 0px 30px 0px 30px; ">
											<% } else if (vo == null) { %>
												<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">신청</button>
											<% } else { %>
												<button type="button" onclick="alert('이미 신청한 아이디입니다.')">신청</button>
											<% } %>
										</div>
									</p>
							</div>
						</li>
						
						<li class="food-item">
								<img class="food-item-cover" src="assets/css/images/APP.jpg">
								<div class="food-item-contents">
									<h2 style="display:inline">App특화</h2>
									<h4>신청 인원</h4>
									<p>
										<div id="reservation"style="display:flex">
											<button type="button" onclick="location.href='ReservationSelectCon?cls=App특화'" class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px;" >
												<h3>6명</h3>
											</button>
					
											<select name="time"  class="selectbox">
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
											</select>
							
											<% if (vo != null && dao.repetitionCheck(vo.getId()) == 0) { %>
												<input type="submit" value="신청" formaction="ReservationCon?cls=App특화" onclick="alert('신청 완료')" style="white-space: nowrap; height: 50px; padding: 0px 30px 0px 30px; ">
											<% } else if (vo == null) { %>
												<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">신청</button>
											<% } else { %>
												<button type="button" onclick="alert('이미 신청한 아이디입니다.')">신청</button>
											<% } %>
										</div>
									</p>
							</div>
						</li>
						
					</ul>
				</div>
				
				<div class="wrapper2">
					<ul class="food">
					
						<li class="food-item">
								<img class="food-item-cover" src="assets/css/images/사물지능.jpg">
								<div class="food-item-contents">
									<h2 style="display:inline">사물지능</h2>
									<h4>신청 인원</h4>
									<p>
										<div id="reservation"style="display:flex">
											<button type="button" onclick="location.href='ReservationSelectCon?cls=사물지능'" class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px;" >
												<h3>12명</h3>
											</button>
					
											<select name="time"  class="selectbox">
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
											</select>
							
											<% if (vo != null && dao.repetitionCheck(vo.getId()) == 0) { %>
												<input type="submit" value="신청" formaction="ReservationCon?cls=사물지능" onclick="alert('신청 완료')" style="white-space: nowrap; height: 50px; padding: 0px 30px 0px 30px; ">
											<% } else if (vo == null) { %>
												<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">신청</button>
											<% } else { %>
												<button type="button" onclick="alert('이미 신청한 아이디입니다.')">신청</button>
											<% } %>
										</div>
									</p>
							</div>
						</li>
						
						<li class="food-item">
								<img class="food-item-cover" src="assets/css/images/시각지능.jpg">
								<div class="food-item-contents">
									<h2 style="display:inline">시각지능</h2>
									<h4>신청 인원</h4>
									<p>
										<div id="reservation"style="display:flex">
											<button type="button" onclick="location.href='ReservationSelectCon?cls=시각지능'" class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px;" >
												<h3>7명</h3>
											</button>
					
											<select name="time"  class="selectbox">
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
											</select>
							
											<% if (vo != null && dao.repetitionCheck(vo.getId()) == 0) { %>
												<input type="submit" value="신청" formaction="ReservationCon?cls=시각지능" onclick="alert('신청 완료')" style="white-space: nowrap; height: 50px; padding: 0px 30px 0px 30px; ">
											<% } else if (vo == null) { %>
												<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">신청</button>
											<% } else { %>
												<button type="button" onclick="alert('이미 신청한 아이디입니다.')">신청</button>
											<% } %>
										</div>
									</p>
							</div>
						</li>
						
						<li class="food-item">
								<img class="food-item-cover" src="assets/css/images/강의실7.jpg">
								<div class="food-item-contents">
									<h2 style="display:inline">언어지능</h2>
									<h4>신청 인원</h4>
									<p>
										<div id="reservation"style="display:flex">
											<button type="button" onclick="location.href='ReservationSelectCon?cls=언어지능'" class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px;" >
												<h3>9명</h3>
											</button>
					
											<select name="time"  class="selectbox">
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
											</select>
							
											<% if (vo != null && dao.repetitionCheck(vo.getId()) == 0) { %>
												<input type="submit" value="신청" formaction="ReservationCon?cls=언어지능" onclick="alert('신청 완료')" style="white-space: nowrap; height: 50px; padding: 0px 30px 0px 30px; ">
											<% } else if (vo == null) { %>
												<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">신청</button>
											<% } else { %>
												<button type="button" onclick="alert('이미 신청한 아이디입니다.')">신청</button>
											<% } %>
										</div>
									</p>
							</div>
						</li>
						
						<li class="food-item">
								<img class="food-item-cover" src="assets/css/images/CloudA.jpg">
								<div class="food-item-contents">
									<h2 style="display:inline">Cloud_A</h2>
									<h4>신청 인원</h4>
									<p>
										<div id="reservation"style="display:flex">
											<button type="button" onclick="location.href='ReservationSelectCon?cls=Cloud_A'" class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px;" >
												<h3>11명</h3>
											</button>
					
											<select name="time"  class="selectbox">
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
											</select>
							
											<% if (vo != null && dao.repetitionCheck(vo.getId()) == 0) { %>
												<input type="submit" value="신청" formaction="ReservationCon?cls=Cloud_A" onclick="alert('신청 완료')" style="white-space: nowrap; height: 50px; padding: 0px 30px 0px 30px; ">
											<% } else if (vo == null) { %>
												<button type="button" onclick="alert('로그인 후 신청 가능합니다.')">신청</button>
											<% } else { %>
												<button type="button" onclick="alert('이미 신청한 아이디입니다.')">신청</button>
											<% } %>
										</div>
									</p>
							</div>
						</li>
						
						<li class="food-item">
								<img class="food-item-cover" src="assets/css/images/CloudB.jpg">
								<div class="food-item-contents">
									<h2 style="display:inline">Cloud_B</h2>
									<h4>신청 인원</h4>
									<p>
										<div id="reservation"style="display:flex">
											<button type="button" onclick="location.href='ReservationSelectCon?cls=Cloud_B'" class="w-btn w-btn-gra3 w-btn-gra-anim" type="button" style="white-space: nowrap; padding-bottom: 40px; padding-top: 10px;" >
												<h3>3명</h3>
											</button>
					
											<select name="time"  class="selectbox">
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
											</select>
							
											<% if (vo != null && dao.repetitionCheck(vo.getId()) == 0) { %>
												<input type="submit"  class="sb"  value="신청" formaction="ReservationCon?cls=Cloud_B" onclick="alert('신청 완료')" style="white-space: nowrap; height: 50px; padding: 0px 30px 0px 30px; ">
											<% } else if (vo == null) { %>
												<button type="button"  class="sb"  onclick="alert('로그인 후 신청 가능합니다.')">신청</button>
											<% } else { %>
												<button type="button"  class="sb"  onclick="alert('이미 신청한 아이디입니다.')">신청</button>
											<% } %>
										</div>
									</p>
							</div>
						</li>
					</ul>
				</form>
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