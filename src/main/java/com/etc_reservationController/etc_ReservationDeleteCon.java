package com.etc_reservationController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.etc_reservationDAO;
import com.DAO.reservationDAO;
import com.VO.memberVO;

@WebServlet("/etc_ReservationDeleteCon")
public class etc_ReservationDeleteCon extends HttpServlet {	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String date = request.getParameter("date");
		
		String update_check = request.getParameter("update_check");
				
		HttpSession session = request.getSession();
		
		memberVO vo = (memberVO) session.getAttribute("vo");	
		
		etc_reservationDAO dao = new etc_reservationDAO();

		int cnt = dao.reservationDelete(vo.getId(),date.substring(0,10));
		
		if (cnt > 0) {
			if (update_check == null || update_check.equals("")) {
				response.sendRedirect("etc_Reservation.jsp");			
			} else {
				response.sendRedirect("UpdateCheck.html");
			}			
		} else {
			System.out.println("삭제 실패");
		}
	}
}
