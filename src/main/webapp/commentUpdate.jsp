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
		        margin-left: 30px;
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
		            padding: 0 0.75em 0.75em 0.75em;
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
			background-color: #f0f4f4;
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
            bottom: 805px;
            width: 620px;
            left: 1230px;
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
		int board_type;
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
                <table class="postView">
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
				
				<div style="bottom : 150px; margin: 0px;">
						 <button style="padding:15px 25px 15px 25px; margin-right:5px; visibility: hidden;"><h3>글 수정</h3></button>
		            	<button style="padding:15px 25px 15px 25px; visibility: hidden;" ><h3>글 삭제</h3></button>  
	            </div>
	                
                <!-- 댓글 -->
                <table class="commentView">
	                <tr style="background-color: #afc9f3ba;">
	                	<th style="padding-top: 20px; text-align:left;" colspan="3"><h3>댓글</h3></th>
	                </tr>
                <% for(int i=0; i<list.size(); i++) { %>
                	<% if (list.get(i).getDepth().equals("0")) { %>
	                    <tr>               
	                        <form action="commentUpdateCon" method="post">
	                        		<input type="hidden" name="comment_id" value="<%=comment_id %>"> 
									<input type="hidden" name="post_id" value="<%=post_id%>"> 
									<input type="hidden" name="title" value="<%=title%>"> 
									<input type="hidden" name="writer" value="<%=writer%>"> 
									<input type="hidden" name="content" value="<%=content%>"> 
									<input type="hidden" name="post_date" value="<%=post_date%>"> 
									<input type="hidden" name="views" value="<%=views %>"> 
									<input type="hidden" name="board_type" value="<%= request.getParameter("board_type") %>">
		                        
		                        <% if (list.get(i).getComment_id().equals(comment_id)) { %>
		                        	<td>
		                        		<input type="text" name="update_content" value="<%=list.get(i).getContent() %>"  style="width: 500px;">
									</td>
									<td>
										<input style="padding: 5px 10px 5px 10px;" type="submit" value="수정">	                        	
		                        	</td>
		                        <% }else{ %>
		                        	<td style="width : 450px;"><%=list.get(i).getContent() %></td>
		                        	<td style="width: 50px;"><%=list.get(i).getComment_writer()%></td>
								<% } %>   
	                        </form>                  
	                    </tr>
                	<% } else {%>
                		<tr style="background : #dcdcdc;">               
	                        <form action="commentUpdateCon" method="post">
	                        		<input type="hidden" name="comment_id" value="<%=comment_id %>"> 
									<input type="hidden" name="post_id" value="<%=post_id%>"> 
									<input type="hidden" name="title" value="<%=title%>"> 
									<input type="hidden" name="writer" value="<%=writer%>"> 
									<input type="hidden" name="content" value="<%=content%>"> 
									<input type="hidden" name="post_date" value="<%=post_date%>"> 
									<input type="hidden" name="views" value="<%=views %>"> 
									<input type="hidden" name="board_type" value="<%= request.getParameter("board_type") %>">
		                        
		                        <% if (list.get(i).getComment_id().equals(comment_id)) { %>
		                        	<td>
		                        		&emsp;&emsp;└─&ensp;<input type="text" name="update_content" value="<%=list.get(i).getContent() %>"  style="width: 380px;">
									</td>
									<td>
										<input style="padding: 5px 10px 5px 10px;" type="submit" value="수정">	                        	
		                        	</td>
		                        <% }else{ %>
		                        	<td style="width : 450px;">&emsp;&emsp;└─&ensp;<%=list.get(i).getContent() %></td>
		                        	<td style="width: 50px;"><%=list.get(i).getComment_writer()%></td>
								<% } %>   
	                        </form>                  
	                    </tr>
                	<% } %>
                <% } %>
              </table>
			</div>


			<!-- Footer -->
			<div id="footer">
				
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