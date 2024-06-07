package com.portfolio.www.forum.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.www.forum.notice.dto.BoardCommentDto;
import com.portfolio.www.forum.notice.mybatis.BoardCommentRepository;

@Service
public class BoardCommentService {
	
	@Autowired
	private BoardCommentRepository boardCommentRepository;
	
	//댓글 불러오기
	public List<BoardCommentDto> list(int boardSeq, int BoardTypeSeq) {
		return boardCommentRepository.CommentList(boardSeq, BoardTypeSeq);
	}
	
	//댓글 개수
	public int getCommentCnt(int boardSeq) {
		return boardCommentRepository.getCommentCnt(boardSeq);
	}

}
