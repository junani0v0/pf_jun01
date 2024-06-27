package com.portfolio.www.forum.notice.controller.rest;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

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
import com.portfolio.www.message.MessageEnum;

@RestController
public class RestReplyController {
	
	@Autowired
	private BoardCommentService service;
	
	//댓글 작성
	@PostMapping("/forum/notice/reply.do")
	@ResponseBody
	public int addComment(@RequestBody BoardCommentDto dto, HttpServletRequest request) {
		int memberSeq = (int) request.getSession().getAttribute("memberSeq");
	    dto.setMemberSeq(memberSeq);

		return service.addComment(dto);
	}
	
	//댓글 삭제
	@RequestMapping("/forum/notice/deleteComment.do")
	public ModelAndView deleteComment(@RequestParam HashMap<String, String> params) {
		
		int result = service.deleteComment(params);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		if (result==1) {
			mv.addObject("code",MessageEnum.REPLY_SUCCESS.getCode());
			mv.addObject("msg", MessageEnum.REPLY_SUCCESS.getDescription());
		}else {
			mv.addObject("code",MessageEnum.REPLY_FAIL.getCode());
			mv.addObject("msg", MessageEnum.REPLY_FAIL.getDescription());
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
