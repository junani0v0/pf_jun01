package com.portfolio.www.forum.notice.dto;

import org.apache.ibatis.type.Alias;

@Alias("BoardDto")
public class BoardDto {
	private int boardSeq;
	private int boardTypeSeq;
	private String title;
	private String content;
	private int hit;
	private String delYn;
	private String regDtm;
	private int regMemberSeq;
	private String memberId;
	private String updateDtm;
	private int updateMemberSeq;
	private String boardTypeNm;
	
	private int commentCnt;	//댓글 개수
    private int attachCnt;	//첨부파일 개수
    private int likeCnt;	//좋아요 개수
    private int disLikeCnt;	//싫어요 개수
    
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
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
	public String getBoardTypeNm() {
		return boardTypeNm;
	}
	public void setBoardTypeNm(String boardTypeNm) {
		this.boardTypeNm = boardTypeNm;
	}
	public int getCommentCnt() {
		return commentCnt;
	}
	public void setCommentCnt(int commentCnt) {
		this.commentCnt = commentCnt;
	}
	public int getAttachCnt() {
		return attachCnt;
	}
	public void setAttachCnt(int attachCnt) {
		this.attachCnt = attachCnt;
	}
	public int getLikeCnt() {
		return likeCnt;
	}
	public void setLikeCnt(int likeCnt) {
		this.likeCnt = likeCnt;
	}
	public int getDisLikeCnt() {
		return disLikeCnt;
	}
	public void setDisLikeCnt(int disLikeCnt) {
		this.disLikeCnt = disLikeCnt;
	}

}