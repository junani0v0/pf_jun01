package com.portfolio.www.forum.notice.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.www.forum.notice.dto.BoardAttachDto;
import com.portfolio.www.forum.notice.dto.BoardDto;
import com.portfolio.www.forum.notice.mybatis.BoardAttachRepository;
import com.portfolio.www.forum.notice.mybatis.BoardRepository;

@Service
public class BoardService {
	
	@Autowired
	private BoardRepository boardRepository;
	
	@Autowired
	private BoardAttachRepository boardAttachRepository;
	
	// 게시글리스트 가져오기
	public List<BoardDto> getList(HashMap<String, String> params){
		return boardRepository.getList(params);
	}
	
	// 페이징용 전체 게시글 개수 가져오기
	public int getTotalCount(){
		return boardRepository.getTotalCount();
	}
	
	// 좋아요여부
	public int getLike(int boardSeq, int boardTypeSeq, int memberSeq){
		return boardRepository.existsLike(boardSeq, boardTypeSeq, memberSeq);
	}
	
	// 싫어요여부
	public int getDisLike(int boardSeq, int boardTypeSeq, int memberSeq){
		return boardRepository.existsDisLike(boardSeq, boardTypeSeq, memberSeq);
	}
	
	// 읽기페이지 가져오기
	public BoardDto getRead(String string) {
		return boardRepository.getRead(string);
	}
	
	// 첨부파일 가져오기(다중)
	public List<BoardAttachDto> getAttFile(int boarSeq, int boarTypeSeq) {
		return boardAttachRepository.getAttachInfo(boarSeq, boarTypeSeq);
	}


}
