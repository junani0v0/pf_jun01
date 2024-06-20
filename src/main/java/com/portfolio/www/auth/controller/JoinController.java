package com.portfolio.www.auth.controller;

import java.util.Calendar;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.www.auth.service.JoinService;
import com.portfolio.www.message.MessageEnum;

@Controller
public class JoinController {
	
	@Autowired
	private JoinService joinService;
	
	//회원가입 페이지
	@RequestMapping("/auth/joinPage.do")
	public ModelAndView joinPage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("auth/join");
		
		return mv;
	}
	
	//회원가입
	@RequestMapping("/auth/join.do")
	public ModelAndView join(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		int result = joinService.join(params);
		
		if (result == 1) {
			mv.addObject("code",MessageEnum.EMAIL_SEND_SUCCESS.getCode());
			mv.addObject("msg", MessageEnum.EMAIL_SEND_SUCCESS.getDescription());
			mv.setViewName("auth/login");
		}else {
			mv.addObject("code",MessageEnum.USER_ID_DUPLICATION.getCode());
			mv.addObject("msg", MessageEnum.USER_ID_DUPLICATION.getDescription());
			mv.setViewName("auth/join");
		}
		return mv;
	}
	
	//이메일 인증 
	@RequestMapping("/auth/emailAuth.do")	//회원 인증메일 링크
	public ModelAndView emailAuth(@RequestParam("uri") String uri) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("auth/login");	//login.jsp로 연결
		
		boolean result = joinService.emailAuth(uri);	//uri로 검색하여 auth_uri 맞는지와 auth_yn=n인지 확인
		
		if (result) {
			mv.addObject("code",MessageEnum.JOIN_SUCCESS.getCode());
			mv.addObject("msg", MessageEnum.JOIN_SUCCESS.getDescription());
			mv.setViewName("auth/login");
		}else {
			mv.addObject("code",MessageEnum.EMAIL_VALIDATED_FAIL.getCode());
			mv.addObject("msg", MessageEnum.EMAIL_VALIDATED_FAIL.getDescription());
			mv.setViewName("auth/join");
		}
		
		return mv;
	}

}
