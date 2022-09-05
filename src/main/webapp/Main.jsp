<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Helios by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css?after" />
		<link rel="stylesheet" href="assets/css/introduce.css?after" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>

		<style>
			@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
			
			.logo {
				position: relative;
				right: 638px;
				top: -40px;			
			}		
			
			footer {
				position:relative;
				right:650px;
				
			}
			h2 {
			    color: #ffffff;
			    font-weight: bold;
			    line-height: 1;	
			}
			}
			header {
				font-family: 'Jeju Gothic', sans-serif;
				font-weight: bold;
			}

			article.item1 {
				background : #243078;
				border-radius : 20px;
			}
			
			#footer {
				padding-top : 20px;
				padding-bottom : 20px;
				background : #141E5B
			}
		</style>
	</head>

	<body class="homepage is-preload">
		<% memberVO vo = (memberVO)session.getAttribute("vo"); %>
		<div id="page-wrapper">
			<!-- Header -->
				<div id="header">
					<!-- Inner -->
						<div class="inner">
							<header>
								<div class="logo">
									<img src="images/logo.png">
								</div>
							</header>
							<footer>
								<a href="#banner" class="button circled scrolly">코스 소개</a>
							</footer>
						</div>

					<!-- Nav -->
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

			<!-- Banner -->
				

			<!-- Carousel -->
				<section class="carousel" id="banner">
					<div class="reel">
						<article class="item1">
							<a href="class/app.html"><img src="class/app.png" style="background-color: #243078;"></a>
							<header>
								<h2>App 특화</h2>
							</header>
							<p>
								<a href="https://app.slack.com/client/T03M0VBV664/C03LDMZE9JQ?selected_team_id=T03M0VBV664"><img src="images/slack.png" style="width:80px;"></a>
							</p>
						</article>

						<article class="item1">
							<a href="class/js_a.html"><img src="class/js.logo.webp" style="background-color: #243078;"></a>
							<header>
								<h2>JS 특화_A</h2>
							</header>
							<p>
								<a href="https://app.slack.com/client/T03M0VBV664/C03LB8GEP0T?selected_team_id=T03M0VBV664"><img src="images/slack.png" style="width:80px;"></a>
							</p>
						</article>

						<article class="item1">
							<a href="class/js_b.html"><img src="class/js.logo.webp" style="background-color: #243078;"></a>
							<header>
								<h2>JS 특화_B</h2>
							</header>
							<p>
								<a href="https://app.slack.com/client/T03M0VBV664/C03L8CMHL05?selected_team_id=T03M0VBV664"><img src="images/slack.png" style="width:80px;"></a>
							</p>
						</article>

						<article class="item1">
							<a href="class/spring_a.html"><img src="class/스프링2.png" style="background-color: #243078;"></a>
							<header>
								<h2>Spring_A</h3>
							</header>
							<p>
								<a href="https://app.slack.com/client/T03M0VBV664/C03KWMZFLQP?selected_team_id=T03M0VBV664"><img src="images/slack.png" style="width:80px;"></a>
							</p>
						</article>

						<article class="item1">
							<a href="class/spring_b.html"><img src="class/스프링2.png" style="background-color: #243078;"></a>
							<header>
								<h2>Spring_B</h2>
							</header>
							<p>
								<a href="https://app.slack.com/client/T03M0VBV664/C03L4N12L2J?selected_team_id=T03M0VBV664"><img src="images/slack.png" style="width:80px;"></a>
							</p>
						</article>

						<article class="item1">
							<a href="class/ai_a.html"><img src="class/ai.png" style="background-color: #243078;"></a>
							<header>
								<h2>사물지능</h2>
							</header>
							<p>
								<a href="https://app.slack.com/client/T03M0VBV664/C03M138RAGG?selected_team_id=T03M0VBV664"><img src="images/slack.png" style="width:80px;"></a>
							</p>
						</article>

						<article class="item1">
							<a href="class/ai_b.html"><img src="class/ai.png" style="background-color: #243078;"></a>
							<header>
								<h2>언어지능</h2>
							</header>
							<p>
								<a href="https://app.slack.com/client/T03M0VBV664/C03M13A10D6?selected_team_id=T03M0VBV664"><img src="images/slack.png" style="width:80px;"></a>
							</p>
						</article>

						<article class="item1">
							<a href="class/ai_c.html"><img src="class/ai.png" style="background-color: #243078;"></a>
							<header>
								<h2>시각지능</h2>
							</header>
							<p>
								<a href="https://app.slack.com/client/T03M0VBV664/C03M13B44QY?selected_team_id=T03M0VBV664"><img src="images/slack.png" style="width:80px;"></a>
							</p>
						</article>

						<article class="item1">
							<a href="class/cloud_A.html"><img src="class/cloud.png" style="background-color: #243078;"></a>
							<header>
								<h2>클라우드_A</h2>
							</header>
							<p>
								<a href="https://app.slack.com/client/T03M0VBV664/C03L8CWDT6Z?selected_team_id=T03M0VBV664"><img src="images/slack.png" style="width:80px;"></a>
							</p>
						</article>

						<article class="item1">
							<a href="class/cloud_B.html"><img src="class/cloud.png" style="background-color: #243078;"></a>
							<header>
								<h2>클라우드_B</h2>
							</header>
							<p>
								<a href="https://app.slack.com/client/T03M0VBV664/C03L4N663V4?selected_team_id=T03M0VBV664"><img src="images/slack.png" style="width:100px;"></a>
							</p>
						</article>
						
					</div>
				</section>

			<!-- Main -->
			<!-- Features -->
			<!-- Footer -->
			<div id="footer">
                        <div class="row">
                            <div class="col-12" style="display:flex;">
                                <!-- Contact -->
                                	<section class="contact" style="margin-left:455px; margin-top:50px;">
                                		 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3262.4034495789397!2d126.92007261560214!3d35.14655766671523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35718d295c3770b1%3A0xcf8f5a2bb8f332b6!2z7J246rO17KeA64ql7IKs6rSA7ZWZ6rWQ!5e0!3m2!1sen!2skr!4v1662080986528!5m2!1sen!2skr" width="500" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                	</section>
                                    <section class="contact" style="margin-left:50px;">
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