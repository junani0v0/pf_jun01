<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

	<!--================================
        START BREADCRUMB AREA
    =================================-->
    <section class="breadcrumb-area breadcrumb--center breadcrumb--smsbtl">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page_title">
                        <h3>Contact Us</h3>
                        <p class="subtitle">언제든 연락주세요</p>
                    </div>
                    <div class="breadcrumb">
                        <ul>
                            <li>
                                <a href="<c:url value='/index.do'/>"><spring:message code="board.home"/></a>
                            </li>
                            <li class="active">
                                <a href="<c:url value='/auth/contactPage.do'/>">
                                	Contact Us
                                </a>
                            </li>
                        </ul>
                    </div>
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
        START AFFILIATE AREA
    =================================-->
    <section class="contact-area section--padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <!-- start col-md-12 -->
                        <div class="col-md-12">
                            <div class="section-title">
                                <h1>How can We
                                    <span class="highlighted">Help?</span>
                                </h1>
                                <p>문자 또는 이메일 남겨주시면 이력서를 보내드리겠습니다.</p>
                            </div>
                        </div>
                        <!-- end /.col-md-12 -->
                    </div>
                    <!-- end /.row -->

                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="contact_tile">
                                <span class="tiles__icon lnr lnr-map-marker"></span>
                                <h4 class="tiles__title">Office Address</h4>
                                <div class="tiles__content">
                                    <p>Giheung-gu, Yongin-si, Gyeonggi-do, Republic of Korea</p>
                                </div>
                            </div>
                        </div>
                        <!-- end /.col-lg-4 col-md-6 -->

                        <div class="col-lg-4 col-md-6">
                            <div class="contact_tile">
                                <span class="tiles__icon lnr lnr-phone"></span>
                                <h4 class="tiles__title">Phone Number</h4>
                                <div class="tiles__content">
                                    <p>+82) 010-9752-7447</p>
                                    <p>+82) 010-9752-7447</p>
                                </div>
                            </div>
                            <!-- end /.contact_tile -->
                        </div>
                        <!-- end /.col-lg-4 col-md-6 -->

                        <div class="col-lg-4 col-md-6">
                            <div class="contact_tile">
                                <span class="tiles__icon lnr lnr-inbox"></span>
                                <h4 class="tiles__title">Email Address</h4>
                                <div class="tiles__content">
                                    <p>quf2235@naver.com</p>
                                    <p>junani0v0@naver.com</p>
                                </div>
                            </div>
                            <!-- end /.contact_tile -->
                        </div>
                        <!-- end /.col-lg-4 col-md-6 -->

                    </div>
                    <!-- end /.row -->
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
   