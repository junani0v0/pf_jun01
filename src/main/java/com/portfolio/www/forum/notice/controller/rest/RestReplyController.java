package com.portfolio.www.forum.notice.controller.rest;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.www.forum.notice.dto.BoardCommentDto;
import com.portfolio.www.forum.notice.service.BoardCommentService;

@RestController
public class RestReplyController {
	
	@Autowired
	private BoardCommentService service;
	
	//댓글 작성
	@PostMapping("/forum/notice/reply.do")
	@ResponseBody
	public int addComment(@RequestBody BoardCommentDto dto) {
		dto.setMemberSeq(73);  //맵버 seq 넣어줘야됨 수정예정

		return service.addComment(dto);
	}
	
	//댓글 삭제
	@RequestMapping("/forum/notice/deleteComment.do")
	public ModelAndView deleteComment(@RequestParam HashMap<String, String> params) {
		
		int result = service.deleteComment(params);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		if (result==1) {
			mv.addObject("code","0000");
			mv.addObject("msg", "작성 완료");
		}else {
			mv.addObject("code","9000");
			mv.addObject("msg", "작성 실패");
		}
		mv.setViewName("forum/notice/read");
		return mv;
	}	
	
	//댓글 수정
	@RequestMapping("/forum/notice/updateComment.do")
	@ResponseBody
	public ResponseEntity<String> updateComment(@RequestBody HashMap<String, String> params) {
	    int result = service.editComment(params);
	    if (result == 1) {
	        return new ResponseEntity<>("댓글 수정 완료", HttpStatus.OK);
	    } else {
	        return new ResponseEntity<>("댓글 수정 실패", HttpStatus.BAD_REQUEST);
	    }
	}

}
