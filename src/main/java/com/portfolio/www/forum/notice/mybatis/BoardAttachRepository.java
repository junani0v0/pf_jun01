package com.portfolio.www.forum.notice.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.portfolio.www.forum.notice.dto.BoardAttachDto;

@Repository
public interface BoardAttachRepository {
		
	//다중 업로드파일 가져오기
	public List<BoardAttachDto> getAttachInfoAll(@Param("boardSeq") int boardSeq, @Param("boardTypeSeq") int boardTypeSeq);
	
	//첨부파일 업로드
	public int addFile(BoardAttachDto attachDto);
	
	//첨부파일 삭제
	public int deleteAttachInfo(int attachSeq);
	
	//단일 업로드 가져오기
	public BoardAttachDto getAttachInfo(int attachSeq);
}
