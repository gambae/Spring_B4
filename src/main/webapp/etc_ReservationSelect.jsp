<%@page import="com.VO.etc_reservationVO"%>
<%@page import="com.VO.reservationVO"%>
<%@page import="java.util.ArrayList"%>
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
			/* background: #4D3A56; */
			background-image: linear-gradient(
				rgba(0, 0, 0, 0.6),
				rgba(0, 0, 0, 0.6)
			), url(images/header.jpg);
			background-size: cover;
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
		    background-image: linear-gradient(
				rgba(0, 0, 0, 0.6),
				rgba(0, 0, 0, 0.6)
			), url(images/header.jpg);		
		}
		
		h1, h2, h3, h4, h5, h6 {
		    color: #ffffff;
		    font-weight: bold;
		    line-height: 1;	
		}
		
		.table-wrapper {
		    -webkit-overflow-scrolling: touch;
		    overflow-x: auto;
		    }
		
		    table {
		        margin: 0 0 2em 0;
		        width: 100%;
		        margin-top:30px;'
		    }
		
		        table tbody tr {
		            border: solid 1px rgba(255, 255, 255, 0.15);
		            border-left: 0;
		            border-right: 0;
		        }

		        table td {
		            padding: 0.75em 0.75em;
		        }
		
		        table th {
		            color: #ffffff;
		            font-size: 1em;
		            font-weight: bold;
		            padding: 0 0.75em 0.75em 0.75em;
		            text-align: left;
		        }
		
		        table thead {
		            border-bottom: solid 2px rgba(255, 255, 255, 0.15);
		        }
		
		        table tfoot {
		            border-top: solid 2px rgba(255, 255, 255, 0.15);
		        }
		
		        table.alt {
		            border-collapse: separate;
		        }
		
		            table.alt tbody tr td {
		                border: solid 1px rgba(255, 255, 255, 0.15);
		                border-left-width: 0;
		                border-top-width: 0;
		            }
		
		                table.alt tbody tr td:first-child {
		                    border-left-width: 1px;
		                }
		
		            table.alt tbody tr:first-child td {
		                border-top-width: 1px;
		            }
		
		            table.alt thead {
		                border-bottom: 0;
		            }
		
		            table.alt tfoot {
		                border-top: 0;
		            }
		h1 {
			font-size: 3em;
		}

		tr {
			background-color: #e7eff3e0;
		}
		
		td {
			color: white;
			width:100px;
			font-weight:bold;
			color : #000000;		
		}
		
		.ud {
			width: 20px;
		}
	</style>
</head>

<body class="no-sidebar is-preload">
	<% 
		ArrayList<etc_reservationVO> list = (ArrayList)session.getAttribute("etc_reservation_list");
		memberVO vo = (memberVO) session.getAttribute("vo");
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
	 			<% if (list.size() == 0) {%>
					<script>
						alert('예약한 인원이 없습니다.')
						location.href="Reservation.jsp";
					</script>
				<% } %>
				
				<% if(list.size() != 0) { %>
					<%	
						String location = list.get(0).getRsv_location();
						String date = list.get(0).getRsv_date();
					%>
					<h1><%=list.get(0).getRsv_location()%> 예약 명단</h1>
					<table>
						<tr style="background: #afc9f3ba">
							<th>반</th>
							<th>이름</th>
							<th>좌석</th>
							<th>퇴실시간</th>
							<th></th>
						</tr>									
									
					<% for (int i=0; i<list.size(); i++) { %>
						<tr>									
							<td><%=list.get(i).getRsv_class() %></td>
							<td><%=list.get(i).getRsv_name() %></td>
							<td><%=list.get(i).getRsv_seat() %>번</td>
							<td><%=list.get(i).getCheckout() %></td>			
											
							<% if (vo.getId().equals(list.get(i).getRsv_id())) {%>
							<td style="width:230px;">												
								<button type"button" onclick="location.href='etc_ReservationDeleteCon?date=<%=date%>&update_check=1'">수정</button>
								<button type"button" onclick="confirm('예약을 취소하시겠습니까?');location.href='etc_ReservationDeleteCon?date=<%=date%>'">취소</button>
							</td>
							<% } else { %>
							<td></td>
							<% } %>										
						</tr>
					<% } %>
					</table>
				<% } %>
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