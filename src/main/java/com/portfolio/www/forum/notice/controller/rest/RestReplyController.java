package com.portfolio.www.forum.notice.controller.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.portfolio.www.forum.notice.dto.BoardCommentDto;
import com.portfolio.www.forum.notice.service.BoardCommentService;

@RestController
public class RestReplyController {
	
	@Autowired
	private BoardCommentService service;
	
	//댓글 작성
	@PostMapping("/forum/notice/reply.do")
	@ResponseBody
	public ResponseEntity<String> addComment(@RequestBody BoardCommentDto dto) {
		dto.setMemberSeq(73);  //맵버 seq 넣어줘야됨 수정예정

		int comment = service.addComment(dto);
		System.out.println("------------"+dto.getBoardSeq()+"====="+dto.getBoardTypeSeq());
		
		if(comment == 1) {
			return ResponseEntity.ok()
					.header(HttpHeaders.CONTENT_TYPE, "application/json;charset=UTF-8")
					.body("성공");
		} else {
			return ResponseEntity.badRequest()
					.header(HttpHeaders.CONTENT_TYPE, "application/json;charset=UTF-8")
					.body("실패");
		}
	}

}
