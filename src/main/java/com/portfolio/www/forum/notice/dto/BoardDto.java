package com.portfolio.www.forum.notice.dto;

public class BoardDto {
	
	private int boardSeq;
	private int boardTypeSeq;
	private String title;
	private String content;
	private int hit;
	private String delYn;
	private String regDtm;
	private int regMemberSeq;
	private String updateDtm;
	private int updateMemberSeq;
	
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	public String getRegDtm() {
		return regDtm;
	}
	public void setRegDtm(String regDtm) {
		this.regDtm = regDtm;
	}
	public int getRegMemberSeq() {
		return regMemberSeq;
	}
	public void setRegMemberSeq(int regMemberSeq) {
		this.regMemberSeq = regMemberSeq;
	}
	public String getUpdateDtm() {
		return updateDtm;
	}
	public void setUpdateDtm(String updateDtm) {
		this.updateDtm = updateDtm;
	}
	public int getUpdateMemberSeq() {
		return updateMemberSeq;
	}
	public void setUpdateMemberSeq(int updateMemberSeq) {
		this.updateMemberSeq = updateMemberSeq;
	}

}
