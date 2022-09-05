package com.commentController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.commentDAO;
import com.VO.memberVO;

@WebServlet("/cmtcmtCon")
public class cmtcmtCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		memberVO vo = (memberVO)session.getAttribute("vo");
		
		String cmtcmt = request.getParameter("cmtcmt");
		String post_id = request.getParameter("post_id");
		String comment_date = request.getParameter("comment_date");
		
		System.out.println(post_id);
		System.out.println(cmtcmt);
		System.out.println(comment_date);
		
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		String post_date = request.getParameter("post_date");	
		int views = Integer.parseInt(request.getParameter("views"));
		int board_type = Integer.parseInt(request.getParameter("board_type"));
		
		commentDAO dao = new commentDAO();
		
		int cnt = dao.cmtmtWrite(post_id,cmtcmt,comment_date,vo.getId());
		
		if (cnt > 0) {
			dao.commentPoint(vo.getId());
			
			request.setAttribute("title", title);
			request.setAttribute("writer", writer);
			request.setAttribute("content", content);
			request.setAttribute("post_date", post_date);
			request.setAttribute("post_id", post_id);
			request.setAttribute("views", views);
			request.setAttribute("board_type", board_type);
			
			RequestDispatcher rd = request.getRequestDispatcher("View.jsp");
			rd.forward(request, response);
		} else {
			System.out.println("등록 실패");
		}		
	}
}
