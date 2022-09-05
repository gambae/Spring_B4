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
	<link rel="stylesheet" href="assets/css/etc_reservation.css" />
	<link rel="stylesheet" href="assets/css/button.css" />
    <link rel="stylesheet" href="assets/css/ai_lab_2f.css?after" />
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
	
	<script>
			/*
			if (self.name != 'reload') {
		         self.name = 'reload';
		         self.location.reload(true);
		     }
		     else self.name = ''; 
			*/
	</script>
	
	<%	
		etc_reservationDAO dao = new etc_reservationDAO();
		memberVO vo = (memberVO) session.getAttribute("vo");

		String date = request.getParameter("reservation_date");			
	%>
		
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">
			<nav id="nav">
				<ul>
					<li><a href="Main.jsp">Home</a></li>
					<li><a href="Reservation.jsp">강의장 연장 신청</a></li>
					<li><a href="etc_Reservation.jsp">좌석 예약</a></li>
					<li><a href="no-sidebar.html">자유게시판</a></li>
				</ul>
			</nav>
		</div>

		<!-- Main -->
		<div class="wrapper style1">
            <div class="wrapper1">
            	<form action="#" method="post">
	                <div class="container">
	                    <div class="main-container">
	                        <div class="top"></div>
	                        <div class="right"></div>
	                        <div class="table"></div>
	                    
	                        <label class="checkbox-wrap" style="left: 30px; top: 10px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",1) == 0 && dao.reservedSeat(date,"AI_lab(2F)",25) == 0) { %>
								<input type="checkbox" name="seat" value="1" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">1</i>
							</label>
										
							<label class="checkbox-wrap" style="left: 50px; bottom: -10px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",2) == 0) { %>
								<input type="checkbox" name="seat" value="2" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">2</i>
							</label>
										
							<label class="checkbox-wrap" style="left: 310px; bottom: -10px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",3) == 0) { %>
								<input type="checkbox" name="seat" value="3" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">3</i>
							</label>
											
							<label class="checkbox-wrap" style="left: 330px; bottom: -10	px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",4) == 0) { %>
								<input type="checkbox" name="seat" value="4" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">4</i>
							</label>
											
							<label class="checkbox-wrap" style="left: 361px; bottom: -60px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",5) == 0) { %>
								<input type="checkbox" name="seat" value="5" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">5</i>
							</label>
										
							<label class="checkbox-wrap" style="left: 300px; bottom: -130px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",6) == 0) { %>
								<input type="checkbox" name="seat" value="6" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">6</i>
							</label>
										
							<label class="checkbox-wrap" style="left: 240px; bottom: -200px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",7) == 0) { %>
								<input type="checkbox" name="seat" value="7" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">7</i>
							</label>
											
							<label class="checkbox-wrap" style="left: 179px; bottom: -270px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",8) == 0) { %>
								<input type="checkbox" name="seat" value="8" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">8</i>
							</label>
											
							<label class="checkbox-wrap" style="left: 118px; bottom: -340px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",9) == 0) { %>
								<input type="checkbox" name="seat" value="9" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">9</i>
							</label>
											
							<label class="checkbox-wrap" style="left: 57px; bottom: -410px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",10) == 0) { %>
								<input type="checkbox" name="seat" value="10" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">10</i>
							</label>
											
							<label class="checkbox-wrap" style="left: 57px; bottom: -420px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",11) == 0) { %>
								<input type="checkbox" name="seat" value="11" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">11</i>
							</label>
											
							<label class="checkbox-wrap" style="left: 550px; bottom: -495px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",12) == 0) { %>
								<input type="checkbox" name="seat" value="12" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">12</i>
							</label>
											
							<label class="checkbox-wrap"  style="left: 62px; bottom: -490px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",13) == 0) { %>
								<input type="checkbox" name="seat" value="13" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">13</i>
							</label>
											
							<label class="checkbox-wrap" style="left: 2px; bottom: -390px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",14) == 0) { %>
								<input type="checkbox" name="seat" value="14" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">14</i>
							</label>
											
							<label class="checkbox-wrap" style="left: -58px; bottom: -300px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",15) == 0) { %>
								<input type="checkbox" name="seat" value="15" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">15</i>
							</label>
											
							<label class="checkbox-wrap" style="left: -120px; bottom: -200px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",16) == 0) { %>
								<input type="checkbox" name="seat" value="16" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">16</i>
							</label>
											
							<label class="checkbox-wrap" style="left: -180px; bottom: -100px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",17) == 0) { %>
								<input type="checkbox" name="seat" value="17" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">17</i>
							</label>
											
							<label class="checkbox-wrap" style="left: -130px; bottom: -1px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",18) == 0) { %>
								<input type="checkbox" name="seat" value="18" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">18</i>
							</label>
							
		                   <label class="checkbox-wrap" style="left: -93px; bottom: -100px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",19) == 0) { %>
								<input type="checkbox" name="seat" value="19" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">19</i>
							</label>
							
		                    <label class="checkbox-wrap" style="left: -150px; bottom: -200px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",20) == 0) { %>
								<input type="checkbox" name="seat" value="20" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">20</i>
							</label>
							
		                    <label class="checkbox-wrap" style="left: -210px; bottom: -300px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",21) == 0) { %>
								<input type="checkbox" name="seat" value="21" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">21</i>
							</label>
							
		                    <label class="checkbox-wrap" style="left: 400px; bottom: -330px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",22) == 0) { %>
								<input type="checkbox" name="seat" value="22" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">22</i>
							</label>
							
		                    <label class="checkbox-wrap" style="left: 338px; bottom: -430px;">
							<% if (dao.reservedSeat(date,"AI_lab(2F)",23) == 0) { %>
								<input type="checkbox" name="seat" value="23" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">23</i>
							</label>
							
		                   
							
							
	                    </div>
	
	                    <div class="sub-container">
	                        <div class="sub-inner">
	                            <h1>&nbsp;AI_lab(2F)</h1>
	                            <h2>&nbsp;&nbsp;<%=date %></h2><br>
	                            <select name="checkout" style="width: 250px; margin-left: 20px;">
	                                <option value="19:00">19:00</option>
									<option value="20:00">20:00</option>
									<option value="21:00">21:00</option>
									<option value="22:00">22:00</option>
									<option value="23:00">23:00</option>
	                             </select>
	                            <br><br>
	                            <% if (dao.repetitionCheck(vo.getId(),date) == 0) { %>
		                        	<input type="submit" value="예약" onclick="alert('예약 되었습니다')" formaction="etc_ReservationCon?location=AI_lab(2F)&date=<%=date %>"class="w-btn w-btn-gra1" style="margin-left: 20px; width:180px; height: 70px; font-size: 100%;">
		                         <% } else { %>
									<input type="button" value="예약하기" onclick="alert('이미 예약하셨습니다')">
								<% } %>
	                            <br><br><br><br>
	                            <a href="etc_ReservationSelectCon?location=AI_lab(2F)&date=<%=date %>"><h3>&nbsp;예약 명단</h3></a>
	                        </div>
	                    </div>
	                </div>
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
                                    
                            </div>
                        </div>
			</div>
		</div>

		<!-- Scripts -->
		
		<script>
				function doOpenCheck(chk) {
					var obj = document.getElementsByName("seat");
					for(var i=0; i<obj.length; i++){
						if(obj[i] != chk){
							obj[i].checked = false;
						}
					}
				}
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