package com.portfolio.www.auth.controller.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.portfolio.www.auth.service.JoinService;

@RestController
public class RestJoinController {
	
	@Autowired
	private JoinService joinService;
	
	//중복 체크
	@PostMapping("/auth/idCheck.do")
	@ResponseBody
	public ResponseEntity<Boolean> idCheck(@RequestParam("memberId") String memberId) {
		boolean result = true;
		
		if(memberId.trim().isEmpty()) {
			result = false;
		} else {
			if (joinService.getMemberId(memberId)) {
				result = false;
			} else {
				result = true;
			}
		}
		
		return new ResponseEntity<>(result, HttpStatus.OK);
	}	
	
}
