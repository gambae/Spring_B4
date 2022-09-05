package com.reservationController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.DAO.reservationDAO;
import com.VO.memberVO;

@WebServlet("/ReservationCon")
public class ReservationCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();

		String cls = request.getParameter("cls");
		String time = request.getParameter("time");

		memberVO vo = (memberVO) session.getAttribute("vo");

		reservationDAO dao = new reservationDAO();

		int cnt = dao.register(vo,cls,time);
		
		if (cnt > 0) {
			dao.reservationPoint(vo.getId());
			
			response.sendRedirect("Reservation.jsp");
		} else {
			System.out.println("신청 실패");
		}
		
	}
}
