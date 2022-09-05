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
    <link rel="stylesheet" href="assets/css/cafe.css?after" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>

	<style>
		
		@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
        h1 {
            font-size: 3em;
        }
        h2 {
            font-size: 1.5em;
        }
        h3 {
            font-size: 1.5em;
        }
        
        .sb {
        	padding : 20px 20px 20px 20px;
        	margin-left: 10px;
        }
	</style>
</head>

<body class="no-sidebar is-preload">
	<script>
			
			if (self.name != 'reload') {
		         self.name = 'reload';
		         self.location.reload(true);
		     }
		     else self.name = ''; 
			
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
                <div class="container">
                    <div class="main-container">
                        <div class="top"></div> 
                        <div class="table"></div>
                        <div class="table1"></div>
                        <div class="table2"></div>
                        <div class="table3"></div>
                        <div class="table4"></div>
                        <div class="table5"></div>
                        <div class="table6"></div>
                        <div class="table7"></div>
                        <div class="table8"></div>
                        <div class="table9"></div>
                        <div class="table10"></div>
                        <div class="table11"></div>
                        <div class="table12"></div>
                        <div class="table13"></div>
                        <div class="table14"></div>
                        <div class="table15"></div>
                        <div class="table16"></div>
                        <form action="#" method="post">

                    
                        <label class="checkbox-wrap" style="left: 0px; top: 0px;">
                            <% if (dao.reservedSeat(date,"Cafe",1) == 0) { %>
								<input type="checkbox" name="seat" value="1" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">1</i>
                        </label>
                    
                        <label class="checkbox-wrap" style="left: -20px; bottom: 0px;">
                            <% if (dao.reservedSeat(date,"Cafe",2) == 0) { %>
								<input type="checkbox" name="seat" value="2" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">2</i>
                        </label>
                    
                        <label class="checkbox-wrap" style="left: -20px; bottom: 0px;">
                            <% if (dao.reservedSeat(date,"Cafe",3) == 0) { %>
								<input type="checkbox" name="seat" value="3" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">3</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -40px; bottom: 0px;">
                            <% if (dao.reservedSeat(date,"Cafe",4) == 0) { %>
								<input type="checkbox" name="seat" value="4" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">4</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -40px; bottom: 0px;">
                            <% if (dao.reservedSeat(date,"Cafe",5) == 0) { %>
								<input type="checkbox" name="seat" value="5" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">5</i>
                        </label>
                    
                        <label class="checkbox-wrap" style="left: -60px; bottom: 0px;">
                            <% if (dao.reservedSeat(date,"Cafe",6) == 0) { %>
								<input type="checkbox" name="seat" value="6" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">6</i>
                        </label>
                    
                        <label class="checkbox-wrap" style="left: -60px; bottom: 0px;">
                            <% if (dao.reservedSeat(date,"Cafe",7) == 0) { %>
								<input type="checkbox" name="seat" value="7" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">7</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -80px; bottom: 0px;">
                            <% if (dao.reservedSeat(date,"Cafe",8) == 0) { %>
								<input type="checkbox" name="seat" value="8" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">8</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -65px; bottom: 40px;">
                            <% if (dao.reservedSeat(date,"Cafe",9) == 0) { %>
								<input type="checkbox" name="seat" value="9" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">9</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -5px; bottom: -50px;">
                            <% if (dao.reservedSeat(date,"Cafe",10) == 0) { %>
								<input type="checkbox" name="seat" value="10" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">10</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: -35px; bottom: 40px;">
                            <% if (dao.reservedSeat(date,"Cafe",11) == 0) { %>
								<input type="checkbox" name="seat" value="11" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">11</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: 20px; bottom: -50px;">
                            <% if (dao.reservedSeat(date,"Cafe",12) == 0) { %>
								<input type="checkbox" name="seat" value="12" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">12</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: 2px; bottom: 50px;">
                            <% if (dao.reservedSeat(date,"Cafe",13) == 0) { %>
								<input type="checkbox" name="seat" value="13" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">13</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: 60px; bottom: -50px;">
                            <% if (dao.reservedSeat(date,"Cafe",14) == 0) { %>
								<input type="checkbox" name="seat" value="14" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">14</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: 40px; bottom: 50px;">
                            <% if (dao.reservedSeat(date,"Cafe",15) == 0) { %>
								<input type="checkbox" name="seat" value="15" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">15</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: 100px; bottom: -50px;">
                            <% if (dao.reservedSeat(date,"Cafe",16) == 0) { %>
								<input type="checkbox" name="seat" value="16" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">16</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: 120px; bottom: 50px;">
                            <% if (dao.reservedSeat(date,"Cafe",17) == 0 && dao.reservedSeat(date,"Cafe",54) == 0 ) { %>
								<input type="checkbox" name="seat" value="17" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">17</i>
                        </label>
                        
                        <label class="checkbox-wrap" style="left: 60px; bottom: -50px;">
                            <% if (dao.reservedSeat(date,"Cafe",18) == 0 && dao.reservedSeat(date,"Cafe",54) == 0 ) { %>
								<input type="checkbox" name="seat" value="18" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">18</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -1px; bottom: -150px;">
                            <% if (dao.reservedSeat(date,"Cafe)",19) == 0 && dao.reservedSeat(date,"Cafe",54) == 0 ) { %>
								<input type="checkbox" name="seat" value="19" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">19</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 55px; bottom: 50px;">
                            <% if (dao.reservedSeat(date,"Cafe",20) == 0 && dao.reservedSeat(date,"Cafe",54) == 0 ) { %>
								<input type="checkbox" name="seat" value="20" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">20</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -5px; bottom: -50px;">
                            <% if (dao.reservedSeat(date,"Cafe",21) == 0 && dao.reservedSeat(date,"Cafe",54) == 0 ) { %>
								<input type="checkbox" name="seat" value="21" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">21</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -65px; bottom: -150px;">
                            <% if (dao.reservedSeat(date,"Cafe",22) == 0 && dao.reservedSeat(date,"Cafe",54) == 0 ) { %>
								<input type="checkbox" name="seat" value="22" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">22</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -45px; bottom: 50px;">
                            <% if (dao.reservedSeat(date,"Cafe",23) == 0 && dao.reservedSeat(date,"Cafe",55) == 0 ) { %>
								<input type="checkbox" name="seat" value="23" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">23</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -106px; bottom: -50px;">
                            <% if (dao.reservedSeat(date,"Cafe",24) == 0 && dao.reservedSeat(date,"Cafe",55) == 0 ) { %>
								<input type="checkbox" name="seat" value="24" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">24</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 1295px; bottom: -90px;">
                            <% if (dao.reservedSeat(date,"Cafe",25) == 0 && dao.reservedSeat(date,"Cafe",55) == 0 ) { %>
								<input type="checkbox" name="seat" value="25" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">25</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 1350px; bottom: 110px;">
                            <% if (dao.reservedSeat(date,"Cafe",26) == 0 && dao.reservedSeat(date,"Cafe",55) == 0 ) { %>
								<input type="checkbox" name="seat" value="26" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">26</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 1289px; bottom: 12px;">
                            <% if (dao.reservedSeat(date,"Cafe",27) == 0 && dao.reservedSeat(date,"Cafe",55) == 0 ) { %>
								<input type="checkbox" name="seat" value="27" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">27</i>
                        </label>
                        <label class="checkbox-wrap" style="left: 1230px; bottom: -90px;">
                            <% if (dao.reservedSeat(date,"Cafe",28) == 0 && dao.reservedSeat(date,"Cafe",55) == 0 ) { %>
								<input type="checkbox" name="seat" value="28" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">28</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -185px; bottom: -150px;">
                            <% if (dao.reservedSeat(date,"Cafe",29) == 0 && dao.reservedSeat(date,"Cafe",53) == 0 ) { %>
								<input type="checkbox" name="seat" value="29" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">29</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -246px; bottom: -260px;">
                            <% if (dao.reservedSeat(date,"Cafe",30) == 0 && dao.reservedSeat(date,"Cafe",53) == 0 ) { %>
								<input type="checkbox" name="seat" value="30" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">30</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -80px; bottom: -150px;">
                            <% if (dao.reservedSeat(date,"Cafe",31) == 0 && dao.reservedSeat(date,"Cafe",53) == 0 ) { %>
								<input type="checkbox" name="seat" value="31" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">31</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -141px; bottom: -260px;">
                            <% if (dao.reservedSeat(date,"Cafe",32) == 0 && dao.reservedSeat(date,"Cafe",53) == 0 ) { %>
								<input type="checkbox" name="seat" value="32" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">32</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 145px; bottom: -240px;">
                            <% if (dao.reservedSeat(date,"Cafe",33) == 0) { %>
								<input type="checkbox" name="seat" value="33" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">33</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 194px; bottom: -310px;">
                            <% if (dao.reservedSeat(date,"Cafe",34) == 0) { %>
								<input type="checkbox" name="seat" value="34" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">34</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 175px; bottom: -240px;">
                            <% if (dao.reservedSeat(date,"Cafe",35) == 0) { %>
								<input type="checkbox" name="seat" value="35" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">35</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 220px; bottom: -310px;">
                            <% if (dao.reservedSeat(date,"Cafe",36) == 0) { %>
								<input type="checkbox" name="seat" value="36" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">36</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 200px; bottom: -240px;">
                            <% if (dao.reservedSeat(date,"Cafe",37) == 0) { %>
								<input type="checkbox" name="seat" value="37" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">37</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 250px; bottom: -310px;">
                            <% if (dao.reservedSeat(date,"Cafe",38) == 0) { %>
								<input type="checkbox" name="seat" value="38" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">38</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -370px; bottom: -490px;">
                            <% if (dao.reservedSeat(date,"Cafe",39) == 0) { %>
								<input type="checkbox" name="seat" value="39" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">39</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -325px; bottom: -555px;">
                            <% if (dao.reservedSeat(date,"Cafe",40) == 0) { %>
								<input type="checkbox" name="seat" value="40" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">40</i>
                        </label>
                        <label class="checkbox-wrap" style="left: -342px; bottom: -490px;">
                            <% if (dao.reservedSeat(date,"Cafe",41) == 0) { %>
								<input type="checkbox" name="seat" value="41" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">41</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -297px; bottom: -555px;">
                            <% if (dao.reservedSeat(date,"Cafe",42) == 0) { %>
								<input type="checkbox" name="seat" value="42" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">42</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -314px; bottom: -490px;">
                            <% if (dao.reservedSeat(date,"Cafe",43) == 0) { %>
								<input type="checkbox" name="seat" value="43" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">43</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -269px; bottom: -555px;">
                            <% if (dao.reservedSeat(date,"Cafe",44) == 0) { %>
								<input type="checkbox" name="seat" value="44" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">44</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -286px; bottom: -490px;">
                            <% if (dao.reservedSeat(date,"Cafe",45) == 0) { %>
								<input type="checkbox" name="seat" value="45" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">45</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -241px; bottom: -555px;">
                            <% if (dao.reservedSeat(date,"Cafe",46) == 0) { %>
								<input type="checkbox" name="seat" value="46" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">46</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -150px; bottom: -390px;">
                            <% if (dao.reservedSeat(date,"Cafe",47) == 0 && dao.reservedSeat(date,"Cafe",56) == 0 ) { %>
								<input type="checkbox" name="seat" value="47" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">47</i>
                        </label>

                        <label class="checkbox-wrap" style="left: -120px; bottom: -390px;">
                            <% if (dao.reservedSeat(date,"Cafe",48) == 0 && dao.reservedSeat(date,"Cafe",56) == 0 ) { %>
								<input type="checkbox" name="seat" value="48" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">48</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 1370px; bottom: -330px;">
                            <% if (dao.reservedSeat(date,"Cafe",49) == 0 && dao.reservedSeat(date,"Cafe",56) == 0 ) { %>
								<input type="checkbox" name="seat" value="49" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">49</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 1130px; bottom: -500px;">
                            <% if (dao.reservedSeat(date,"Cafe",50) == 0 && dao.reservedSeat(date,"Cafe",56) == 0 ) { %>
								<input type="checkbox" name="seat" value="50" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">50</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 1161px; bottom: -500px;">
                            <% if (dao.reservedSeat(date,"Cafe",51) == 0 && dao.reservedSeat(date,"Cafe",56) == 0 ) { %>
								<input type="checkbox" name="seat" value="51" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">51</i>
                        </label>

                        <label class="checkbox-wrap" style="left: 1188px; bottom: -500px;">
                            <% if (dao.reservedSeat(date,"Cafe",52) == 0 && dao.reservedSeat(date,"Cafe",56) == 0 ) { %>
								<input type="checkbox" name="seat" value="52" onclick="doOpenCheck(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon">52</i>
                        </label>
						
						<label class="checkbox-team" style="left: -81px; bottom: -140px;">
                            <% if (dao.reservedSeat(date,"Cafe",53) == 0) { %>
								<input type="checkbox" name="seat" value="53" onclick="doTeam1Check(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon"></i>
                        </label>

                        <label class="checkbox-team" style="left: 816px; bottom: 125px;">
                            <% if (dao.reservedSeat(date,"Cafe",54) == 0) { %>
								<input type="checkbox" name="seat" value="54" onclick="doTeam2Check(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon"></i>
                        </label>

                        <label class="checkbox-team" style="left: 930px; bottom: 125px;">
                            <% if (dao.reservedSeat(date,"Cafe",55) == 0) { %>
								<input type="checkbox" name="seat" value="55" onclick="doTeam3Check(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon"></i>
                        </label>

                        <label class="checkbox-team" style="left: 770px; bottom: -410px;">
                            <% if (dao.reservedSeat(date,"Cafe",56) == 0) { %>
								<input type="checkbox" name="seat" value="56" onclick="doTeam4Check(this)">
							<% } else { %>
								<input type="checkbox" checked="checked" disabled="disabled">
							<% } %>	
								<i class="check-icon"></i>
                        </label>
                    
                        								
                    </div>

                    <div class="sub-container" style="width:400px;">
                        <div class="sub-inner">
                            	<h1 style="margin-right:100px;">&nbsp;AI_Cafe</h1><br>
	                            <h2>&nbsp;&nbsp;<%=date %></h2><br>
	                         &nbsp;&nbsp;
                            <select name="checkout" style="width: 180px; margin-left: 0px;">
	                                <option value="19:00">19:00</option>
									<option value="20:00">20:00</option>
									<option value="21:00">21:00</option>
									<option value="22:00">22:00</option>
									<option value="23:00">23:00</option>
	                       </select><br><br>
	  
                            <% if (dao.repetitionCheck(vo.getId(),date) == 0) { %>
		                        	<input type="submit"  class="sb"  value="예약" onclick="alert('예약 되었습니다')" formaction="etc_ReservationCon?location=Cafe&date=<%=date %>"class="w-btn w-btn-gra1" style="margin-left: 12px; width:180px; height: 70px; font-size: 100%;">
		                         <% } else { %>
									<input type="button"  class="sb"  value="예약하기" onclick="alert('이미 예약하셨습니다')">
								<% } %>
	                            <br><br><br><br>
	                            
                        </div>
                    </div>
                    </form>
                </div>
			</div>	
		


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

							

						</div>

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
				
				function doTeam1Check(chk) {
					var obj = document.getElementsByName("seat");
					for(var i=0; i<obj.length; i++){												
						if(obj[i] != chk){
							obj[i].checked = false;
							obj[28].checked = true;
							obj[29].checked = true;
							obj[30].checked = true;
							obj[31].checked = true;
						}
					}
				}
				
				function doTeam2Check(chk) {
					var obj = document.getElementsByName("seat");
					for(var i=0; i<obj.length; i++){
						if(obj[i] != chk){
							obj[i].checked = false;
							obj[16].checked = true;
							obj[17].checked = true;
							obj[18].checked = true;
							obj[19].checked = true;
							obj[20].checked = true;
							obj[21].checked = true;
						}
					}
				}
				
				function doTeam3Check(chk) {
					var obj = document.getElementsByName("seat");
					for(var i=0; i<obj.length; i++){
						if(obj[i] != chk){
							obj[i].checked = false;
							obj[22].checked = true;
							obj[23].checked = true;
							obj[24].checked = true;
							obj[25].checked = true;
							obj[26].checked = true;
							obj[27].checked = true;
						}
					}
				}
				
				function doTeam4Check(chk) {
					var obj = document.getElementsByName("seat");
					for(var i=0; i<obj.length; i++){
						if(obj[i] != chk){
							obj[i].checked = false;
							obj[46].checked = true;
							obj[47].checked = true;
							obj[48].checked = true;
							obj[49].checked = true;
							obj[50].checked = true;
							obj[51].checked = true;
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