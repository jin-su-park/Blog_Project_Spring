package com.pjs.blog.commons;

public class SearchVO extends PageVO {
	
	private String keyword; //검색어 값에 대한 처리
	private String condition; // 검색어 기준 처리(제목, 제목+작성자, 작성자)
	
	public SearchVO() {
		this.keyword = "";
		this.condition = "";
	}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	
	
}
