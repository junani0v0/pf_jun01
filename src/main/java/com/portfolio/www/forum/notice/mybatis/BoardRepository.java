package com.portfolio.www.forum.notice.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.portfolio.www.forum.notice.dto.BoardDto;

@Repository
public interface BoardRepository {
	
	//리스트 가져오기
	public List<BoardDto> getList(HashMap<String, String> params);
	
	//게시글 전체 개수
	public int getTotalCount();

	//좋아요 여부
	public int existsLike(@Param("boardSeq") int boardSeq, @Param("boardTypeSeq") int boardTypeSeq, @Param("memberSeq") int memberSeq);
	
	//싫어요 여부
	public int existsDisLike(@Param("boardSeq") int boardSeq, @Param("boardTypeSeq") int boardTypeSeq, @Param("memberSeq") int memberSeq);
	
	//게시글 읽기 페이지 정보 가져오기
	public BoardDto getRead(int boardSeq);
	
	//게시글 작성
	public int addBoard(HashMap<String, String> params);
	
	//게시글 수정
	public int updateBoard(HashMap<String, String> params);
}
