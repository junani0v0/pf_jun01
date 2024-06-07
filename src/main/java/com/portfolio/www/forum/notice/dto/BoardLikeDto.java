package com.portfolio.www.forum.notice.dto;

import org.apache.ibatis.type.Alias;

@Alias("BoardLikeDto")
public class BoardLikeDto {
	
	private int boardSeq;
	private int boardTypeSeq;
	private int memberSeq;
	private String ip;
	private String regDtm;
	
	public int getBoardSeq() {
		return boardSeq;
	}
	public void setBoardSeq(int boardSeq) {
		this.boardSeq = boardSeq;
	}
	public int getBoardTypeSeq() {
		return boardTypeSeq;
	}
	public void setBoardTypeSeq(int boardTypeSeq) {
		this.boardTypeSeq = boardTypeSeq;
	}
	public int getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getRegDtm() {
		return regDtm;
	}
	public void setRegDtm(String regDtm) {
		this.regDtm = regDtm;
	}
	

}
