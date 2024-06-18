package com.portfolio.www.message;

public enum MessageEnum {
	
	//생성자 무조건 필요, 앞에 부분을 생성자로 취급
	SUCCESS("0000","성공"),
	JOIN_SUCCESS("0001","회원가입이 성공하였습니다"),
	EMAIL_SEND_SUCCESS("0002","인증 이메일 발송이 완료되었습니다"),
	
	WRITE_SUCCESS("0011", "게시글 작성이 완료 되었습니다"),
	EDIT_SUCCESS("0012", "게시글 수정이 완료 되었습니다"),
	DELETE_SUCCESS("0013", "게시글 삭제가 완료 되었습니다"),
	
	
	USER_NOT_FOUND("9000","사용자가 없습니다"),
	PASSWORD_ERROR("9001","비밀번호가 틀렸습니다"),
	USER_ID_DUPLICATION("9002","비밀번호가 틀렸습니다"),
	EMAIL_VALIDATED_FAIL("9003","인증이 실패하였습니다"),
	
	
	WRITE_FAIL("9911", "게시글 작성이 실패하였습니다"),
	EDIT_FAIL("9912", "게시글 수정이 실패하였습니다"),
	DELETE_FAIL("9913", "게시글 삭제가 실패하였습니다"),
	WRONG_APPROACH("9999", "잘못된 접근입니다")
	;
	
	
	
	MessageEnum(String code, String description){
		this.code = code;
		this.description = description;
	}
	
	private String code;
	private String description;
	
	//Enum은 setter 필요X, getter만 필요
	public String getCode() {
		return code;
	}
	public String getDescription() {
		return description;
	}

}
