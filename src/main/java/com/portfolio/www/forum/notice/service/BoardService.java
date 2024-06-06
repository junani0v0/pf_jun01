package com.portfolio.www.forum.notice.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.www.forum.notice.dto.BoardDto;
import com.portfolio.www.forum.notice.mybatis.BoardRepository;

@Service
public class BoardService {
	
	@Autowired
	private BoardRepository boardRepository;
	
	// 게시글리스트 가져오기
	public List<BoardDto> getList(HashMap<String, String> params){
		return boardRepository.getList(params);
	}
	
	// 페이징용 전체 게시글 개수 가져오기
	public int getTotalCount(){
		return boardRepository.getTotalCount();
	}

}
