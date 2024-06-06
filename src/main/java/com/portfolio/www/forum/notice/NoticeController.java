package com.portfolio.www.forum.notice;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.www.forum.notice.dto.BoardDto;
import com.portfolio.www.forum.notice.service.BoardService;

@Controller
public class NoticeController {
	
	@Autowired
	private BoardService service;
	
	@RequestMapping("/forum//notice/listPage.do")
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
//			    boolean hasPrev = page > countPage;
			    boolean hasPrev = startPage > 1;
//			    boolean hasNext = (page + (countPage - 1)) < totalPages;
			    boolean hasNext = endPage < totalPages;
			    
			    mv.addObject("list", list);
			    mv.addObject("currentPage", page);
			    mv.addObject("countPage", countPage);
			    mv.addObject("hasPrev", hasPrev);
			    mv.addObject("hasNext", hasNext);
			    mv.addObject("startPage", startPage);
			    mv.addObject("endPage", endPage);
				
				return mv;
	}
	
	@RequestMapping("/forum/notice/writePage.do")
	public ModelAndView writePage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("forum/notice/write");
		
		return mv;
	}
	
	@RequestMapping("/forum/notice/readPage.do")
	public ModelAndView readPage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("forum/notice/read");
		
		return mv;
	}
	
	
}
