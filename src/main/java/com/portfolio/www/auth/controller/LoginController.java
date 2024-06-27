package com.portfolio.www.auth.controller;

import java.util.Calendar;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.portfolio.www.auth.dto.MemberDto;
import com.portfolio.www.auth.service.LoginService;
import com.portfolio.www.message.MessageEnum;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	//로그인 페이지
	@RequestMapping("/auth/loginPage.do")
	public ModelAndView loginPage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("auth/login");
		
		return mv;
	}
	
	//아이디 찾기 페이지
	@RequestMapping("/auth/recoverIdPage.do")
	public ModelAndView recoverIdPage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("auth/recover-pass");
		
		return mv;
	}
	
	//비밀번호 찾기 페이지
	@RequestMapping("/auth/recoverPassPage.do")
	public ModelAndView recoverPassPage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("auth/recover-pass");
		
		return mv;
	}
	
	// 로그인 기능
	@RequestMapping("/auth/login.do")
	public ModelAndView login(
	        HttpServletRequest request,
	        @RequestParam HashMap<String, String> params, RedirectAttributes redirectAttrs) {
	    ModelAndView mv = new ModelAndView();
	    MemberDto memberDto = null;

	    try {
	        memberDto = loginService.login(params); // 사용자 확인
			String authY = memberDto.getAuthYn(); System.out.println(authY);
			 
	        if (!ObjectUtils.isEmpty(memberDto) && "Y".equals(authY)) { // 로그인을 했으면 null값이 아닐테니
	            // 세션 처리
	            HttpSession session = request.getSession();
	            // memberId 넣어줌
	            session.setAttribute("memberId", memberDto.getMemberId());
	            // memberNm을 추가로 세션에 저장
	            session.setAttribute("memberNm", memberDto.getMemberNm());
	            session.setAttribute("memberSeq", memberDto.getMemberSeq());
	            
	            // 리디렉션할 URI가 세션에 있는지 확인
	            String redirectUri = (String) session.getAttribute("redirectAfterLogin");
	            
	            if (redirectUri != null) {
	                mv.setViewName("redirect:" + redirectUri);
	            } else {
	                mv.setViewName("redirect:/index.do");
	            }
	        }else if("N".equals(authY)) { // 비밀번호가 다른 경우
	        	mv.setViewName("redirect:/auth/loginPage.do");
		    	redirectAttrs.addFlashAttribute("code", MessageEnum.NO_EMAIL_AUTHENTICATION.getCode());
		        redirectAttrs.addFlashAttribute("msg", MessageEnum.NO_EMAIL_AUTHENTICATION.getDescription());

	        }else { // 비밀번호가 다른 경우
	        	mv.setViewName("redirect:/auth/loginPage.do");
		    	redirectAttrs.addFlashAttribute("code", MessageEnum.PASSWORD_ERROR.getCode());
		        redirectAttrs.addFlashAttribute("msg", MessageEnum.PASSWORD_ERROR.getDescription());

	        }
	    } catch (EmptyResultDataAccessException e) { // 사용자가 없는 경우
	    	mv.setViewName("redirect:/auth/loginPage.do");
	    	redirectAttrs.addFlashAttribute("code", MessageEnum.USER_NOT_FOUND.getCode());
	        redirectAttrs.addFlashAttribute("msg", MessageEnum.USER_NOT_FOUND.getDescription());
	        
	    } catch (NullPointerException e) { // 사용자가 없는 경우
	    	mv.setViewName("redirect:/auth/loginPage.do");
	    	redirectAttrs.addFlashAttribute("code", MessageEnum.USER_NOT_FOUND.getCode());
	        redirectAttrs.addFlashAttribute("msg", MessageEnum.USER_NOT_FOUND.getDescription());
	    }
	    return mv;
	}

	//로그아웃
	@RequestMapping("/auth/logout.do")
	public ModelAndView logout(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		HttpSession session = request.getSession();
		
		session.invalidate();
		mv.setViewName("redirect:/index.do");
		return mv;
	}
	
	//아이디 찾기 기능
	@RequestMapping("/auth/recoverId.do")
	public ModelAndView recoverId(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		
		
		mv.setViewName("auth/recover-id");
		
		return mv;
	}
	
	//비밀번호 찾기 기능
	@RequestMapping("/auth/recoverPass.do")
	public ModelAndView recoverPass(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("auth/recover-pass");
		
		return mv;
	}

}
