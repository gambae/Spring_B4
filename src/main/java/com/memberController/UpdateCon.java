package com.memberController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.VO.memberVO;

@WebServlet("/UpdateCon")
public class UpdateCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		memberVO vo = (memberVO)session.getAttribute("vo");

		String cls = request.getParameter("cls");
		String id = vo.getId();
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String tel = request.getParameter("tel");
		int point = Integer.parseInt(request.getParameter("point"));
		
		memberDAO dao = new memberDAO();

		vo = dao.Update(cls,id,pw,email,name,birth,tel,point);
		
		if (vo != null) {
			session.setAttribute("vo",vo);
			response.sendRedirect("Main.jsp");
		} else {
			System.out.println("수정 실패");
		}
		
	}
}
