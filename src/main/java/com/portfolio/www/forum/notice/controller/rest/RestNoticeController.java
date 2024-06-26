package com.portfolio.www.forum.notice.controller.rest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.portfolio.www.forum.notice.service.BoardService;

@RestController
public class RestNoticeController {
	
	@Autowired
	private BoardService service;
	
	//좋아요 기능
	@GetMapping("/forum/notice/thumb-up.do")
	@ResponseBody
	public int thumbUp(@RequestParam int boardSeq, 
			@RequestParam int boardTypeSeq, 
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int memberSeq = -1; //이상한 값인지 바로 알기위해 음수로 넣음
		//사용자가 들어가야되는 값인데 지금 수정못해 나중에 수정하기위해 마이너스 값 넣기도 한다
		try {
			memberSeq = (int) session.getAttribute("memberSeq");
			
		}catch(NullPointerException nep){
			System.out.println("사용자 없음");
			//exception 던지거나, 로그인 페이지로
		}
		
		String ip = request.getRemoteAddr();	
		//ip 2개 나오는 경우에는 ㄷㅌ. 192.169.0.1 10.40.18.59 cdn 경유할 경우 cdn주소 같이 따라오는 경우
		//뒤에 AWS ip만 올수도 있다(하나나올경우에도 ip확인필요)
		
		return service.thumbUp(boardSeq, boardTypeSeq, memberSeq, ip);
	}
		
	//싫어요 기능
	@GetMapping("/forum/notice/{boardTypeSeq}/{boardSeq}/thumb-down.do")
	@ResponseBody
	public int thumbDown(
			@PathVariable("boardSeq") int boardSeq,
			@PathVariable("boardTypeSeq") int boardTypeSeq,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int memberSeq = -1;
		try {
			memberSeq = (int) session.getAttribute("memberSeq");
		}catch(NullPointerException nep) {
			System.out.println("사용자가 없습니다");
		}
		String ip = request.getRemoteAddr();
		return service.thumbDown(boardSeq, boardTypeSeq, memberSeq, ip);
		
	}

}
