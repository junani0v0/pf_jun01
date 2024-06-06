package com.portfolio.www.test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.fail;

import java.util.HashMap;

import javax.annotation.Resource;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import com.portfolio.www.auth.dto.EmailDto;
import com.portfolio.www.auth.dto.MemberAuthDto;
import com.portfolio.www.auth.dto.MemberDto;
import com.portfolio.www.auth.service.JoinService;

import lombok.extern.slf4j.Slf4j;

@ExtendWith(SpringExtension.class)	// junit5,
@ContextConfiguration(locations = {"classpath:context-beans-test.xml", "classpath:context-datasource.xml", "classpath:**/pf-servlet.xml"})
@Slf4j
class JoinServiceTest {
	
//	@Autowired //test는 @Autowired로 주입 불가
	@Resource(name ="joinService")
	private JoinService joinService;

	@Test
	@Transactional
	void testJoin() {
//		System.out.println("------------joinService-----------" + joinService);
		//컨트롤로 코드 구현
		HashMap<String, String> params = new HashMap();
		params.put("memberId","test123");
		params.put("passwd","test123");
		params.put("memberNm","test");
		params.put("email","junani0v0@naver.com");

		//아이디 중복 체크
		String memberId = joinService.getMemberId(params.get("memberId"));
		assertNotEquals("test123", memberId);
		
		int result = joinService.join(params);
		assertEquals(1, result);
		//왼쪽과 오른쪽 같아야한다
		
//		MemberDto memberDto = new MemberDto();
//		int memberSeq = memberDto.getMemberSeq();	//memberDto가 비어있어서 못가져옴
		int memberSeq = joinService.getMemberSeq(params.get("memberId"));
		assertNotEquals(0, memberSeq);
		//같으면 안된다
		
//		assertEquals(1, joinService.deleteMember(params.get("memberId")));
		//삭제하면 기대값 1
		//AuthDto도 지워야됨
//		fail("Not yet implemented");
		
	}
	
	@Test
	@Transactional
	void testEmailAuth() {
		HashMap<String, String> params = new HashMap();
		params.put("memberId","test123");
		params.put("passwd","test123");
		params.put("memberNm","test");
		params.put("email","junani0v0@naver.com");
		//오버로딩 활용 하나는 난수 있는거 하나는 난수 없는거
		int result = joinService.join(params);
		
	}

}
