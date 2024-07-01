package com.portfolio.www.auth.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.portfolio.www.auth.dto.MemberDto;
import com.portfolio.www.auth.mybatis.MemberRepository;

import at.favre.lib.crypto.bcrypt.BCrypt;

@Service
public class LoginService {
	
	@Autowired
	private MemberRepository memberRepository;
	
	//로그인 사용자 검색
	public MemberDto login(HashMap<String, String> params) throws EmptyResultDataAccessException {
		//사용자 찾기
		MemberDto memberDto = memberRepository.getMember(params.get("memberId"));
		String passwd = params.get("passwd"); 
		//사용자가 입력한 비밀번호
		String dbpasswd = memberDto.getPasswd(); 
		
		BCrypt.Result result = BCrypt.verifyer().verify(passwd.toCharArray(), dbpasswd);

		return result.verified ? memberDto : null ;
	}
	
	//사용자 검색(아이디 찾기)
	public String recoverId(HashMap<String, String> params) throws EmptyResultDataAccessException {
	    String memberNm = params.get("memberNm");
	    String email = params.get("email");

	    // memberNm을 이용하여 멤버 조회
	    MemberDto memberByNm = memberRepository.getMember(memberNm);

	    // email을 이용하여 멤버 조회
	    MemberDto memberByEmail = memberRepository.getMember(email);

	    // id와 email이 일치하는지 확인
	    if (memberNm.equals(memberByNm.getMemberNm()) && email.equals(memberByEmail.getEmail())) {
	    	String result = memberRepository.recoverId(memberNm, email);
	    	System.out.println("----------service-------id------------:"+ result);
	    	
	    	
	        return memberRepository.recoverId(memberNm, email); // 둘 다 조건을 만족할 경우 memberByNm을 반환
	    } else {
	        return null; // 조건을 만족하지 않을 경우 null을 반환
	    }
	}


	
	
	
}
