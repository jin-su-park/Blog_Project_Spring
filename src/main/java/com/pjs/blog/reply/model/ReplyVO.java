package com.pjs.blog.reply.model;

import java.util.Date;

public class ReplyVO {
	private Integer replyNo; //댓글 번호
	private Integer boardNo; //게시글 번호
	private String replyContent; //댓글 내용
	private String rePlyer;	//댓글 작성자
	private Date regDate; //댓글 작성 날짜
	private Date updateDate; //
	private boolean regDateForm; //최근 댓글인지 확인하는 방식
	
	public boolean isRegDateForm() {
		return regDateForm;
	}
	public void setRegDateForm(boolean regDateForm) {
		this.regDateForm = regDateForm;
	}
	public Integer getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(Integer replyNo) {
		this.replyNo = replyNo;
	}
	public Integer getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(Integer boardNo) {
		this.boardNo = boardNo;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getRePlyer() {
		return rePlyer;
	}
	public void setRePlyer(String rePlyer) {
		this.rePlyer = rePlyer;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	
	@Override
	public String toString() {
		return "ReplyVO [replyNo=" + replyNo + ", boardNo=" + boardNo + ", replyContent=" + replyContent + ", rePlyer="
				+ rePlyer + ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
	}
	
	
	

	
}
