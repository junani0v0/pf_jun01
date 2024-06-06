package com.portfolio.www.forum.notice.mybatis;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.portfolio.www.forum.notice.dto.BoardDto;

@Repository
public interface BoardRepository {
	
	//리스트 가져오기
	public List<BoardDto> getList(HashMap<String, String> params);
	
	//게시글 전체 개수
	public int getTotalCount();

}
