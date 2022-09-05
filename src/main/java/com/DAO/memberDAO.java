package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.memberVO;

public class memberDAO {

	ArrayList<memberVO> list = new ArrayList<memberVO>();
	memberVO vo = null;
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
			
			conn = DriverManager.getConnection(db_url,db_id,db_pw);
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

	public int join(String cls, String id, String pw, String email, String name, String birth, String tel) {
		try {
			connection();

			String sql = "insert into school_member values(?,?,?,?,?,?,?,sysdate,0,0)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1,cls);
			psmt.setString(2,id);
			psmt.setString(3,pw);
			psmt.setString(4,email);
			psmt.setString(5,name);
			psmt.setString(6,birth);
			psmt.setString(7,tel);

			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public memberVO login(String id, String pw) {
		try {
			connection();

			String sql = "select * from school_member where id = ? and pw = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,id);
			psmt.setString(2,pw);

			rs = psmt.executeQuery();

			if (rs.next()) {
				String getCls = rs.getString(1);
				String getId = rs.getString(2);
				String getPw = rs.getString(3);
				String getEmail = rs.getString(4);
				String getName = rs.getString(5);
				String getBirth = rs.getString(6);
				String getTel = rs.getString(7);
				int getPoint = rs.getInt(10);
				
				vo = new memberVO(getCls,getId,getPw,getEmail,getName,getBirth,getTel,getPoint);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	
	public memberVO Update(String cls, String id, String pw, String email, String name, String birth, String tel, int point) {
		try {
			connection();
			
			String sql = "update school_member set class=?, pw=?,email=?,name=?,birth=?,tel=? where id=?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1,cls);
			psmt.setString(2,pw);
			psmt.setString(3,email);
			psmt.setString(4,name);
			psmt.setString(5,birth);
			psmt.setString(6,tel);
			psmt.setString(7,id);

			vo = new memberVO(cls,id,pw,email,name,birth,tel,point);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	
	

}
