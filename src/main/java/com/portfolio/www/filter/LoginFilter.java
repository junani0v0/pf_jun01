package com.portfolio.www.filter;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.util.ObjectUtils;


@WebFilter(dispatcherTypes = {DispatcherType.REQUEST }
					, servletNames = { "pf" })
public class LoginFilter extends HttpFilter implements Filter {

    // 필터적용 페이지
    private final String[] LOGIN_REQUIRED_URI = {
            "/forum/notice/listPage.do", 
            "/forum/notice/writePage.do",
            "/forum/notice/readPage.do",
            "/forum/notice/editPage.do"
    };

    // 로그인 페이지
    private final String LOGIN_PAGE_URI = "/auth/loginPage.do";

    // 생성자
    public LoginFilter() {
        super();
    }
    
    public void destroy() {

    }

    // 필터 동작
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        String contextPath = req.getContextPath();
        String uri = req.getRequestURI();
        String queryString = req.getQueryString();

        // URI에서 contextPath를 제거
        String uriWithoutContextPath = uri.replace(contextPath, "");
        String fullUri = uriWithoutContextPath + (queryString != null ? "?" + queryString : "");

        // 로그인이 필요한 URI인지 확인
        if (Arrays.asList(LOGIN_REQUIRED_URI).contains(uriWithoutContextPath)) {
            HttpSession session = req.getSession();
            // 세션 memberId값 확인
            if (ObjectUtils.isEmpty(session.getAttribute("memberId"))) {
                // 이전 URI를 세션에 저장 (contextPath를 제거한 URI로 저장)
                session.setAttribute("redirectAfterLogin", fullUri);
                
                // 로그인 페이지로 리다이렉트
                resp.sendRedirect(contextPath + LOGIN_PAGE_URI);
                return;
            }
        }
        chain.doFilter(request, response);
    }

    // 필터 등록
    public void init(FilterConfig fConfig) throws ServletException {

    }
}
