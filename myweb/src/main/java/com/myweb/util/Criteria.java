package com.myweb.util;

public class Criteria {
	
	private int pageNum;	// 페이지 번호
	private int count;		// 게시물 개수
	
	public Criteria() {
		// 최초 게시판에 진입시 기본값 설정, 페이지 1번, 게시물 10개
		this.pageNum = 1;
		this.count = 10;
	}

	
	// field 
	
	public Criteria(int pageNum, int count) {
		super();
		this.pageNum = pageNum;
		this.count = count;
	}

	// limit x, count 구문에서 전달될 x값을 구하는 메서드
	public int getPageStart() {
		return (pageNum - 1) * count;
	}
	
	
	// getter setter 
	
	public int getPageNum() {
		return pageNum;
	}


	public int getCount() {
		return count;
	}


	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}


	public void setCount(int count) {
		this.count = count;
	}



	
	
	
	
}
