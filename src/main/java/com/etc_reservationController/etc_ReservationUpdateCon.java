package com.etc_reservationController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.etc_reservationDAO;
import com.VO.etc_reservationVO;
import com.VO.memberVO;

@WebServlet("/etc_ReservationUpdateCon")
public class etc_ReservationUpdateCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String location = request.getParameter("location");
		String date = request.getParameter("date");
		String seat = request.getParameter("seat");
		
		String update_checkout = request.getParameter("checkout");
		String update_seat = request.getParameter("update_seat");
		
		HttpSession session = request.getSession();
		
		memberVO vo = (memberVO) session.getAttribute("vo");
		
		etc_reservationDAO dao = new etc_reservationDAO();
	
		if (update_seat == null) {
			update_seat = seat;
		}

		int cnt = dao.reservationUpdate(vo,location,update_seat,update_checkout,date);
		
		if (cnt > 0) {
			response.sendRedirect("ReservationUpdateSuccess.html");
		} else {
			System.out.println("수정 실패");
			response.sendRedirect("Reservation.jsp");
		}
		
		
	}
}
