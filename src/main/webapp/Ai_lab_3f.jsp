<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.VO.memberVO"%>
<%@page import="com.DAO.etc_reservationDAO"%>
<!DOCTYPE HTML>
<html>

<head>
	<title>No Sidebar - Helios by HTML5 UP</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="stylesheet" href="assets/css/etc_reservation.css" />
	<link rel="stylesheet" href="assets/css/button.css" />
    <link rel="stylesheet" href="assets/css/ai_lab_3f.css?after" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>

	<style>
		@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
        h1 {
            font-size: 3em;
        }
        h2 {
            font-size: 2em;
        }
        h3 {
            font-size: 1.5em;
        }
	</style>
</head>

<body class="no-sidebar is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">
			<nav id="nav">
				<ul>
					<li><a href="Main.jsp">메인</a></li>
					<li><a href="Reservation.jsp">강의장 연장 신청</a></li>
					<li><a href="etc_Reservation.jsp">좌석 예약</a></li>
					<li><a href="no-sidebar.html">자유게시판</a></li>
				</ul>
			</nav>
		</div>

		<!-- Main -->
		<div class="wrapper style1">
            <div class="wrapper1">
                <div class="container">
                    <div class="main-container">
                        <div class="top"></div> 
                        <div class="table"></div>
                        <div class="table1"></div>
                        <div class="table2"></div>
                        <div class="table3"></div>
                        <div class="table4"></div>
                        <div class="table5"></div>
                    
                        <label class="checkbox-wrap" style="left: 60px; top: 100px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">1</i>
                        </label>
                    
                        <label class="checkbox-wrap" style="left: 120px; bottom: -100px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">2</i>
                        </label>
                    
                        <label class="checkbox-wrap" style="left: -60px; bottom: -310px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">3</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: 0px; bottom: -310px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">4</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -182px; bottom: -400px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">5</i>
                        </label>
                    
                        <label class="checkbox-wrap" style="left: -122px; bottom: -400px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">6</i>
                        </label>
                    
                        <label class="checkbox-wrap" style="left: -80px; bottom: -400px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">7</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -362px; bottom: -610px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">8</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -305px; bottom: -610px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">9</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -260px; bottom: -610px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">10</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -100px; bottom: 40px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">11</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -161px; bottom: -50px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">12</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: 20px; bottom: 40px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">13</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -40px; bottom: -50px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">14</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -300px; bottom: -260px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">15</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -200px; bottom: -260px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">16</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: 70px; bottom: 0px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">17</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: 130px; bottom: 0px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">18</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -52px; bottom: -210px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">19</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 10px; bottom: -210px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">20</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -174px; bottom: -300px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">21</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 1170px; bottom: -241px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">22</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 985px; bottom: -450px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">23</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 1048px; bottom: -450px;">
                            <input type="checkbox" name="" value="">
                            <i class="check-icon">24</i>
                        </label>
                        								
                    </div>

                    <div class="sub-container">
                        <div class="sub-inner">
                            <h1>&nbsp;AI_lab(3F)</h1>
                            <h2>&nbsp;&nbsp;2022-08-24</h2><br>
                            <select style="width: 250px; margin-left: 20px;">
                                <option>
                                    19:00
                                </option>
                            </select>
                            <br><br>
                            <input type="submit" value="예약" class="w-btn w-btn-gra1" style="margin-left: 20px; width:180px; height: 70px; font-size: 100%;">
                            <br><br><br><br>
                            <h3>&emsp;&nbsp;예약 명단</h3>
                        </div>
                    </div>
                </div>
			</div>	
		


			<!-- Footer -->
			<div id="footer">
				<div class="container">

					<div class="row">
						<div class="col-12">

							<!-- Contact -->
							<section class="contact">
								<header>
									<h3>Nisl turpis nascetur interdum?</h3>
								</header>
								<p>Urna nisl non quis interdum mus ornare ridiculus egestas ridiculus lobortis vivamus
									tempor aliquet.</p>
								<ul class="icons">
									<li><a href="#" class="icon brands fa-twitter"><span
												class="label">Twitter</span></a>
									</li>
									<li><a href="#" class="icon brands fa-facebook-f"><span
												class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands fa-instagram"><span
												class="label">Instagram</span></a></li>
									<li><a href="#" class="icon brands fa-pinterest"><span
												class="label">Pinterest</span></a></li>
									<li><a href="#" class="icon brands fa-dribbble"><span
												class="label">Dribbble</span></a>
									</li>
									<li><a href="#" class="icon brands fa-linkedin-in"><span
												class="label">Linkedin</span></a></li>
								</ul>
							</section>

							<!-- Copyright -->
							<div class="copyright">
								<ul class="menu">
									<li>&copy; Untitled. All rights reserved.</li>
									<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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