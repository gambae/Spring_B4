package com.reservationController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.reservationDAO;
import com.VO.memberVO;
import com.VO.reservationVO;

@WebServlet("/ReservationUpdateCon")
public class ReservationUpdateCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		memberVO vo = (memberVO) session.getAttribute("vo");
		
		reservationDAO dao = new reservationDAO();

		String update_checkout = request.getParameter("update_checkout");

		int cnt = dao.reservationUpdate(vo.getId(),update_checkout);

		if (cnt > 0) {
			ArrayList<reservationVO> list = (ArrayList)session.getAttribute("reservation_list");
			for (int i=0; i<list.size(); i++) {
				if (vo.getId().equals(list.get(i).getRsv_id())) {
					list.get(i).setCheckout(update_checkout);
				}
			}
			response.sendRedirect("Reservation.jsp");
		} else {
			System.out.println("수정 실패");
		}
	}
}
