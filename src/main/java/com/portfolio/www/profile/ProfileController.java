package com.portfolio.www.profile;

import java.util.Calendar;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProfileController {
	
	//경력? 학습 이력?
	@RequestMapping("/profile/timelinePage.do")
	public ModelAndView timelinePage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("profile/timeline");
		
		return mv;
	}
	
	//지원서 페이지
	@RequestMapping("/profile/jobPage.do")
	public ModelAndView jobPage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("profile/job-detail");
		
		return mv;
	}
	
	//마이 페이지
	@RequestMapping("/profile/myPage.do")
	public ModelAndView myPage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("profile/my-page");
		
		return mv;
	}
	
	//자기소개서
	@RequestMapping("/profile/selfIntroductionPage.do")
	public ModelAndView selfIntroductionPage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("profile/self-introduction");
		
		return mv;
	}
	
	//경력사항
	@RequestMapping("/profile/careerPage.do")
	public ModelAndView careerPage(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", Calendar.getInstance().getTimeInMillis());
		mv.setViewName("profile/career");
		
		return mv;
	}

}
