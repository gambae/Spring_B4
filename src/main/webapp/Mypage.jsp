<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/Login.css"/>
<style>
	:root {
	    --primary-color: #141E5B;
	    --secondary-color: #141E5B;
}
</style>
</head>
<body>
	<% memberVO vo = (memberVO)session.getAttribute("vo"); %>
	
    <div id="container" class="container">
        <div class="row">

        	<div class="col align-items-center flex-col sign-up">
                <div class="form2-wrapper align-items-center">                
                </div>
            </div>
          
          <div class="col align-items-center flex-col sign-in">
            <div class="form2-wrapper align-items-center">
            
                <form action="UpdateCon" method="post">
                    <div class="form2 sign-in">
                        <div class="input-group">
	                        <i class='bx bxs-user'></i>
	                        <select name="cls">
	                                <option value="Spring_A">Spring_A</option>
	                                <option value="Spring_B">Spring_B</option>
	                                <option value="JavaScript_A">JavaScript_A</option>
	                                <option value="JavaScript_B">JavaScript_B</option>
	                                <option value="App">App특화</option>
	                                <option value="Visual_Itg">시각지능</option>
	                                <option value="Object_Itg">사물지능</option>
	                                <option value="Language_Itg">언어지능</option>
	                                <option value="Cloud_A">Cloud_A</option>
	                                <option value="Cloud_B">Cloud_B</option>           
	                        </select>
                        </div>
                        <div class="input-group">
                            <i class='bx bx-mail-send'></i>
                            <input type="password" name="pw" value="<%=vo.getPw()%>">
                        </div>
                        <div class="input-group">
                            <i class='bx bxs-lock-alt'></i>
                            <input type="text" name="email" value="<%=vo.getEmail()%>">
                        </div>
                        <div class="input-group">
                            <i class='bx bxs-lock-alt'></i>
                            <input type="text" name="name" value="<%=vo.getName()%>">
                        </div>
                        <div class="input-group">
                            <i class='bx bxs-lock-alt'></i>
                            <input type="text" name="birth" value="<%=vo.getBirth()%>">
                        </div>
                        <div class="input-group">
                            <i class='bx bxs-lock-alt'></i>
                            <input type="text" name="tel" value="<%=vo.getTel()%>">
                        </div>
                        <% if (vo.getPoint() >= 40) {%>
	                        <div class="input-group" style="display:flex;">
	                            <i class='bx bxs-lock-alt'></i>
	                            <input type="text"  name="point" value="<%=vo.getPoint() %>포인트"  readonly style="width:200px;">
	                            <button type="submit" onclick=" javascript: form.action='coupon.jsp' " style="width:80px; height:52px; margin-top:2px;">교환</button>
	                        </div>
                        <% } else { %>
	                        <div class="input-group" >
	                            <i class='bx bxs-lock-alt'></i>
	                            <input type="text"  name="point" value="보유포인트 <%=vo.getPoint() %>" readonly >
	                        </div>
                        <% } %>
                        <button>회원정보수정</button><br><br>
                        <a href="Main.jsp">메인페이지</a>
            		</div>
            	</form>
            	
			</div>        
		</div>
	</div>
   
	<div class="row content-row">
		<div class="col align-items-center flex-col">
			<div class="text sign-in">
				<h2><%=vo.getId() %>님 회원정보</h2>
		</div>
	</div>
	</div>
      
	<script>
		let container = document.getElementById('container')

        toggle = () => {
        container.classList.toggle('sign-in')
        container.classList.toggle('sign-up')
        }

        setTimeout(() => {
        container.classList.add('sign-in')
        }, 200)
	</script>
</body>
</html>