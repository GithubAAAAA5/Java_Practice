package com.bean;

public class User {



	/*
	 * 	자바빈 클래스는 form 과 데이터베이스 통신 과정에서 변수처리를 쉽게 하기 위해서 사용하는 클래스 
	 *  관련된 변수들을 선언, getter, setter 를 반드시 설정한다.
	 *  기본 생성자도 반드시 생성한다.
	 */

	private String id;
	private String pw;
	private String name;
	private String email;
	
	
	// 기본 생성자
	public User() {
		// TODO Auto-generated constructor stub
	}


	// 필드 생성자
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


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
}




















