package com.portfolio.www.forum.notice.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.portfolio.www.forum.notice.dto.BoardCommentDto;

@Repository
public interface BoardCommentRepository {
	
	//댓글 불러오기
	public List<BoardCommentDto> CommentList(@Param("boardSeq") int boardSeq, @Param("boardTypeSeq") int boardTypeSeq);
	
	//댓글 총개수
	public int getCommentCnt(@Param("boardSeq") int boardSeq);
	
	//댓글 작성
	public int addComment(BoardCommentDto boardCommentDto);
	
	//댓글 삭제
	public int deleteComment(HashMap<String, String> params);
	
	//댓글 수정
	public int editComment(HashMap<String, String> params);
	
	//댓글 전체 삭제
	public int deleteAllComment(@Param("boardSeq") int boardSeq, @Param("boardTypeSeq") int boardTypeSeq);
}
