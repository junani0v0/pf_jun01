package com.portfolio.www.auth.mybatis;

import java.util.HashMap;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.portfolio.www.auth.dto.MemberDto;

@Repository
public interface MemberRepository {
	//회원가입
	public int addJoin(HashMap<String, String> params);
	//회원 ID 조회
	public boolean getMemberId(String memberId);
	//회원 번호 조회
	public int getMemberSeq(String memberId);
	//회원 조회
	public MemberDto getMember(String memberId);
	//회원 삭제
	public int deleteMember(String memberId);
	
	//아이디 찾기
	public String recoverId(@Param("memberNm") String memberNm, @Param("email") String email);
}

