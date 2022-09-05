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

@WebServlet("/etc_ReservationCon")
public class etc_ReservationCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		String location = request.getParameter("location");
		String date = request.getParameter("date");
		String checkout = request.getParameter("checkout");
		String seat = request.getParameter("seat");
		
		System.out.println(location);
		System.out.println(date);
		System.out.println(checkout);
		System.out.println(seat);
		
		HttpSession session = request.getSession();
		
		memberVO vo = (memberVO) session.getAttribute("vo");
		
		etc_reservationDAO dao = new etc_reservationDAO();
		
		int cnt = 0;
		
		if (location.equals("AI_lab(2F)") && seat.equals("25")) {
			cnt = dao.register(vo,location,"1",checkout,date);
			cnt = dao.register(vo,location,"2",checkout,date);
			cnt = dao.register(vo,location,"3",checkout,date);			
		} else if (location.equals("Cafe") && seat.equals("29")) {
			cnt = dao.register(vo,location,"53",checkout,date);
			cnt = dao.register(vo,location,"29",checkout,date);
			cnt = dao.register(vo,location,"30",checkout,date);
			cnt = dao.register(vo,location,"31",checkout,date);
			cnt = dao.register(vo,location,"32",checkout,date);
		} else if (location.equals("Cafe") && seat.equals("17")) {
			cnt = dao.register(vo,location,"54",checkout,date);
			cnt = dao.register(vo,location,"17",checkout,date);
			cnt = dao.register(vo,location,"18",checkout,date);
			cnt = dao.register(vo,location,"19",checkout,date);
			cnt = dao.register(vo,location,"20",checkout,date);
			cnt = dao.register(vo,location,"21",checkout,date);
			cnt = dao.register(vo,location,"22",checkout,date);
		} else if (location.equals("Cafe") && seat.equals("23")) {
			cnt = dao.register(vo,location,"55",checkout,date);
			cnt = dao.register(vo,location,"23",checkout,date);
			cnt = dao.register(vo,location,"24",checkout,date);
			cnt = dao.register(vo,location,"25",checkout,date);
			cnt = dao.register(vo,location,"26",checkout,date);
			cnt = dao.register(vo,location,"27",checkout,date);
			cnt = dao.register(vo,location,"28",checkout,date);
		} else if (location.equals("Cafe") && seat.equals("47")) {
			cnt = dao.register(vo,location,"56",checkout,date);
			cnt = dao.register(vo,location,"47",checkout,date);
			cnt = dao.register(vo,location,"48",checkout,date);
			cnt = dao.register(vo,location,"49",checkout,date);
			cnt = dao.register(vo,location,"50",checkout,date);
			cnt = dao.register(vo,location,"51",checkout,date);
			cnt = dao.register(vo,location,"52",checkout,date);
		} else {
			cnt = dao.register(vo,location,seat,checkout,date);
		}

		if (cnt > 0) {
			dao.reservationPoint(vo.getId());
			
			response.sendRedirect("etc_Reservation.jsp");
		} else {
			System.out.println("신청 실패");
			response.sendRedirect("Main.jsp");
		}
		
	}
}
