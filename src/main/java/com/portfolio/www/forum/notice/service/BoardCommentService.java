package com.portfolio.www.forum.notice.service;

import java.util.HashMap;
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
	
	//댓글 추가
	public int addComment(BoardCommentDto dto) {
		return boardCommentRepository.addComment(dto);
	}
	
	//댓글 삭제
	public int deleteComment(HashMap<String, String> params) {
		int cnt = boardCommentRepository.deleteComment(params);
		
		return cnt;
	}
	
	//댓글 수정
	public int editComment(HashMap<String, String> params) {
		int cnt = boardCommentRepository.editComment(params);
		
		return cnt;
	}
}
