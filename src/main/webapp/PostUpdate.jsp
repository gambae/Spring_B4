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
		h2 {
			font-size: 1.8em;
		}

		tr {
			background-color: #202D73;
		}
		
		td {
			color: white;
			width:100px;
			font-weight:bold;	
		}
		
		.ud {
			width: 20px;
		}

        .postView {
            position: relative;
            bottom: 100px;
            width: 1000px;
            margin-left:40px;
        }
        .commentWrite {
            position: relative;
            bottom: 130px;
            width: 1200px;
           	margin-bottom: -100px;
            
        }
        .commentView {
            position: relative;
            bottom: 985px;
            width: 650px;
            left: 1230px;
        }
</style>
</head>
<body>
	<%		
		memberVO vo = (memberVO)session.getAttribute("vo");
		
		String post_id;
		String title;
		String writer;
		String content;

		post_id = request.getParameter("post_id");

		title = request.getParameter("title");

		content = request.getParameter("content");

		freeboardDAO freeboard_dao = new freeboardDAO();
		commentDAO dao = new commentDAO();
		ArrayList<commentVO> list = dao.commentSelect(post_id);
	%>
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">
			<nav id="nav">
				<ul>
					<li><a href="Main.jsp">??????</a></li>												
					<li><a href="Reservation.jsp">????????? ????????????</a></li>
					<li><a href="etc_Reservation.jsp">?????? ??????</a></li>
					<li><a href="freeboardSelectCon">?????????</a></li>
					<% if (vo == null) { %>
					<li><a href="Login.html">?????????</a></li>
					<%} else { %>
					<li><a href="LogOutCon">????????????</a></li>
					<li><a href="Mypage.jsp">???????????????</a></li>
					<%} %>
				</ul>
			</nav>
		</div>

		<!-- Main -->
		<div class="wrapper style1">
            <div class="wrapper1">
            	<form action="postUpdateCon?post_id=<%=post_id %>" method="post">
	                <table class="postView">
	                    <tr style="background-color: #afc9f3ba;">
	                        <th style="width: 800px; height:70px; padding-top: 20px;"><input type="text" name="update_title" value=<%=title %> style="width: 1246px;"><th>
	                    </tr>
	                    
	                    <tr style="background-color: #f0f4f4;">
	                        <td colspan="5" style="height: 500px; background-color: #f0f4f4;"><textarea rows="14" cols="150"  name="update_content" ><%=content %></textarea></td>
	                    </tr>
	                </table>
		
		           <div style="position : relative; bottom : 133px; left: 1265px; margin: 0px;">
			       		<input type="submit"  value="??????" style="padding:5px 20px 5px 20px">
		           </div>
               </form> 
				
			</div>


			<!-- Footer -->
			<div id="footer">
				<div class="row">
                            <div class="col-12">
                                <!-- Contact -->
                                    <section class="contact">
                                        <p><h4>???????????? : (???)????????????????????????</h4><br>
                                            ????????????????????? : 178-82-00065<br>
                                            ????????? : ????????? &nbsp;&nbsp;&nbsp; ??????????????? : ?????????<br>
                                            ?????? : ??????????????? ?????? ????????? 92 (???????????? 1-3???)<br>
                                            ???????????? : 062-710-3257~9<br>
                                            ???????????? : @????????????????????????<br>
                                            ???????????? : 10??? ~ 17??? (???~???)
                                        </p>
                                            <header>
                                                <h3>????????? ??????????????? ????????? ???????????????????</h3>
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