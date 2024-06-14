<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!--================================
	    START FOOTER AREA
	=================================-->
    <footer class="footer-area">
        <div class="footer-big section--padding">
            <!-- start .container -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="info-footer">
                            <div class="info__logo">
                                <img src="<c:url value='/assest/template/images/junani0v0_logo_w.png'/> "  alt="footer logo" />
                            </div>
                            <p class="info--text">
                            	안녕하세요!</br> 
                            	junani의 개인 프로젝트 포트폴리오 홈페이지에 오신 것을 환영합니다.
                           	</p>
                            <!-- <ul class="info-contact">
                                <li>
                                    <span class="lnr lnr-phone info-icon"></span>
                                    <span class="info">Phone: +82)010-9752-7447</span>
                                </li>
                                <li>
                                    <span class="lnr lnr-envelope info-icon"></span>
                                    <span class="info">quf2235@naver.com</span>
                                </li>
                                <li>
                                    <span class="lnr lnr-map-marker info-icon"></span>
                                    <span class="info">
                                    	Giheung-gu, Yongin-si, Gyeonggi-do, Republic of Korea
                                    </span>
                                </li>
                                <li>
                                    <span class="lnr fa-brands fa-github info-icon"></span>
                                    <span class="info">
                                    	<a href="https://github.com/junani0v0" style="color: white;">GitHub Link</a>
                                   	</span>
                                </li>
                                <li>
                                    <span class="fa-solid fa-blog lnr info-icon"></span>
                                    <span class="info">
                                    	<a href="https://junai0v0.tistory.com/">Blog Link</a>
                                   	</span>
                                </li>
                            </ul> -->
                        </div>
                        <!-- end /.info-footer -->
                    </div>
                    <!-- end /.col-md-3 -->

                    <div class="col-lg-5 col-md-6">
                        <div class="info-contact">
                            <h4 class="footer-widget-title text--white">Junani0v0</h4>
                            <ul>
                                <li>
                                    <span class="lnr lnr-phone info-icon"></span>
                                    <span class="info">Phone: +82) 010-9752-7447</span>
                                </li>
                                <li>
                                    <span class="lnr lnr-envelope info-icon"></span>
                                    <span class="info">quf2235@naver.com</span>
                                </li>
                                <li>
                                    <span class="lnr lnr-map-marker info-icon"></span>
                                    <span class="info">
                                    	Giheung-gu, Yongin-si, Gyeonggi-do, Republic of Korea
                                    </span>
                                </li>
                                <li>
                                    <span class="lnr fa-brands fa-github info-icon"></span>
                                    <span class="info">
                                    	<a href="https://github.com/junani0v0" style="color: white;">GitHub Link</a>
                                   	</span>
                                </li>
                                <li>
                                    <span class="fa-solid fa-blog lnr info-icon"></span>
                                    <span class="info">
                                    	<a href="https://junai0v0.tistory.com/" style="color: white;">Blog Link</a>
                                   	</span>
                                </li>
                            </ul>
                        </div>
                        <!-- end /.footer-menu -->

                        <!-- <div class="footer-menu">
                            <h4 class="footer-widget-title text--white">Help and FAQs</h4>
                            <ul>
                                <li>
                                    <a href="#">How to Join Us</a>
                                </li>
                                <li>
                                    <a href="#">How It Work</a>
                                </li>
                                <li>
                                    <a href="#">Buying and Selling</a>
                                </li>
                                <li>
                                    <a href="#">Testimonials</a>
                                </li>
                                <li>
                                    <a href="#">Copyright Notice</a>
                                </li>
                                <li>
                                    <a href="#">Refund Policy</a>
                                </li>
                                <li>
                                    <a href="#">Affiliates</a>
                                </li>
                            </ul>
                        </div> -->
                        <!-- end /.footer-menu -->
                    </div>
                    <!-- end /.col-md-5 -->
					<div class="col-lg-4 col-md-12">
                        <div class="info-contact">
                            <h4 class="footer-widget-title text--white">My Project</h4>
                            <ul>
                                <li>
                                    <span class="fa-solid fa-house"></span>
                                    <span class="info">
                                    	<a href="<c:url value='/index.do'/>" style="color: white;">Home</a>
                                    </span>
                                </li>
                                <li>
                                    <span class="fa-solid fa-bullhorn"></span>
                                    <span class="info">
                                    	<a href="<c:url value='/forum//notice/listPage.do'/>" style="color: white;">Notice</a>
                                    </span>
                                </li>
                                <li>
                                    <span class="fa-regular fa-address-card"></span>
                                    <span class="info">
                                    	<a href="#" style="color: white;">Profile</a>
                                   	</span>
                                </li>
                                <li>
                                    <span class="fa-regular fa-user"></span>
                                    <span class="info">
                                    	<a href="#" style="color: white;">About Me</a>
                                   	</span>
                                </li>
                                <li>
                                    <span class="fa-solid fa-ship"></span>
                                    <span class="info">
                                    	<a href="#" style="color: white;">Career</a>
                                   	</span>
                                </li>
                            </ul>
                        </div>
                        <!-- end /.newsletter -->
                    </div>
                    <!-- <div class="col-lg-4 col-md-12">
                        <div class="newsletter">
                            <h4 class="footer-widget-title text--white">Newsletter</h4>
                            <p>Subscribe to get the latest news, update and offer information. Don't worry, we won't send spam!</p>
                            <div class="newsletter__form">
                                <form action="#">
                                    <div class="field-wrapper">
                                        <input class="relative-field rounded" type="text" placeholder="Enter email">
                                        <button class="btn btn--round" type="submit">Submit</button>
                                    </div>
                                </form>
                            </div>

                            start .social
                            <div class="social social--color--filled">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <span class="fa fa-facebook"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="fa fa-twitter"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="fa fa-google-plus"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="fa fa-pinterest"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="fa fa-linkedin"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="fa fa-dribbble"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            end /.social
                        </div>
                        end /.newsletter
                    </div> -->
                    <!-- end /.col-md-4 -->
                </div>
                <!-- end /.row -->
            </div>
            <!-- end /.container -->
        </div>
        <!-- end /.footer-big -->

        <div class="mini-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="copyright-text">
                            <p>&copy; 2024
                                <a href="#">Portfolio</a>. All rights reserved. Created by
                                <a href="#">junani0v0</a>
                            </p>
                        </div>

                        <div class="go_top">
                            <span class="lnr lnr-chevron-up"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--================================
    END FOOTER AREA
	=================================-->
