package com.portfolio.www.forum.notice.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;
import org.springframework.web.multipart.MultipartFile;

import com.portfolio.www.forum.notice.dto.BoardAttachDto;
import com.portfolio.www.forum.notice.dto.BoardDisLikeDto;
import com.portfolio.www.forum.notice.dto.BoardDto;
import com.portfolio.www.forum.notice.dto.BoardLikeDto;
import com.portfolio.www.forum.notice.mybatis.BoardAttachRepository;
import com.portfolio.www.forum.notice.mybatis.BoardDislikeRepository;
import com.portfolio.www.forum.notice.mybatis.BoardLikeRepository;
import com.portfolio.www.forum.notice.mybatis.BoardRepository;
import com.portfolio.www.util.FileUtil;

@Service
public class BoardService {
	
	@Autowired
	private BoardRepository boardRepository;
	
	@Autowired
	private BoardAttachRepository boardAttachRepository;
	
	@Autowired
	private FileUtil fileUtil;
	
	@Autowired
	private BoardLikeRepository boardLikeRepository;
	
	@Autowired
	private BoardDislikeRepository boardDislikeRepository;
	
	// 게시글리스트 가져오기
	public List<BoardDto> getList(HashMap<String, String> params){
		return boardRepository.getList(params);
	}
	
	// 페이징용 전체 게시글 개수 가져오기
	public int getTotalCount(){
		return boardRepository.getTotalCount();
	}
	
	// 읽기페이지 가져오기
	public BoardDto getRead(int boardSeq) {
		return boardRepository.getRead(boardSeq);
	}
	
	// 첨부파일 가져오기(다중)
	public List<BoardAttachDto> getAttFile(int boarSeq, int boarTypeSeq) {
		return boardAttachRepository.getAttachInfoAll(boarSeq, boarTypeSeq);
	}
	
	// 글 작성
	public boolean write(HashMap<String, String> params,
			MultipartFile[] mfs) {
		// 첨부파일 DB에 저장
		File destFile = null;
		
		try {
			// 게시글 입력
			boardRepository.addBoard(params);
			int pk = Integer.parseInt(params.get("boardSeq"));
			
			//DTO만든다 값을 매핑 -> 테이블에 입력
			for(MultipartFile mf : mfs) {
				if (!mf.isEmpty()) { // 업로드된 파일이 비어있지 않은 경우에만 파일 저장 및 DB에 정보 저장
				// 물리적 파일 저장
				destFile = fileUtil.saveFile(mf);
				
				BoardAttachDto attachDto = new BoardAttachDto();
				attachDto.setBoardSeq(pk);
				attachDto.setBoardTypeSeq(1);
				attachDto.setOrgFileNm(mf.getOriginalFilename());
				attachDto.setChngFileNm(destFile.getName());
				attachDto.setFileType(mf.getContentType());
				attachDto.setFileSize(mf.getSize());
				attachDto.setSavePath(destFile.getAbsolutePath());
				
				//Dao만들어 테이블 저장
				boardAttachRepository.addFile(attachDto);
				}
			}
			return true;
			
		} catch (Exception e) {
			if(!ObjectUtils.isEmpty(destFile)) {
				destFile.delete();	//저장 안될경우 파일 삭제 안할경우 나중에 쌓이면 터짐
			}
			return false;
		}
		// 첨부파일 물리적 저장
	}
	
	// 수정 기능
	public int edit(HashMap<String, String> params,
			MultipartFile[] mfs) {
		// 첨부파일 DB에 저장
		File destFile = null;
		int cnt = -1;
		
		try {
			// 게시글 입력
			cnt = boardRepository.updateBoard(params);
			
			//DTO만든다 값을 매핑 -> 테이블에 입력
			for(MultipartFile mf : mfs) {
				if (!mf.isEmpty()) { // 업로드된 파일이 비어있지 않은 경우에만 파일 저장 및 DB에 정보 저장
				// 물리적 파일 저장
				destFile = fileUtil.saveFile(mf);
				
				BoardAttachDto attachDto = new BoardAttachDto();
				attachDto.setBoardSeq(Integer.parseInt(params.get("boardSeq")));	//수정부분
				attachDto.setBoardTypeSeq(1);
				attachDto.setOrgFileNm(mf.getOriginalFilename());
				attachDto.setChngFileNm(destFile.getName());
				attachDto.setFileType(mf.getContentType());
				attachDto.setFileSize(mf.getSize());
				attachDto.setSavePath(destFile.getAbsolutePath());
				
				//Dao만들어 테이블 저장
				boardAttachRepository.addFile(attachDto);
				
				}
			}
			return cnt;
			
		} catch (Exception e) {
			if(ObjectUtils.isEmpty(destFile)) {
				destFile.delete();	//저장 안될경우 파일 삭제 안할경우 나중에 쌓이면 터짐
			}
			return cnt;
		}
	}
	
