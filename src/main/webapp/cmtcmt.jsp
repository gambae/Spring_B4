<%@page import="com.VO.memberVO"%>
<%@page import="com.DAO.freeboardDAO"%>
<%@page import="com.VO.commentVO"%>
<%@page import="java.util.ArrayList"%>
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
		     
		        
		    }
		
		        table tbody tr {
		            border: solid 2px rgba(255, 255, 255);
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
		h2 {
			font-size: 1.8em;
			text-align: center;
		}

		tr {
			background-color: #202D73;
		}
		
		td {
			color: black;
			width:100px;
			font-weight:bold;	
		}
		
		.ud {
			width: 20px;
		}

        .postView {
            position: relative;
            bottom: 100px;
            width: 1200px;
            
        }
        .commentWrite {
            position: relative;
            bottom: 130px;
            width: 1200px;
           	margin-bottom: -100px;
            
        }
        .commentView {
            position: relative;
            bottom: 780px;
            width: 620px;
            left: 1260px;
        }
</style>
</head>
<body>
	<%		
		memberVO vo = (memberVO)session.getAttribute("vo");
		
		// Freeboard.jsp에서 선택한 글의 정보 
		String post_id;
		String title;
		String writer;
		String content;
		String post_date;
		int views;
		int board_type = 0;
		
		String comment_id = request.getParameter("comment_id");
		
		if (request.getParameter("post_id") == null) {
			post_id = (String)request.getAttribute("post_id");
		} else {
			post_id = request.getParameter("post_id");
		}
		
		if (request.getParameter("title") == null) {
			title = (String)request.getAttribute("title");
		} else {
			title = request.getParameter("title");
		}
		
		if (request.getParameter("writer") == null) {
			writer = (String)request.getAttribute("writer");
		} else {
			writer = request.getParameter("writer");
		}
		
		if (request.getParameter("content") == null) {
			content = (String)request.getAttribute("content");
		} else {
			content = request.getParameter("content");
		}
		
		if (request.getParameter("post_date") == null) {
			post_date = (String)request.getAttribute("post_date");
		} else {
			post_date = request.getParameter("post_date");
		}
		
		if (request.getParameter("views") == null) {
			views = (int)request.getAttribute("views");
		} else {
			views = Integer.parseInt(request.getParameter("views"));
		}
		if (request.getParameter("board_type") == null) {
			board_type = (int)request.getAttribute("board_type");
		} else {
			board_type = Integer.parseInt(request.getParameter("board_type"));
		}
		
		freeboardDAO freeboard_dao = new freeboardDAO();
		freeboard_dao.viewsUpdate(views+1,post_id);
		commentDAO dao = new commentDAO();
		ArrayList<commentVO> list = dao.commentSelect(post_id);
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
                <table class="postView" style="margin-left:40px;">
                    <tr style="background-color: #afc9f3ba;">
                        <th style="width: 800px; height:70px; padding-top: 20px;"><h2><%=title%></h2><th>
                        <th><%=writer %></th>
                        <th><%=post_date.substring(0,10) %></th>
                        <th>조회수 <%=views+1 %></th>
                    </tr>
                    
                    <tr style="background-color: #f0f4f4;">
                        <td colspan="5" style="height: 500px;"><%=content %></td>
                    </tr>
                </table>
				<form action="commentWriteCon?post_id=<%=post_id%>&title=<%=title%>&writer=<%=writer%>&content=<%=content%>&post_date=<%=post_date%>&views=<%=views%>&board_type=<%=board_type%>"  method="post" >
                	<table class="commentWrite" style="margin-left:40px;">
	                    <tr style="background-color: #f0f4f400;">
	                        <td style="padding: 0px 0px 0px 0px;" class="comment_flex">
	                        	
	                            <textarea name="comment_content" style="width: 1090px; height: 50px; resize:none;" placeholder="댓글작성"></textarea>-
	                            <%if(vo==null){ %>
                                	<button type="button" onclick="alert('로그인 하세요')" style="float:right; padding:30px;">작성</button>
                                <%}else{ %>
		                           <input type="submit" style="height: 50px; bottom:18px; padding: 5px 25px 11px 25px;" value="작성"></input>
		                                 
                                <%} %>
	                        </td>
	                    </tr>
	            	</table>
				</form>
				<% if (vo.getId().equals(writer)) { %>
	                <div style="bottom : 150px; margin-left: 40px;">
		            	<button style="padding:15px 25px 15px 25px; margin-right:5px;" onclick="location.href='postUpdate.jsp?post_id=<%=post_id%>&title=<%=title%>&content=<%=content%>'"><h3>글 수정</h3></button>
		            	<button style="padding:15px 25px 15px 25px" onclick="location.href='postDeleteCon?post_id=<%=post_id%>'"><h3>글 삭제</h3></button>  
	                </div>
                 <% } else { %>
                  	<div style="bottom : 150px; margin-left: 40px;">
						 <button style="padding:15px 25px 15px 25px; margin-right:5px; visibility: hidden;"><h3>글 수정</h3></button>
		            	<button style="padding:15px 25px 15px 25px; visibility: hidden;" ><h3>글 삭제</h3></button>  
	                </div>
                 <% } %>
                 <table class="commentView">
	                 <tr style="background-color: #afc9f3ba;">
	                 	<th style="padding-top: 20px; text-align:left;" colspan="3"><h3>댓글</h3></th>
	                 </tr>
                <% for(int i=0; i<list.size(); i++) { %>       	
                	<%if (comment_id.equals(list.get(i).getComment_id()) )  {%>
                    <tr style="background-color: #f0f4f4;">
                    	<td style="width: 450px;"><%=list.get(i).getContent() %> <a href="cmtcmt.jsp" style="font-size:0.5em;">┖답글</a></td>
                        <td style="width: 50px;"><%=list.get(i).getComment_writer()%></td>
                       	<td style="width: 150px;">
                        <% if (vo.getId().equals(list.get(i).getComment_writer())) { %>
                        	<button style="padding: 10px; margin-right: 10px;"onclick="location.href='commentUpdate.jsp?comment_id=<%=list.get(i).getComment_id()%>&post_id=<%=post_id%>&title=<%=title%>&writer=<%=writer%>&content=<%=content%>&post_date=<%=post_date%>&views=<%=views%>&board_type=<%=board_type%>'">수정</button>
                        	<button style="padding: 10px;" onclick="location.href='commentDeleteCon?comment_id=<%=list.get(i).getComment_id()%>&post_id=<%=post_id%>&title=<%=title%>&writer=<%=writer%>&content=<%=content%>&post_date=<%=post_date%>&views=<%=views %>&board_type=<%=board_type%>'">삭제</button>
                        <% } %>                       
                       	</td>
                    </tr>
                    <tr style="background : #dcdcdc;">
                    	<form action="cmtcmtCon?comment_date=<%=list.get(i).getComment_date() %>&post_id=<%=post_id%>&title=<%=title%>&writer=<%=writer%>&content=<%=content%>&post_date=<%=post_date%>&views=<%=views %>&board_type=<%=board_type%>" method="post">
	                    	<td colspan="2">&emsp;&emsp;└─ &ensp;<input type="text" name="cmtcmt" style="width:350px;"></td>
	                    	<td><input type="submit" value="답글 작성" style="padding:3px;"></td>
                    	</form>
                    </tr>
                    <% } else { %>
	                    <% if (list.get(i).getDepth().equals("0")) { %>
		                    <tr style="background-color: #f0f4f4;">
		                    	<td style="width: 450px;"><%=list.get(i).getContent() %> <a href="cmtcmt.jsp" style="font-size:0.5em;">┖답글</a></td>
		                        <td style="width: 50px;"><%=list.get(i).getComment_writer()%></td>
		                       	<td style="width: 150px;">
		                        <% if (vo.getId().equals(list.get(i).getComment_writer())) { %>
		                        	<button style="padding: 10px; margin-right: 10px;"onclick="location.href='commentUpdate.jsp?comment_id=<%=list.get(i).getComment_id()%>&post_id=<%=post_id%>&title=<%=title%>&writer=<%=writer%>&content=<%=content%>&post_date=<%=post_date%>&views=<%=views%>&board_type=<%=board_type%>'">수정</button>
		                        	<button style="padding: 10px;" onclick="location.href='commentDeleteCon?comment_id=<%=list.get(i).getComment_id()%>&post_id=<%=post_id%>&title=<%=title%>&writer=<%=writer%>&content=<%=content%>&post_date=<%=post_date%>&views=<%=views %>&board_type=<%=board_type%>'">삭제</button>
		                        <% } %>                       
		                       	</td>
		                    </tr>
	                    <% } else { %>
	                    	<tr style="background : #dcdcdc;">
		                    	<td style="width: 450px;">&emsp;&emsp;└─&ensp; <%=list.get(i).getContent() %> <a href="cmtcmt.jsp" style="font-size:0.5em;"></a></td>
		                        <td style="width: 50px;"><%=list.get(i).getComment_writer()%></td>
		                       	<td style="width: 150px;">
		                        <% if (vo.getId().equals(list.get(i).getComment_writer())) { %>
		                        	<button style="padding: 10px; margin-right: 10px;"onclick="location.href='commentUpdate.jsp?comment_id=<%=list.get(i).getComment_id()%>&post_id=<%=post_id%>&title=<%=title%>&writer=<%=writer%>&content=<%=content%>&post_date=<%=post_date%>&views=<%=views%>&board_type=<%=board_type%>'">수정</button>
		                        	<button style="padding: 10px;" onclick="location.href='commentDeleteCon?comment_id=<%=list.get(i).getComment_id()%>&post_id=<%=post_id%>&title=<%=title%>&writer=<%=writer%>&content=<%=content%>&post_date=<%=post_date%>&views=<%=views %>&board_type=<%=board_type%>'">삭제</button>
		                        <% } %>                       
		                       	</td>
		                    </tr>
		                <% } %>
                    <% } %>
                <% } %>
                </table>
				
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