<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

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
                                <a href="<c:url value='/index.do'/>"><spring:message code="board.home"/></a>
                            </li>
                            <li class="active">
                                <a href="<c:url value='/profile/careerPage.do'/>"><spring:message code="menu.career"/></a>
                            </li>
                        </ul>
                    </div>
                    <h1 class="page-title"><spring:message code="menu.career"/></h1>
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
    <section class="section--padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="feature_title">
                        <h3></h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="content_block1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6">
                        <div class="content_area">
                            <h1 class="content_area--title">1등 기관사
                                <span class="highlight">옹진군청</span>
                            </h1>
                            <p>
                            •회사 정보 : 옹진군청<br/>
                            •부서 : 선박 엔지니어<br/>
                            •직급 : 1등 기관사<br/>
                            •근무 기간 : 2024.04~2024.06(3개월) <br/>
                            <br/>
                            •주요업무<br/>
                            -	옹진군 관공선 운항 및 유지 관리<br/>
                            - 	옹진군 섬 응급환자 수송 & 응급처치<br/>
							-	선박 디젤 엔진, 디젤 발전기, 공기 압축기, 에어 컨디셔너, 열교환기, 유수분리기, 청정기, 모터, 송풍팬, 소방설비, 유압 윈들라스 등 각종기기 운용 및 분해 정비 수리<br/>
							-	각종 기기 분해 및 계측 & 이상 시 수리 및 원인 분석<br/>
							-	절연저항 점검 및 수리<br/>
							-	전기 이상 문제 전기 계측, 분석 및 수리<br/>
							-	사고 방지 및 기기 유지보수를 위한 예방정비 작업 수행<br/>
							-	정비점검, 정비, 분해수리, 계측, 조정, 조립작업 및 고장 발생 요인 조사<br/>
							-	각종 배관(청수,해수,에어,오일) 정비 및 누유, 누수 수리<br/>
							-	대형 선박 이접안 예인작업 및 사고선박 긴급예인작업<br/>
							-	KR및 선박 정기,중간 검사 준비<br/>
							
							</p>
                        </div>
                    </div>
                    <!-- end /.col-md-5 -->
                </div>
                <!-- end /.row -->
            </div>
            <!-- end /.container -->

            <div class="content_image bgimage">
                <div class="bg_image_holder">
                    <img src="<c:url value='/assest/template/images/ship/옹진.jpg'/>" alt="" class="svg">
                </div>
            </div>
        </div>
        <!-- end /.about -->

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="feature_title">
                        <h3></h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="content_block2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6 offset-md-6 offset-lg-7">
                        <div class="content_area2">
                            <h1 class="content_area2--title">1등 기관사
                                <span class="highlight">한창산업㈜ </span>
                            </h1>
                            <p>
                            •	회사 정보 : 인천항 이접안 예인선 선박 회사<br/>
                            •	부서 : 선박 엔지니어<br/>
                            •	직급 : 1등 기관사<br/>
                            •	근무 기간 : 2020.10~2023.04(2년 5개월) <br/>
                            <br/>
                            •	주요업무<br/>
                            -	선박 이접안 라인작업<br/>
                            -	사고 선박 이안작업<br/>
							-	선박 디젤 엔진, 디젤 발전기, 공기 압축기, 에어 컨디셔너, 열교환기, 유수분리기, 청정기, 모터, 송풍팬, 소방설비, 유압 윈들라스 등 각종기기 운용 및 분해 정비 수리<br/>
							-	각종 기기 분해 및 계측 & 이상 시 수리 및 원인 분석<br/>
							-	절연저항 점검 및 수리<br/>
							-	전기 이상 문제 전기 계측, 분석 및 수리<br/>
							-	사고 방지 및 기기 유지보수를 위한 예방정비 작업 수행<br/>
							-	정비점검, 정비, 분해수리, 계측, 조정, 조립작업 및 고장 발생 요인 조사<br/>
							-	각종 배관(청수,해수,에어,오일) 정비 및 누유, 누수 수리<br/>
							-	대형 선박 이접안 예인작업 및 사고선박 긴급예인작업<br/>
							-	KR및 선박 정기,중간 검사 준비<br/>
							
							</p>
                        </div>
                    </div>
                    <!-- end /.col-md-5 -->
                </div>
                <!-- end /.row -->
            </div>
            <!-- end /.container -->

            <div class="content_image2 bgimage">
                <div class="bg_image_holder">
                    <img src="<c:url value='/assest/template/images/ship/한창.jpg'/>" alt="" class="svg">
                </div>
            </div>
        </div>
        <!-- end /.mission-->

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="feature_title">
                        <h3></h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="content_block1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6">
                        <div class="content_area">
                            <h1 class="content_area--title">2등 기관사
                                <span class="highlight">포천마린㈜</span>
                            </h1>
                            <p>
                            •회사 정보 : Oil & Chemical 선박 회사<br/>
                            •	부서 : 선박 엔지니어<br/>
                            •	직급 : 2등 기관사<br/>
                            •	근무 기간 : 2016.11~2020.04(3년4개월)  <br/>
                            <br/>
                            •	주요업무<br/>
							-	선박 디젤 엔진, 디젤 발전기, 공기 압축기, 에어 컨디셔너, 열교환기, 유수분리기, 청정기, 모터, 송풍팬, 소방설비, 유압 윈들라스, 유압 크레인, 보일러, 냉동기, 조수기, 승강기 등 각종기기 운용 및 분해 정비 수리<br/>
							-	각종 기기 분해 및 계측 & 이상 시 수리 및 원인 분석<br/>
							-	절연저항 점검 및 수리<br/>
							-	전기 이상 문제 전기 계측, 분석 및 수리<br/>
							-	사고 방지 및 기기 유지보수를 위한 예방정비 작업 수행<br/>
							-	정비점검, 정비, 분해수리, 계측, 조정, 조립작업 및 고장 발생 요인 조사<br/>
							-	각종 배관(청수,해수,에어,오일) 정비 및 누유, 누수 수리<br/>
							-	선박 메이저 검사 & 항만국 통제 검사 준비<br/>
							-	KR및 선박 정기,중간 검사 준비<br/>
							<br/>
							•	사용 계측 기구<br/>
							-	전기: 멀티 미터, 암페어미터, 메거 테스터<br/>
							-	기계: P-Max 게이지, 수인선도 계측기, 압력계, 온도계, 토크렌치, 노즐 테스터<br/> 
							-	마이크로미터, 필러 게이지, 버니어 켈리퍼스, 다이얼게이지, 이너/아웃 다이어미터<br/>
							-	유체: 유량계, 레벨게이지, 유류 15ppm 검출기, 보일러 염분 분석기, 가스 디텍터 등<br/>
														
							
							</p>
                        </div>
                    </div>
                    <!-- end /.col-md-5 -->
                </div>
                <!-- end /.row -->
            </div>
            <!-- end /.container -->

            <div class="content_image bgimage">
                <div class="bg_image_holder">
                    <img src="<c:url value='/assest/template/images/ship/포천.JPG'/>" style="width: 50%;" alt="" class="svg">
                </div>
            </div>
        </div>
        <!-- end /.about -->

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="feature_title">
                        <h3></h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="content_block2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6 offset-md-6 offset-lg-7">
                        <div class="content_area2">
                            <h1 class="content_area2--title">실습 기관사 <br/>
                                <span class="highlight">윌헴슨메니지먼트코리아㈜</span>
                            </h1>
                            <p>
                            •	회사 정보 : Car carrier 선박 회사<br/>
                            •	부서 : 선박 엔지니어<br/>
                            •	직급 : 실습 기관사(인턴)<br/>
                            •	근무 기간 : 2015.01~2015.07(6개월)  <br/>
                            <br/>
                            •	주요업무<br/>
                            -	3등 기관사 업무(냉동기, 보일러, 에어컨) 보조
							-	절연저항 점검 및 수리

							<br/>
												
							
							</p>
                        </div>
                    </div>
                    <!-- end /.col-md-5 -->
                </div>
                <!-- end /.row -->
            </div>
            <!-- end /.container -->

            <div class="content_image2 bgimage">
                <div class="bg_image_holder">
                    <img src="<c:url value='/assest/template/images/ship/카케리.jpg'/>" alt="" class="svg">
                </div>
            </div>
        </div>
        <!-- end /.mission-->

        
        
    </section>

    <!--================================
            END SIGNUP AREA
    =================================-->