package com.portfolio.www.auth.service;

import java.util.Calendar;
import java.util.HashMap;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import com.portfolio.www.auth.dto.EmailDto;
import com.portfolio.www.auth.dto.MemberAuthDto;
import com.portfolio.www.auth.mybatis.MemberAuthRepository;
import com.portfolio.www.auth.mybatis.MemberRepository;
import com.portfolio.www.auth.util.EmailUtil;

import at.favre.lib.crypto.bcrypt.BCrypt;

@Service
public class JoinService {
	
	@Autowired
	private MemberRepository memberRepository;
	
	@Autowired
	private MemberAuthRepository memberAuthRepository;
	
	@Autowired
	private EmailUtil emailUtil;
	
	@Value("#{config['email.certification']}")
	private String HOME_URI;
	
	@Value("#{config['email.username']}")
	private String EMAIL_ADDRESS;
	
	//회원가입
	public int join(HashMap<String, String> params) {
		//비밀번호 암호화
		String passwd = params.get("passwd");
		String encPasswd = BCrypt.withDefaults().hashToString(12, passwd.toCharArray());
		BCrypt.Result result = BCrypt.verifyer().verify(passwd.toCharArray(), encPasswd);
		params.put("passwd", encPasswd);
		
		int cnt;
		String inputId = params.get("memberId");
		
		try {
			//회원ID 중복 체크
//			String idCheck = memberRepository.getMemberId(inputId);
			//아래 기능 호출해 사용
			boolean idCheck = getMemberId(inputId);
			
			//회원추가
			cnt = memberRepository.addJoin(params);
//			int memberSeq = memberRepository.getMemberSeq(params.get("memberId"));
			
			if(cnt == 1) {
				//인증메일 uri 생성
				MemberAuthDto memberAuthDto = new MemberAuthDto();
//				memberAuthDto.setMemberSeq(memberSeq);
				memberAuthDto.setMemberSeq(memberRepository.getMemberSeq(params.get("memberId")));
				String uri = UUID.randomUUID().toString().replaceAll("-", "");
				memberAuthDto.setAuthUri(uri);
				
				//인증만료 시간 생성
				Calendar cal = Calendar.getInstance();
				cal.add(Calendar.MINUTE, 30);
				memberAuthDto.setExpireDtm(cal.getTimeInMillis());
				
				//인증 정보 추가
				memberAuthRepository.addAuthInfo(memberAuthDto);
				//인증메일 발송
				EmailDto emailDto = new EmailDto();
				emailDto.setFrom("junani0v0@naver.com"); //보내는 사람
				emailDto.setReceiver(params.get("email")); //받는 사람(logind.jsp에 입력한 email 값 )
				emailDto.setSubject("회원가입 인증 메일");	//메일 제목
				String html = "<a href='"+ HOME_URI +"/pf/auth/emailAuth.do?uri="+ memberAuthDto.getAuthUri() +"'>인증하기</a>";
				emailDto.setText(html);//본문 내용
				
				emailUtil.sendMail(emailDto, true);	//EmailUtil에 값 넘겨주기
			}
		} catch (DuplicateKeyException e) {
			cnt = 0;
		}
		return cnt;
	}
	
	//회원 인증
	public boolean emailAuth(String uri) {
		boolean result;
		try {	// true반환
			MemberAuthDto memberAuthDto = memberAuthRepository.getAuthUri(uri);
			//인증 유효성 검사
			Long now = Calendar.getInstance().getTimeInMillis();
			
			result = now < memberAuthDto.getExpireDtm();
			if(result) {
				
				// member_auth -> auth_yn : Y 로 바꾸기
				memberAuthRepository.updateAuthInfo(memberAuthDto);
			}
		}catch(NullPointerException e){	//NullPointerException발생하면 false반환
			result = false;
			
		}
		return result;
	}
	
	//회원 삭제
	public int deleteMember(String memberId) {
		int result = memberRepository.deleteMember(memberId);
		return result;
	}
	
	//
	public int getMemberSeq(String memberId) {
		int result = memberRepository.getMemberSeq(memberId);
		return result;
	}
	
	//아이디 중복 테스트용
	public boolean getMemberId(String memberId) {
		return memberRepository.getMemberId(memberId);
	}
	
	
}
