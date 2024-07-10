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
                                    <p><spring:message code="timeline.1_1"/></p>
                                </div>
                                <div class="happening--detail">
                                    <h4 class="title"><spring:message code="timeline.1_2"/></h4>
                                    <p><spring:message code="timeline.1_3"/></p>
                                </div>
                            </li>

                            <li class="happening">
                                <div class="happening--period">
                                    <p><spring:message code="timeline.2_1"/></p>
                                </div>
                                <div class="happening--detail">
                                    <h4 class="title"><spring:message code="timeline.2_2"/></h4>
                                    <p>
	                                    <spring:message code="timeline.2_3"/><br/>
	                                    <spring:message code="timeline.2_4"/>
                                    </p>
                                </div>
                            </li>

                            <li class="happening">
                                <div class="happening--period">
                                    <p><spring:message code="timeline.3_1"/></p>
                                </div>
                                <div class="happening--detail">
                                    <h4 class="title"><spring:message code="timeline.3_2"/></h4>
                                    <p><spring:message code="timeline.3_3"/></p>
                                </div>
                            </li>

                            <li class="happening">
                                <div class="happening--period">
                                    <p><spring:message code="timeline.4_1"/></p>
                                </div>
                                <div class="happening--detail">
                                    <h4 class="title"><spring:message code="timeline.4_2"/></h4>
                                    <p>
	                                    <spring:message code="timeline.4_3"/><br/> 
	                                    <spring:message code="timeline.4_4"/><br/>
	                                    <spring:message code="timeline.4_5"/>
                                    </p>
                                </div>
                            </li>

                            <li class="happening">
                                <div class="happening--period">
                                    <p><spring:message code="timeline.5_1"/></p>
                                </div>
                                <div class="happening--detail">
                                    <h4 class="title"><spring:message code="timeline.5_2"/></h4>
                                    <p>
                                    	<spring:message code="timeline.5_3"/><br/>
                                    	<spring:message code="timeline.5_4"/><br/>
                                    	<spring:message code="timeline.5_5"/>
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