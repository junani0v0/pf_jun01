<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
.term__title {
    display: flex;
    justify-content: space-between;
    align-items: center;
    cursor: pointer;
}

.term__title h4 {
    margin: 0;
}

.term p {
    display: none;
}

.toggle-button {
    background: none;
    border: none;
    font-size: 20px;
    cursor: pointer;
    outline: none;
    padding: 0;
}
</style>

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
                                <a href="<c:url value='/profile/selfIntroductionPage.do'/>"><spring:message code="menu.self"/></a>
                            </li>
                        </ul>
                    </div>
                    <h1 class="page-title"><spring:message code="menu.self"/></h1>
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
            START LOGIN AREA
    =================================-->
    <section class="term_condition_area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="cardify term_modules">
                        <div class="term">
                            <div class="term__title">
                                <h4><spring:message code="self.title1_1"/></h4>
                                <button class="toggle-button"><i class="fas fa-chevron-up"></i></button>
                            </div>
                            <p>
                            	<spring:message code="self.co1_1"/>
                            <br/><br/>
	                            <spring:message code="self.co1_2"/> <br/>
	                            <spring:message code="self.co1_3"/> <br/><br/>
	                            <spring:message code="self.co1_4"/><br/>  
	                            <spring:message code="self.co1_5"/><br/><br/>
								
								<spring:message code="self.co1_6"/><br/><br/>
								<spring:message code="self.co1_7"/><br/>
							</p>
                        </div>
                        <!-- end /.term -->

                        <div class="term">
                            <div class="term__title">
                                <h4><spring:message code="self.title2_1"/></h4>
                                <button class="toggle-button"><i class="fas fa-chevron-up"></i></button>
                            </div>
                            <p>
                            	<spring:message code="self.co2_1"/><br/><br/>
								<spring:message code="self.co3_1"/><br/>
								<spring:message code="self.co4_1"/>
                            </p>
                        </div>
                        <!-- end /.term -->
                        <div class="term">
                            <div class="term__title">
                                <h4><spring:message code="self.title3_1"/></h4>
                                <button class="toggle-button"><i class="fas fa-chevron-up"></i></button>
                            </div>
                            <p>
                            	<spring:message code="self.co3_1"/> <br/><br/>
                            	<spring:message code="self.co3_2"/>
                           </p>
                        </div>
                        <!-- end /.term -->
						<div class="term">
                            <div class="term__title">
                                <h4><spring:message code="self.title4_1"/></h4>
                                <button class="toggle-button"><i class="fas fa-chevron-up"></i></button>
                            </div>
                            <p>
                            	<spring:message code="self.co4_1"/>
								<br/><br/>
								<spring:message code="self.co4_2"/><br/>
								<spring:message code="self.co4_3"/>
								<br/><br/>
								<spring:message code="self.co4_4"/><br/>
								<spring:message code="self.co4_5"/>
                           </p>
                        </div>
                        <!-- end /.term -->
                    </div>
                    <!-- end /.term_modules -->
                </div>
                <!-- end /.col-md-12 -->
            </div>
            <!-- end /.row -->
        </div>
        <!-- end /.container -->
    </section>
    <!--================================
            END LOGIN AREA
    =================================-->
    
    <!-- 페이지 접었다 피기 -->

	<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        const terms = document.querySelectorAll(".term");

        terms.forEach(term => {
            const title = term.querySelector(".term__title");
            const button = title.querySelector(".toggle-button");
            const content = term.querySelector("p");

            button.addEventListener("click", function() {
                toggleAccordion(content, button);
            });

            title.addEventListener("click", function() {
                toggleAccordion(content, button);
            });

            // 초기 상태 설정
            content.style.display = "block"; // 기본적으로 내용 열림 상태로 설정
            button.querySelector('i').classList.add('fa-chevron-up');
        });

        function toggleAccordion(content, button) {
            if (content.style.display === "none" || content.style.display === "") {
                content.style.display = "block";
                button.querySelector('i').classList.remove('fa-chevron-down');
                button.querySelector('i').classList.add('fa-chevron-up');
            } else {
                content.style.display = "none";
                button.querySelector('i').classList.remove('fa-chevron-up');
                button.querySelector('i').classList.add('fa-chevron-down');
            }
        }
    });
</script>
