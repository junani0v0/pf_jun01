package com.portfolio.www.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter(urlPatterns = {"/*"})
public class SessionFilter extends HttpFilter implements Filter {
       
	@Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 필터 초기화 로직
    }

	// 로그인 여부 판단
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
	        throws IOException, ServletException {
	    
	    HttpServletRequest httpRequest = (HttpServletRequest) request;
	    HttpSession session = httpRequest.getSession(false); // 세션이 없으면 null 반환
	    
	    if (session != null && session.getAttribute("memberId") != null) {
	        // 세션이 존재하고 로그인 상태인 경우
	        httpRequest.setAttribute("loggedIn", true);
	    } else {
	        // 세션이 없거나 로그인 상태가 아닌 경우
	        httpRequest.setAttribute("loggedIn", false);
	    }
	    
	    // 다음 필터로 요청을 전달
        chain.doFilter(request, response);
	}

    @Override
    public void destroy() {
        // 필터 소멸 로직
    }
}
