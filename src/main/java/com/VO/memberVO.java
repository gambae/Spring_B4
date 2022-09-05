package com.VO;

public class memberVO {

	private String cls;
	private String id;
	private String pw;
	private String email;
	private String name;
	private String birth;
	private String tel;
	private int point;
	
	public memberVO(String cls, String id, String pw, String email, String name, String birth, String tel, int point ) {
		super();
		this.cls = cls;
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.name = name;
		this.birth = birth;
		this.tel = tel;
		this.point = point;
	}

	

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getCls() {
		return cls;
	}

	public void setCls(String cls) {
		this.cls = cls;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
}
