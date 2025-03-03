<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


    <!-- ================================
	    START MENU AREA
	================================= -->
    <!-- start menu-area -->
    <div class="menu-area">
        <!-- start .top-menu-area -->
        <div class="top-menu-area">
            <!-- start .container -->
            <div class="container">
                <!-- start .row -->
                <div class="row">
                    <!-- start .col-md-3 -->
                    <div class="col-lg-3 col-md-3 col-6 v_middle">
                        <div class="logo">                        
                            <a href="<c:url value='/index.do'/>">                            	
                                <img src="<c:url value='/assest/template/images/junani0v0_logo.png'/>" alt="logo image" class="img-fluid" />
                            </a>
                        </div>
                    </div>
                    <!-- end /.col-md-3 -->
                    <!-- start .col-md-5 -->
                    <div class="col-lg-8 offset-lg-1 col-6 col-md-9 v_middle">
                    	<!-- start .author-area -->
	                    <div class="menu">
						    <c:choose>
						        <c:when test="${loggedIn}">
						            <!-- 로그인 상태일 때 표시할 메뉴 -->
						            <div class="author-author__info inline has_dropdown">
			                            <div class="author__avatar">
			                                <img src="<c:url value='/assest/template/images/usr_avatar.png'/>" alt="user avatar">
			                            </div>
			                            <div class="autor__info">
			                                <p class="name">
			                                    <spring:message code="hello.end"/>
			                                    <h7 class="pcolor">${sessionScope.memberNm}</h7>
			                                </p>
			                            </div>
			
			                            <div class="dropdowns dropdown--author">
			                                <ul>
			                                    <%-- <li>
			                                        <a href="<c:url value='/profile/myPage.do'/>">
			                                            <span class="lnr lnr-user"></span><spring:message code="menu.profile"/></a>
			                                    </li> --%>
			                                    <li>
			                                        <a href="<c:url value='/profile/jobPage.do'/>">
			                                            <span class="lnr fa-solid fa-user"></span><spring:message code="menu.resume"/></a>
			                                    </li>
			                                    <li>
			                                        <a href="<c:url value='/profile/timelinePage.do'/>">
			                                            <span class="lnr fa-solid fa-graduation-cap"></span><spring:message code="menu.history"/></a>
			                                    </li>
			                                    <li>
			                                        <a href="<c:url value='/profile/careerPage.do'/>">
			                                            <span class="lnr fa-solid fa-ship"></span><spring:message code="menu.career"/></a>
			                                    </li>
			                                    <li>
			                                        <a href="<c:url value='/profile/selfIntroductionPage.do'/>">
			                                            <span class="lnr fa-solid fa-pen-nib"></span><spring:message code="menu.self"/></a>
			                                    </li>
			                                    <li>
			                                        <a href="<c:url value='/auth/logout.do'/>">
			                                            <span class="lnr lnr-exit"></span>
			                                            <spring:message code="menu.logout"/>
		                                            </a>
			                                    </li>
			                                </ul>
			                            </div>
			                        </div>
						        </c:when>
						        <c:otherwise>
						            <!-- 로그인되지 않은 상태일 때 표시할 메뉴 -->
						            <div class="author-area not_logged_in">
						                <div class="pull-right join desktop-size d-md-block d-none">
						                    <a href="<c:url value='/auth/joinPage.do'/>" class="btn btn--round btn-secondary btn--xs"><spring:message code="menu.join"/></a>
						                    <a href="<c:url value='/auth/loginPage.do'/>" class="btn btn--round btn--xs"><spring:message code="menu.login"/></a>
						                </div>
						                <div class="pull-right join mobile-size d-md-none d-flex">
						                    <a href="<c:url value='/auth/joinPage.do'/>" class="btn btn--round btn-secondary"><span class="lnr lnr-user"></span></a>
						                    <a href="<c:url value='/auth/loginPage.do'/>" class="btn btn--round"><span class="lnr lnr-enter"></span></a>
						                </div>
						            </div>
						        </c:otherwise>
						    </c:choose>
						</div>
                      	<!-- end .author-area -->
                    </div>
                    <!-- end /.col-md-5 -->
                </div>
                <!-- end /.row -->
            </div>
            <!-- end /.container -->
        </div>
        <!-- end  -->

        <!-- start .mainmenu_area -->
        <div class="mainmenu" style ="box-shadow: 0 -2px 5px -5px #333;">
            <!-- start .container -->
            <div class="container">
                <!-- start .row-->
                <div class="row">
                    <!-- start .col-md-12 -->
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-md navbar-light mainmenu__menu">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                                aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="navbarNav">
                                <ul class="navbar-nav">
                                    <li>
                                    	<a href="<c:url value='/index.do'/>">
                                    		<span class="fa-solid fa-house"></span>
                                        	<spring:message code="board.home"/>
                                       	</a>
                                    </li>
                                    
                                    <li>
                                        <a href="<c:url value='/forum/notice/listPage.do'/>">
                                        	<span class="fa-solid fa-bullhorn"></span>
                                        	<spring:message code="board.notice"/>
                                        </a>
                                    </li>
                                    
                                    <li>
                                        <a href="<c:url value='/auth/contactPage.do'/>">
                                        	<span class="fa-solid fa-comments"></span>
                                        	<spring:message code="board.contact"/>
                                       	</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- 다국어 기능 start -->
                            <ul class="navbar-nav">
	                            <li class="has_dropdown">
	                                <a href="#">
	                                	<span class="lnr fa-solid fa-globe"></span>
	                                	<spring:message code="Language"/>
	                                </a>
	                                <div class="dropdowns dropdown--menu">
	                                    <ul>
	                                        <li>
				                                <a href="?lang=ko">한국어</a>
				                            </li>
				                            <li>
				                                <a href="?lang=en">English</a>
				                            </li>
				                            <li>
				                                <a href="?lang=ja">日本語</a>
	                           				 </li>
	                                    </ul>
	                                </div>
	                            </li>
                            </ul>
                            <!-- 다국어 기능 end -->

                            <!-- /.navbar-collapse -->
                        </nav>
                    </div>
                    <!-- end /.col-md-12 -->
                </div>
                <!-- end /.row-->
            </div>
            <!-- start .container -->
        </div>
        <!-- end /.mainmenu-->
    </div>
    <!-- end /.menu-area -->
    <!--================================
	    END MENU AREA
	=================================-->
	
	<script>
	
	</script>
