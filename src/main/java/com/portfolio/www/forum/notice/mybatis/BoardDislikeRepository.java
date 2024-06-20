package com.portfolio.www.forum.notice.mybatis;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.portfolio.www.forum.notice.dto.BoardDisLikeDto;

@Repository
public interface BoardDislikeRepository {
	
	//싫어요 여부
	public int existsDisLike(@Param("boardSeq") int boardSeq, @Param("boardTypeSeq") int boardTypeSeq, @Param("memberSeq") int memberSeq);

	//싫어요 추가
	public int addDisLike(BoardDisLikeDto boardDisLikeDto);
	
	//싫어요 삭제
	public int deleteDisLike(@Param("boardSeq") int boardSeq, @Param("boardTypeSeq") int boardTypeSeq, @Param("memberSeq") int memberSeq);
}
