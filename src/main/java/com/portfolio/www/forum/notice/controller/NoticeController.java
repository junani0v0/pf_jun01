package com.portfolio.www.forum.notice.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.portfolio.www.forum.notice.dto.BoardAttachDto;
import com.portfolio.www.forum.notice.dto.BoardDto;
import com.portfolio.www.forum.notice.service.BoardCommentService;
import com.portfolio.www.forum.notice.service.BoardService;
import com.portfolio.www.message.MessageEnum;

@Controller
public class NoticeController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private BoardCommentService boardCommentService;
	
	//리스트 페이지
	@RequestMapping("/forum/notice/listPage.do")
	public ModelAndView listPage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("forum/notice/list");
		
		//방어 코딩 처음에 params 없어 에러 나니(기본값 설정)
		if(!params.containsKey("page")) {
			params.put("page", "1");
		}
		if(!params.containsKey("size")) {
			params.put("size", "10");
		}
		 
		// 시작 인덱스 계산
	    int page = Integer.parseInt(params.get("page"));
	    int size = Integer.parseInt(params.get("size"));
	    int start = (page - 1) * size;
	    params.put("start",	String.valueOf(start));
		
	    // 게시물 목록 및 페이징 정보 가져오기
		List<BoardDto> list = service.getList(params);
		
		// 전체 항목 수 가져오기
	    int totalCount = service.getTotalCount();
	    
	    // 페이징 정보 계산
	    int totalPages = (int) Math.ceil((double) totalCount / size);
	    int startPage = ( (page -1) / size ) * size + 1;
	    int endPage = startPage + size - 1 ;
	    int countPage = 10 ; //페이징 보여줄 개수 [1][2][3]
	    
	    // 마지막 페이지가 totalPages보다 클 경우, endPage를 totalPages로 설정
	    if (endPage > totalPages) {
	        endPage = totalPages;
	    }
	    
	    // 페이징 전 페이지, 다음 페이지 보이고 안보이고 하기용 
	    boolean hasPrev = startPage > 1;
	    boolean hasNext = endPage < totalPages;
	    
	    mv.addObject("list", list);
	    mv.addObject("totalCount", totalCount);
	    mv.addObject("currentPage", page);
	    mv.addObject("countPage", countPage);
	    mv.addObject("hasPrev", hasPrev);
	    mv.addObject("hasNext", hasNext);
	    mv.addObject("startPage", startPage);
	    mv.addObject("endPage", endPage);
		
		return mv;
	}
	
	//쓰기 페이지
	@RequestMapping("/forum/notice/writePage.do")
	public ModelAndView writePage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("forum/notice/write");
		
		return mv;
	}
	
	//읽기 페이지
	@RequestMapping("/forum/notice/readPage.do")
	public ModelAndView readPage(@RequestParam HashMap<String, String> params, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		
		int boardSeq = Integer.parseInt(params.get("boardSeq"));
		int boardTypeSeq = Integer.parseInt(params.get("boardTypeSeq"));
		int memberSeq = (int) request.getSession().getAttribute("memberSeq");
		
		//boardSeq없으면?
		if(!params.containsKey("boardSeq") || !params.containsKey("boardTypeSeq")) {
			mv.addObject("code",MessageEnum.WRONG_APPROACH.getCode());
			mv.addObject("msg", MessageEnum.WRONG_APPROACH.getDescription());
			mv.setViewName("forum/notice/list");
		}
		
		mv.addObject("board", service.getRead(boardSeq));
		// 첨부파일
		mv.addObject("attFile", service.getAttFile(boardSeq, boardTypeSeq));
		// 댓글
		mv.addObject("comments", boardCommentService.list(boardSeq, boardTypeSeq));
		mv.addObject("commentCnt", boardCommentService.getCommentCnt(boardSeq));
		// 좋아요
		mv.addObject("liked", service.getLike(boardSeq, boardTypeSeq, memberSeq));
		// 좋아요
		mv.addObject("disliked", service.getDisLike(boardSeq, boardTypeSeq, memberSeq));
		mv.setViewName("forum/notice/read");
				
		return mv;
	}
	
	//글 작성 기능
	@RequestMapping("/forum/notice/write.do")
	public ModelAndView write(
			@RequestParam HashMap<String, String> params,
			@RequestParam(value = "attFile", required =false) MultipartFile[] attFiles,
			RedirectAttributes redirectAttrs, HttpServletRequest request
			) {
		
		ModelAndView mv = new ModelAndView();
		params.put("regMemberSeq", String.valueOf(request.getSession().getAttribute("memberSeq")));
		boolean result = service.write(params, attFiles);
		mv.addObject("result", result);
		if (result) {
			redirectAttrs.addFlashAttribute("code", MessageEnum.WRITE_SUCCESS.getCode());
	        redirectAttrs.addFlashAttribute("msg", MessageEnum.WRITE_SUCCESS.getDescription());
			String boardSeq = params.get("boardSeq");
	        String boardTypeSeq = "1";
	        String redirectUrl = String.format("redirect:/forum/notice/readPage.do?boardSeq=%s&boardTypeSeq=%s", boardSeq, boardTypeSeq);
	        
	        mv.setViewName(redirectUrl);
	        
		}else {
			redirectAttrs.addFlashAttribute("code", MessageEnum.WRITE_FAIL.getCode());
			redirectAttrs.addFlashAttribute("msg", MessageEnum.WRITE_FAIL.getDescription());
			
			mv.setViewName(String.format("redirect:/forum//notice/listPage.do"));
		}
		return mv;
	}
	
	//수정페이지
	@RequestMapping("/forum/notice/editPage.do")
	public ModelAndView editPage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("forum/notice/edit");
		
		int boardSeq = Integer.parseInt(params.get("boardSeq"));
		int boardTypeSeq = Integer.parseInt(params.get("boardTypeSeq"));
		
		if(!params.containsKey("boardSeq")) {
			mv.addObject("code",MessageEnum.WRONG_APPROACH.getCode());
			mv.addObject("msg", MessageEnum.WRONG_APPROACH.getDescription());
		}
		mv.addObject("board", service.getRead(boardSeq));
		// 첨부파일
		mv.addObject("attFile", service.getAttFile(boardSeq, boardTypeSeq));
		
		return mv;
	}
	
	//글 수정 기능
	@RequestMapping("/forum/notice/edit.do")
	public ModelAndView edit(
			@RequestParam HashMap<String, String> params,
			@RequestParam(value = "attFile", required =false) MultipartFile[] attFiles, 
			RedirectAttributes redirectAttrs, HttpServletRequest request
			) {

		ModelAndView mv = new ModelAndView();
		params.put("regMemberSeq", String.valueOf(request.getSession().getAttribute("memberSeq")));
		int result = service.edit(params, attFiles);
		
		if(result == 1) {
			redirectAttrs.addFlashAttribute("code", MessageEnum.EDIT_SUCCESS.getCode());
	        redirectAttrs.addFlashAttribute("msg", MessageEnum.EDIT_SUCCESS.getDescription());
		}else {
			redirectAttrs.addFlashAttribute("code", MessageEnum.EDIT_FAIL.getCode());
	        redirectAttrs.addFlashAttribute("msg", MessageEnum.EDIT_FAIL.getDescription());
		}
		 return new ModelAndView("redirect:/forum/notice/readPage.do?boardSeq=" + params.get("boardSeq") + "&boardTypeSeq=" + params.get("boardTypeSeq"));
	}
	
	//첨부파일 삭제
	@RequestMapping("/forum/deleteAttachInfo.do")
	@ResponseBody
	public ModelAndView deleteAttachInfo(@RequestParam("attachSeq") int attachSeq) {
		int result = service.deleteAttachInfo(attachSeq);
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("result", result);

		mv.setViewName("forum/notice/read");	
		return mv;
	}
	
	//첨부파일 다운로드 기능
	@GetMapping("/forum/download.do")
	public String download2(Model model, @RequestParam("attachSeq") int attachSeq) {
		BoardAttachDto dto = service.getDownloadFileInfo(attachSeq);
		File file = new File(dto.getSavePath());
		
		Map<String, Object> fileInfo = new HashMap<>();
		fileInfo.put("downloadFile", file);
		fileInfo.put("orgFileNm", dto.getOrgFileNm());
		model.addAttribute("fileInfo", fileInfo);
		
		return "fileDownloadView"; // pf-servlet에 등록한 View
	}
	
	//첨부파일 일괄 다운로드
	@RequestMapping("/forum/downloadAllZip.do")
	public ResponseEntity<byte[]> downloadAllZip(Model model, @RequestParam("boardSeq") int boardSeq, @RequestParam("boardTypeSeq") int boardTypeSeq) {
	    // 서비스를 통해 첨부 파일 정보를 가져옴
	    List<BoardAttachDto> attachList = service.getDownloadZipFileInfo(boardSeq, boardTypeSeq);
	    //ByteArrayOutputStream : 바이트 배열에 데이터를 쓰는 데 사용되는 출력 스트림(압축된 데이터 임시 저장)
	    ByteArrayOutputStream baos = new ByteArrayOutputStream();
	    //ZipOutputStream : 압축 파일을 생성하는 데 사용되는 출력 스트림
	    try (ZipOutputStream zos = new ZipOutputStream(baos)) {
	    	//attachList의 각 요소를 순회하면서 반복하여 dto에 할당
	        for (BoardAttachDto dto : attachList) {
	            File file = new File(dto.getSavePath());
	            //file이 존재하면
	            if (file.exists()) {
	            	//파일을 읽어와 ZipEntry에 추가
	            	//FileInputStream : 파일로부터 바이트 단위로 데이터를 읽어오는데 사용되는 입력 스트림 클래스
	                FileInputStream fis = new FileInputStream(file);
	                ZipEntry zipEntry = new ZipEntry(dto.getOrgFileNm());
	                //putNextEntry() : ZipOutputStream에 새로운 압축 엔트리(압축 파일 내의 파일 또는 디렉토리)를 추가해줌
	                zos.putNextEntry(zipEntry);
	                //파일을 읽어들일 때 사용되는 버퍼-데이터를 일시적으로 저장한 뒤에 한 번에 처리하는 것이 효율적
	                byte[] bytes = new byte[1024];
	                int length;
	                //bytes.length 만큼의 데이터를 읽어서 bytes 배열에 저장하고 실제 읽어들인 바이트수를 length에 저장
	                while ((length = fis.read(bytes)) >= 0) {
	                	//zos로 압축파일에 데이터 쓸 수 있음
	                	//bytes : 데이터를 담고 있는 바이트 배열
	                	//0 : 데이터를 쓰기 시작할 bytes 배열의 인덱스
	                	//length : 쓸 데이터의 길이-이 길이만큼의 데이터가 bytes 배열에서 zos에 쓰여짐
	                    zos.write(bytes, 0, length);
	                }
	                //모든 데이터 읽은후 close메서드로 해당파일 스트림 닫음
	                fis.close();
	            }
	        }
	    } catch (IOException e) {
	        e.printStackTrace();
	    }

	    HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
	    headers.setContentDispositionFormData("attachment", "attachments.zip");

	    ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(baos.toByteArray(), headers, HttpStatus.OK);

	    return responseEntity;
	}
	
	 //글 삭제 기능
	 @RequestMapping("/forum/notice/delete.do") 
	 public ModelAndView delete(
			 @RequestParam HashMap<String, String> params, RedirectAttributes redirectAttrs) {
	  
		 ModelAndView mv = new ModelAndView();
		 //삭제
		 int result = service.delete(params); 
		 mv.addObject("result",	 result); 
		 
		 if (result == 1) { 
			 redirectAttrs.addFlashAttribute("code", MessageEnum.DELETE_SUCCESS.getCode()); 
			 redirectAttrs.addFlashAttribute("msg", MessageEnum.DELETE_SUCCESS.getDescription()); 
			 
			 mv.setViewName(String.format("redirect:/forum//notice/listPage.do")); 
			  
		  }else { 
			  redirectAttrs.addFlashAttribute("code", MessageEnum.DELETE_FAIL.getCode()); 
			  redirectAttrs.addFlashAttribute("msg", MessageEnum.DELETE_FAIL.getDescription());
		  
			  mv.setViewName(String.format("redirect:/forum//notice/listPage.do")); 
			  }
	  return mv; 
	  }
	 
}
