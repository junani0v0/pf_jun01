package com.portfolio.www.forum.notice.mybatis;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.portfolio.www.forum.notice.dto.BoardLikeDto;

@Repository
public interface BoardLikeRepository {
	
	//좋아요 여부
	public int existsLike(@Param("boardSeq") int boardSeq, @Param("boardTypeSeq") int boardTypeSeq, @Param("memberSeq") int memberSeq);

	//좋아요 기능
	public int addLike(BoardLikeDto boardLikeDto);
	
	//좋아요 삭제
	public int deleteLike(@Param("boardSeq") int boardSeq, @Param("boardTypeSeq") int boardTypeSeq, @Param("memberSeq") int memberSeq);
}
