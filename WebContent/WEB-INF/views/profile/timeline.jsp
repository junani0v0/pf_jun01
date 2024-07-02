<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <!--================================
        START BREADCRUMB AREA
    =================================-->
    <section class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb">
                        <ul>
                            <li>
                                <a href="<c:url value='/index.do'/>">
                                	<spring:message code="board.home"/>
                               	</a>
                            </li>
                            <li class="active">
                                <a href="<c:url value='/profile/timelinePage.do'/>"><spring:message code="menu.history"/></a>
                            </li>
                        </ul>
                    </div>
                    <h1 class="page-title"><spring:message code="menu.history"/></h1>
                </div>
                <!-- end /.col-md-12 -->
            </div>
            <!-- end /.row -->
        </div>
        <!-- end /.container -->
    </section>
    <!--================================
        END BREADCRUMB AREA
    =================================-->
    
    
	<!--================================
            START SIGNUP AREA
    =================================-->
    <section class="section--padding" style="padding-top : 120px">
        <div class="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="timeline">
                            <li class="happening">
                                <div class="happening--period">
                                    <p>March 2009 ~ February 2012 (3 years)</p>
                                </div>
                                <div class="happening--detail">
                                    <h4 class="title">인천해사고등학교</h4>
                                    <p>기관과</p>
                                </div>
                            </li>

                            <li class="happening">
                                <div class="happening--period">
                                    <p>March 2012 ~ April 2016 (4 years)</p>
                                </div>
                                <div class="happening--detail">
                                    <h4 class="title">전남대학교 입학~ 목포해양대학교 졸업</h4>
                                    <p>전남대학교 기관시스템공학 전공 입학, 목포해양대학교 편입 </br>
                                    기관시스템전공, 전기전자전공으로 편입 & 졸업. 학점 : 3.39/4.5</p>
                                </div>
                            </li>

                            <li class="happening">
                                <div class="happening--period">
                                    <p>November 2016 ~ June 2023 (about 6 years and 3 months)</p>
                                </div>
                                <div class="happening--detail">
                                    <h4 class="title">원양 상선, 예인선, 관공선 승선 근무</h4>
                                    <p>UMS ,PMS, AMS, PID제어 시스템 관리, 선박 추진기, 발전기, 보일러, 냉동기, 에어컨, 전기패널, 소방장치 등 운용 및 유지보수.</p>
                                </div>
                            </li>

                            <li class="happening">
                                <div class="happening--period">
                                    <p>October 2023 ~ March 2024 (5 months)</p>
                                </div>
                                <div class="happening--detail">
                                    <h4 class="title">정석코딩 수료</h4>
                                    <p>
	                                    Java 웹 애플리케이션 개발자 양성 과정</br> 
	                                    마켓컬리 클론코딩 팀프로젝트 진행</br> 
	                                    상품상세페이지 조회, 장바구니 담기 및 주문하기 구현 
                                    </p>
                                </div>
                            </li>

                            <li class="happening">
                                <div class="happening--period">
                                    <p>April 2023 ~ ing </p>
                                </div>
                                <div class="happening--detail">
                                    <h4 class="title">포토폴리오 그룹 스터디</h4>
                                    <p>
                                    	포토폴리오 제작, aws를 활용한 포토폴리오 배포</br>
                                    	회원가입, 로그인, 로그아웃, 게시판(작성, 수정, 삭제, 조회, 페이징),</br>
                                    	 좋아요/싫어요 기능, 댓글기능 등.. 구현
                                    </p>
                                </div>
                            </li>

                        </ul>
                        <!-- end /.timeline -->
                    </div>
                    <!-- end /.col-md-12 -->
                </div>
            </div>
            <!-- end .container -->
        </div>
    </section>
    <!--================================
            END SIGNUP AREA
    =================================-->