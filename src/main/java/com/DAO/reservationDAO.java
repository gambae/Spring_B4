package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import com.VO.memberVO;
import com.VO.reservationVO;

public class reservationDAO {
	
		ArrayList<reservationVO> list = new ArrayList<reservationVO>();
		memberVO vo = null;
		reservationVO rsv_vo = null;
		int cnt = 0;
		PreparedStatement psmt = null;
		Connection conn = null;
		ResultSet rs = null;
	
		public void connection() {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
	
				String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
				String db_id = "gjai_5_4_0822" ;
				String db_pw = "smhrd4";
	
				conn = DriverManager.getConnection(db_url, db_id, db_pw);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	
		public void close() {
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		public int reservationCount(String cls) {
			try {
				cnt = 0;
				
				connection();

				String sql = "select * from lecture_reservation where rsv_class=? and rsv_date >=trunc(sysdate) and rsv_date < trunc(sysdate)+1";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,cls);
				
				rs = psmt.executeQuery();

				while (rs.next()) {
					cnt++;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}  finally {
				close();
			}
			return cnt;
		}

		public int repetitionCheck(String id) {
			try {
				cnt = 0;
				
				connection();

				String sql = "select * from lecture_reservation where rsv_id=? and rsv_date >=trunc(sysdate) and rsv_date < trunc(sysdate)+1";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,id);
				
				rs = psmt.executeQuery();

				if (rs.next()) {
					cnt++;
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}  finally {
				close();
			}
			return cnt;
		}
		
		public int register(memberVO vo2, String cls, String time) {
			try {
				connection();

				String sql = "insert into lecture_reservation values(lecture_reservation_seq.nextval,?,?,?,?,sysdate)";
				
				psmt = conn.prepareStatement(sql);

				psmt.setString(1,cls);
				psmt.setString(2,vo2.getId());
				psmt.setString(3,vo2.getName());
				psmt.setString(4,time);
				
				cnt = psmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return cnt;
		}

		public ArrayList<reservationVO> ReservationSelect(String cls) {
			try {
				connection();

				String sql = "select * from lecture_reservation where rsv_class=? and rsv_date >=trunc(sysdate) and rsv_date < trunc(sysdate)+1";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,cls);
				
				rs = psmt.executeQuery();

				while (rs.next()) {
					String rsv_cls = rs.getString(2);
					String rsv_id = rs.getString(3);
					String rsv_name = rs.getString(4);
					String checkout = rs.getString(5);
					String rsv_date = rs.getString(6);

					rsv_vo = new reservationVO(rsv_cls,rsv_id,rsv_name,checkout,rsv_date);
					list.add(rsv_vo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}  finally {
				close();
			}
			return list;
		}

		public int reservationUpdate(String id, String update_checkout) {
			try {
				connection();
				
				String sql = "update lecture_reservation set checkout = ? where rsv_id =?";
				
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1,update_checkout);
				psmt.setString(2,id);
			
				cnt = psmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return cnt;
		}
		
		public int ReservationDelete(String id) {
			try {
				connection();
				
				String sql = "delete lecture_reservation where rsv_id =? and rsv_date >=trunc(sysdate) and rsv_date < trunc(sysdate)+1";
				
				psmt = conn.prepareStatement(sql);

				psmt.setString(1,id);
			
				cnt = psmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return cnt;
		}
		
		
		public int nowPoint(String id) {
			int point = 0;
			
			try {
				connection();
				
				String sql = "select * from school_member where id = ?";
				
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1,id);
				
				rs = psmt.executeQuery();
				
				if(rs.next()) {
					point = rs.getInt(10);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return point;
		}
		
		
		public void reservationPoint(String id) {
			int updatePoint = nowPoint(id) + 5;
			try {
				connection();
				
				String sql = "update school_member set point = ? where id = ?";
				
				psmt = conn.prepareStatement(sql);
				
				psmt.setInt(1,updatePoint);
				psmt.setString(2,id);
				
				cnt = psmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
		}
	
}