	// 게시글 삭제 기능
	public int delete(HashMap<String, String> params,
			MultipartFile[] mfs) {
		
		int boardSeq = Integer.parseInt(params.get("boardSeq"));
		int boardTypeSeq = Integer.parseInt(params.get("boarTypeSeq"));
				
		int cnt = boardRepository.deleteBoard(boardSeq, boardTypeSeq);
				
		return cnt ;
	}
	
	//첨부파일 삭제
	public int deleteAttachInfo(int attachSeq) {
		int cnt = boardAttachRepository.deleteAttachInfo(attachSeq);
		return cnt;
	}
	
	//첨부파일 삭제
	public int deleteAllAttachInfo(int boardSeq, int boarTypeSeq) {
		int cnt = boardAttachRepository.deleteAllAttachInfo(boardSeq, boarTypeSeq);
		return cnt;
	}
	
	// 첨부파일 다운로드
	public BoardAttachDto getDownloadFileInfo(int attachSeq) {
		return boardAttachRepository.getAttachInfo(attachSeq);		
	}
	
	//전체 압축 다운로드
	public List<BoardAttachDto> getDownloadZipFileInfo(int boardSeq, int boardTypeSeq) {
		return boardAttachRepository.getAttachInfoAll(boardSeq, boardTypeSeq);
	}
	
	// 좋아요 여부
	public int getLike(int boardSeq, int boardTypeSeq, int memberSeq){
		return boardLikeRepository.existsLike(boardSeq, boardTypeSeq, memberSeq);
	}
	
	// 싫어요 여부
	public int getDisLike(int boardSeq, int boardTypeSeq, int memberSeq){
		return boardDislikeRepository.existsDisLike(boardSeq, boardTypeSeq, memberSeq);
	}
	
	//좋아요 기능
	public int thumbUp(int boardSeq, int boardTypeSeq, int memberSeq, String ip) {

		int cnt = boardLikeRepository.existsLike(boardSeq, boardTypeSeq, memberSeq);
		int result = -1;

		// 좋아요 있으면 삭제
		if (cnt == 1) {
			boardLikeRepository.deleteLike(boardSeq, boardTypeSeq, memberSeq);
			boardDislikeRepository.deleteDisLike(boardSeq, boardTypeSeq, memberSeq);

			result = 0;
		} else {
			boardDislikeRepository.deleteDisLike(boardSeq, boardTypeSeq, memberSeq);
			BoardLikeDto boardLikeDto = new BoardLikeDto();
			boardLikeDto.setBoardSeq(boardSeq);
			boardLikeDto.setBoardTypeSeq(boardTypeSeq);
			boardLikeDto.setMemberSeq(memberSeq);
			boardLikeDto.setIp(ip);

			// insert
			result = boardLikeRepository.addLike(boardLikeDto);

		}

		return result;

	}
	
	//싫어요 기능
	public int thumbDown(int boardSeq, int boardTypeSeq, int memberSeq, String ip) {

		int cnt = boardDislikeRepository.existsDisLike(boardSeq, boardTypeSeq, memberSeq);
		int result = -1;

		// 싫어요 있으면 삭제
		if (cnt == 1) {
			boardLikeRepository.deleteLike(boardSeq, boardTypeSeq, memberSeq);
			boardDislikeRepository.deleteDisLike(boardSeq, boardTypeSeq, memberSeq);
			
			result = 0;
		} else {
			// 좋아요와 싫어요는 중복될 수 없다!
			boardLikeRepository.deleteLike(boardSeq, boardTypeSeq, memberSeq);
			BoardDisLikeDto boardDisLikeDto = new BoardDisLikeDto();
			boardDisLikeDto.setBoardSeq(boardSeq);
			boardDisLikeDto.setBoardTypeSeq(boardTypeSeq);
			boardDisLikeDto.setMemberSeq(memberSeq);
			boardDisLikeDto.setIp(ip);

			// insert
			result = boardDislikeRepository.addDisLike(boardDisLikeDto);

		}

		return result;

	}
	

}
