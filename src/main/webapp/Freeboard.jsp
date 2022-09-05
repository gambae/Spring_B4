<%@page import="com.VO.freeboardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.VO.memberVO"%>
<%@page import="com.DAO.freeboardDAO"%>
<%@page import="com.DAO.commentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/etc_reservation.css?after" />
<link rel="stylesheet" href="assets/css/button.css?after" />

<style>
	@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
		
	.table-wrapper {
		    -webkit-overflow-scrolling: touch;
		    overflow-x: auto;
		    }
		
		    table {
		        margin: 0 0 2em 0;
		        width: 130%;
		        margin-top:40px;
		        margin-left: 280px;
		        font color : #457ae4;
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
		            padding: 0.75em 0.75em 0.75em;
		            text-align: center;
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
		h2 {
			font-size: 1.8em;
		}

		tr {
			background-color: #e7eff3e0;
			
		}
		
		td {
			color: white;
			width:100px;
			font-weight:bold;	
			color : #000000;
			text-align: center;
		}
		
		.ud {
			width: 20px;
		}
		
		.bt {
			padding: 15px 30px 15px 30px;
			margin-right:10px;
			background : #b53aea05;
		}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		// viewPage에 맞는 글이 담긴 리스트 
		ArrayList<freeboardVO> list1 = (ArrayList)session.getAttribute("post_list_1");
		ArrayList<freeboardVO> list2 = (ArrayList)session.getAttribute("post_list_2");
		ArrayList<freeboardVO> list3 = (ArrayList)session.getAttribute("post_list_3");
	
		memberVO vo = (memberVO)session.getAttribute("vo");
		
		// 글에 관련된 기능을 담당하는 dao 댓글 관련된 기능을 담당하는 comment_dao
		freeboardDAO dao = new freeboardDAO();
		commentDAO comment_dao = new commentDAO();
		// 총 글의 개수
		int total_1 = dao.postTotal_1(); // 총 글 개수
		int total_2 = dao.postTotal_2();
		int total_3 = dao.postTotal_3();
		int pageNumber_1 = 1;
		int pageNumber_2 = 1;
		int pageNumber_3 = 1;
	
		if (total_1 % 9 == 0) {
			pageNumber_1 = total_1 / 9 +1;
		} else {
			pageNumber_1 = (total_1 / 9) + 2;
		}
		if (total_2 % 9 == 0) {
			pageNumber_2 = total_2 / 9 +1;
		} else {
			pageNumber_2 = (total_2 / 9) + 2;
		}
		if (total_3 % 9 == 0) {
			pageNumber_3 = total_3 / 9 +1;
		} else {
			pageNumber_3 = (total_3 / 9) + 2;
		}
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
                <div style="position: relative; bottom: 100px; left: 280px;">
                	<button  id="board_notice"  class="bt" onclick="showNotice()"><h2>공지사항</h2></button>
                    <button  id="board_free"  class="bt"  onclick="showFreeboard()"><h2>자유게시판</h2></button>
                    <button  id="board_study"  class="bt"  onclick="showStudy()"><h2>스터디모집</h2></button>
                </div>
                
                <div id="notice_view"  style="display : block">
					<table style="position: relative; left:0px; bottom: 110px; margin-bottom: -80px;">
						<tr style="background-color: #afc9f3ba;">
							<th>번호</th>
							<th style="width: 500px;">제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th style="width: 7%;">조회수</th>
						</tr>
						<% int n=1; %>
							<% for (int i=0; i<list1.size(); i++) { %>
								<% String post_id = list1.get(i).getPost_id(); %>
								<% String title = list1.get(i).getTitle(); %>
								<% String writer = list1.get(i).getWriter(); %>
								<% String content = list1.get(i).getContent(); %>
								<% String post_date = list1.get(i).getPost_date(); %>
								<% int views = list1.get(i).getViews(); %>
								<% int board_type = 1; %>
			                    <tr>
									<td><%= n++ %></td>
									<!-- 제목을 클릭하면 해당 글의 정보가 전달된다. 제목 옆에는 해당 글의 댓글 개수 -->
									<td><a href="View.jsp?post_id=<%=post_id%>&title=<%=title%>&writer=<%=writer%>&content=<%=content%>&post_date=<%=post_date%>&views=<%=views%>&board_type=<%=board_type%>"><%= list1.get(i).getTitle() %></a> [<%=comment_dao.commentNum(post_id) %>]</td>
									<td><%= list1.get(i).getWriter() %></td>
									<td><%= list1.get(i).getPost_date().substring(0,10) %></td>
									<td><%= list1.get(i).getViews() %></td>			
								</tr>
							<% } %>
					</table>
					<div style="display:flex; margin-left:267px">
						<!-- 첫페이지 -->
                  		<a style='margin-left:12px;' href='freeboardSelectCon?num_1=1'><span><h1>&laquo;</h1></span></a>
                  		<% for (int i = 1; i <= pageNumber_1; i++) { 
                        out.print("<a style='margin-left:20px;' href='freeboardSelectCon?num_1=" + i + "'>" +"<h2>"+ i +"</h2>" + "</a>");
                  		 }%> 
                 		<!-- 마지막페이지 -->
                  		<a style='margin-left:20px;' href='freeboardSelectCon?num_1=<%=pageNumber_1%>'><span><h1>&raquo;</h1></span></a>
						<button onclick="location.href='Write.jsp'" style="margin-left:1047px; padding:15px 25px 15px 25px; white-space:nowrap;"><h3>글작성</h3></button>
					</div>
				</div>
				
				<div id="free_view" style="display : none" >
					<table style="position: relative; left:0px; bottom: 110px; margin-bottom: -80px;">
						<tr style="background-color: #afc9f3ba;">
							<th>번호</th>
							<th style="width: 500px;">제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th style="width: 7%;">조회수</th>
						</tr>
	                    <% int n_1=1; %>
							<% for (int i=0; i<list2.size(); i++) { %>
								<% String post_id = list2.get(i).getPost_id(); %>
								<% String title = list2.get(i).getTitle(); %>
								<% String writer = list2.get(i).getWriter(); %>
								<% String content = list2.get(i).getContent(); %>
								<% String post_date = list2.get(i).getPost_date(); %>
								<% int views = list2.get(i).getViews(); %>
								<% int board_type = 2; %>
			                    <tr>
									<td><%= n_1++ %></td>
									<!-- 제목을 클릭하면 해당 글의 정보가 전달된다. 제목 옆에는 해당 글의 댓글 개수 -->
									<td><a href="View.jsp?post_id=<%=post_id%>&title=<%=title%>&writer=<%=writer%>&content=<%=content%>&post_date=<%=post_date%>&views=<%=views%>&board_type=<%=board_type%>"><%= list2.get(i).getTitle() %></a> [<%=comment_dao.commentNum(post_id) %>]</td>
									<td><%= list2.get(i).getWriter() %></td>
									<td><%= list2.get(i).getPost_date().substring(0,10) %></td>
									<td><%= list2.get(i).getViews() %></td>			
								</tr>
							<% } %>
					</table>
					<div style="display:flex; margin-left:258px">
						<!-- 첫페이지 -->
                  		<a style='margin-left:20px;' href='freeboardSelectCon?num_2=1'><span><h1>&laquo;</h1></span></a>
                  		<% for (int i = 1; i <= pageNumber_1; i++) { 
                        out.print("<a style='margin-left:20px;' href='freeboardSelectCon?num_2=" + i + "'>" +"<h2>"+ i +"</h2>" + "</a>");
                  		}%> 
                 		<!-- 마지막페이지 -->
                 		<a style='margin-left:20px;' href='freeboardSelectCon?num_2=<%=pageNumber_2%>'><span><h1>&raquo;</h1></span></a>
						<button onclick="location.href='Write.jsp'" style="margin-left:1049px; padding:15px 25px 15px 25px; white-space:nowrap;"><h3>글작성</h3></button>
					</div>
				</div>
				
				<div id="study_view" style="display : none" >
					<table style="position: relative; left:0px; bottom: 110px; margin-bottom: -80px;">
						<tr style="background-color: #afc9f3ba;">
							<th>번호</th>
							<th style="width: 500px;">제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th style="width: 7%;">조회수</th>
						</tr>
	                    <% int n_2=1; %>
							<% for (int i=0; i<list3.size(); i++) { %>
								<% String post_id = list3.get(i).getPost_id(); %>
								<% String title = list3.get(i).getTitle(); %>
								<% String writer = list3.get(i).getWriter(); %>
								<% String content = list3.get(i).getContent(); %>
								<% String post_date = list3.get(i).getPost_date(); %>
								<% int views = list3.get(i).getViews(); %>
								<% int board_type = 3; %>
			                    <tr>
									<td><%= n_2++ %></td>
									<% if(vo!=null){ %>
                           			<!-- 제목을 클릭하면 해당 글의 정보가 전달된다. 제목 옆에는 해당 글의 댓글 개수 -->
                              		<td><a href="View.jsp?post_id=<%=post_id%>&title=<%=title%>&writer=<%=writer%>&content=<%=content%>&post_date=<%=post_date%>&views=<%=views%>&board_type=<%=board_type%>"><%= list3.get(i).getTitle() %></a> [<%=comment_dao.commentNum(post_id) %>]</td>
                           			<% } else{ %>
                             		<td><a onclick="alert('로그인하세요')" href="Login.html"><%= list3.get(i).getTitle() %></a></td>
                           			<% } %>
									<td><%= list3.get(i).getWriter() %></td>
									<td><%= list3.get(i).getPost_date().substring(0,10) %></td>
									<td><%= list3.get(i).getViews() %></td>			
								</tr>
							<% } %>
					</table>
					<div style="display:flex;" margin-left:800px">
						<!-- 첫페이지 -->
                  		<a style='margin-left:280px;' href='freeboardSelectCon?num_3=1'><span><h1>&laquo;</h1></span></a>
                  		<% for (int i = 1; i <= pageNumber_1; i++) { 
                        out.print("<a style='margin-left:20px;' href='freeboardSelectCon?num_3=" + i + "'>" +"<h2>"+ i +"</h2>" + "</a>");
                   		}%> 
                  		<!-- 마지막페이지 -->
                  		<a style='margin-left:20px;' href='freeboardSelectCon?num_3=<%=pageNumber_3%>'><span><h1>&raquo;</h1></span></a>
						<button onclick="location.href='Write.jsp'" style="margin-left:1045px; padding:15px 25px 15px 25px; white-space:nowrap;"><h3>글작성</h3></button>
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
                                    
                            </div>
                        </div>
			</div>
		</div>
		<script>
			function showNotice(){
				document.getElementById("notice_view").style.display="block";
				document.getElementById("free_view").style.display="none";
				document.getElementById("study_view").style.display="none";
				
				var switchOn = document.getElementById("board_notice");
				switchOn.style.background="#afc9f3ba";
				var switchOn1 = document.getElementById("board_free");
				switchOn1.style.background="#50b2f103";
				var switchOn2 = document.getElementById("board_study");
				switchOn2.style.background="#50b2f103";
			}
			function showFreeboard(){
				document.getElementById("notice_view").style.display="none";
				document.getElementById("free_view").style.display="block";
				document.getElementById("study_view").style.display="none";
				
				var switchOn = document.getElementById("board_notice");
				switchOn.style.background="#50b2f103";
				var switchOn1 = document.getElementById("board_free");
				switchOn1.style.background="#afc9f3ba";
				var switchOn2 = document.getElementById("board_study");
				switchOn2.style.background="#50b2f103";
			}
			function showStudy(){
				document.getElementById("notice_view").style.display="none";
				document.getElementById("free_view").style.display="none";
				document.getElementById("study_view").style.display="block";
				
				var switchOn = document.getElementById("board_notice");
				switchOn.style.background="#50b2f103";
				var switchOn1 = document.getElementById("board_free");
				switchOn1.style.background="#50b2f103";
				var switchOn2 = document.getElementById("board_study");
				switchOn2.style.background="#afc9f3ba";
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