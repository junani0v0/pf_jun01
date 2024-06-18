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
	        @RequestParam HashMap<String, String> params) {
	    ModelAndView mv = new ModelAndView();
	    MemberDto memberDto = null;

	    try {
	        memberDto = loginService.login(params); // 사용자 확인
	        if (!ObjectUtils.isEmpty(memberDto)) { // 로그인을 했으면 null값이 아닐테니
	            // 세션 처리
	            HttpSession session = request.getSession();
	            // memberId 넣어줌
	            session.setAttribute("memberId", memberDto.getMemberId());

	            // 리디렉션할 URI가 세션에 있는지 확인
	            String redirectUri = (String) session.getAttribute("redirectAfterLogin");
	            if (redirectUri != null) {
	                mv.setViewName("redirect:" + redirectUri);
	            } else {
	                mv.setViewName("redirect:/index.do");
	            }
	        } else { // 비밀번호가 다른 경우
	            mv.setViewName("login");
	            mv.addObject("code", MessageEnum.PASSWORD_ERROR.getCode());
	            mv.addObject("msg", MessageEnum.PASSWORD_ERROR.getDescription());
	        }
	    } catch (EmptyResultDataAccessException e) { // 사용자가 없는 경우
	        mv.setViewName("login");
	        mv.addObject("code", MessageEnum.USER_NOT_FOUND.getCode());
	        mv.addObject("msg", MessageEnum.USER_NOT_FOUND.getDescription());
	    }
	    return mv;
	}


}
