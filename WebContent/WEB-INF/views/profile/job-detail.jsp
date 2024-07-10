<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<style>
.section-title {
    margin-top: 20px; /* 섹션 사이의 간격 조절 */
    font-size: 1.2em; /* 제목 폰트 사이즈 설정 */
}

ul {
    list-style-type: none;
    padding-left: 0;
    margin-top: 10px;
}
ul ul {
    padding-left: 20px;
}
li {
    margin-bottom: 15px;
}
a {
    color: #007bff;
    text-decoration: none;
}

.job__title {
    display: flex;
    justify-content: space-between; /* 제목과 화살표를 가로로 정렬 */
    align-items: center; /* 세로 가운데 정렬 */
}

.job__title h3 {
    margin-bottom: 0; /* h3 마진 제거 */
}

.arrow-icon {
    cursor: pointer;
}

.float-right {
    float: right;
}

.skill-logo {
      width: 5%;
      height: auto;
      margin: 10px;
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
                                <a href="<c:url value='/index.do'/>">
                                	<spring:message code="board.home"/>
                               	</a>
                            </li>
                            <li class="active">
                                <a href="<c:url value='/profile/jobPage.do'/>"><spring:message code="menu.resume"/></a>
                            </li>
                        </ul>
                    </div>
                    <h1 class="page-title"><spring:message code="menu.resume"/></h1>
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
        START JOB AREA
    =================================-->
    <section class="job_area section--padding2" style="padding-top:60px">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="job_detail_module information">
                        <h3 class="job__title">
	                        Quick Information
                        </h3>
                        <div class="job__content">
                            <ul class="informations">
                                <li>
                                    <div class="info_title">
                                        <span class="lnr lnr-map-marker"></span>
                                        <p>Location :</p>
                                    </div>
                                    <div class="info">
                                        <p><spring:message code="job.location"/></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr lnr-briefcase"></span>
                                        <p>Job Type :</p>
                                    </div>
                                    <div class="info">
                                        <p>Full time</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr fa-regular fa-user"></span>
                                        <p>Birth date :</p>
                                    </div>
                                    <div class="info">
                                        <p><spring:message code="job.birth"/> </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr lnr-book"></span>
                                        <p>Salary :</p>
                                    </div>
                                    <div class="info">
                                        <p><spring:message code="job.salary"/></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr lnr-graduation-hat"></span>
                                        <p>Education :</p>
                                    </div>
                                    <div class="info">
                                        <p><spring:message code="job.edu"/></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr lnr-hourglass"></span>
                                        <p>Experience :</p>
                                    </div>
                                    <div class="info">
                                        <p><spring:message code="job.exp"/></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr fa-solid fa-blog lnr info-icon"></span>
                                        <p>Blog :</p>
                                    </div>
                                    <div class="info">
                                    	<a href="https://junai0v0.tistory.com/">
                                        	https://junai0v0.tistory.com
										</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr lnr-phone info-icon"></span>
                                        <p>Phone :</p>
                                    </div>
                                    <div class="info">
                                        <p>+82) 010-9752-7447</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr lnr-envelope info-icon"></span>
                                        <p>Email :</p>
                                    </div>
                                    <div class="info">
                                        <p>quf2235@naver.com</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr fa-brands fa-github info-icon"></span>
                                        <p>Github :</p>
                                    </div>
                                    <div class="info">
                                    	<a href="https://github.com/junani0v0/">
                                        	https://github.com/junani0v0
										</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr fa-solid fa-language"></span>
                                        <p>Language :</p>
                                    </div>
                                    <div class="info">
                                    	<spring:message code="job.lan"/>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr fa-regular fa-address-card"></span>
                                        <p>Certificate :</p>
                                    </div>
                                    <div class="info">
                                    	<spring:message code="job.cer1"/></br>
                                    	<spring:message code="job.cer2"/></br>
                                    	<spring:message code="job.cer3"/>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="job_detail_module">
                        <h3 class="job__title">
                        	Personal project
                       	</h3>
                        <div class="job__content">
                            <p><spring:message code="pro1"/></p>
                            <span class="lnr fa-brands fa-github info-icon"></span>
                            <a href="https://github.com/junani0v0/pf_jun01/">
                      	    	https://github.com/junani0v0/pf_jun01
							</a>
							</br></br>
							<strong class="section-title"><spring:message code="pro2"/></strong>
							</br>
                            <ul>
					            <li>1. <spring:message code="Fn1.1"/>
					                <ul>
					                    <li>- <spring:message code="Fn1.2"/>
					                        <ul>
					                            <li>>  <spring:message code="Fn1.3"/></li>
					                        </ul>
					                    </li>
					                    <li>- <spring:message code="Fn1.4"/>
					                        <ul>
					                            <li>>  <spring:message code="Fn1.5"/></li>
					                            <li>>  <spring:message code="Fn1.6"/></li>
					                            <li>>  <spring:message code="Fn1.7"/></li>
					                            <li>>  <spring:message code="Fn1.8"/></li>
					                        </ul>
					                    </li>
					                    <li>- <spring:message code="Fn1.9"/>
					                        <ul>
					                            <li>>  <spring:message code="Fn1.10"/></li>
					                            <li>>  <spring:message code="Fn1.11"/></li>
					                            <li>>  <spring:message code="Fn1.12"/></li>
					                            <li>>  <spring:message code="Fn1.13"/></li>
					                            <li>>  <spring:message code="Fn1.14"/></li>
					                            <li>>  <spring:message code="Fn1.15"/></li>
					                            <li>>  <spring:message code="Fn1.16"/></li>
					                            <li>>  <spring:message code="Fn1.17"/></li>
					                        </ul>
					                    </li>
					                </ul>
					            </li>
					            <li>2. <spring:message code="Fn2.1"/>
					                <ul>
					                    <li>- <spring:message code="Fn2.2"/>
					                        <ul>
					                            <li>>  <spring:message code="Fn2.3"/></li>
					                        </ul>
					                    </li>
					                    <li>- <spring:message code="Fn2.4"/></li>
					                    <li>- <spring:message code="Fn2.5"/></li>
					                    <li>- <spring:message code="Fn2.6"/></li>
					                    <li>- <spring:message code="Fn2.7"/></li>
					                </ul>
					            </li>
					            <li>3. <spring:message code="Fn3.1"/>
					                <ul>
					                    <li>- <spring:message code="Fn3.2"/></li>
					                </ul>
					            </li>
					            <li>4. <spring:message code="Fn4.1"/>
					                <ul>
					                    <li>- <spring:message code="Fn4.2"/>
					                        <ul>
					                            <li>>  <spring:message code="Fn4.3"/></li>
					                            <li>>  <spring:message code="Fn4.4"/></li>
					                            <li>>  <spring:message code="Fn4.5"/></li>
					                            <li>>  <spring:message code="Fn4.6"/></li>
					                        </ul>
					                    </li>
					                    <li>- <spring:message code="Fn4.7"/>
					                        <ul>
					                            <li>>  <spring:message code="Fn4.8"/></li>
					                            <li>>  <spring:message code="Fn4.9"/></li>
					                            <li>>  <spring:message code="Fn4.10"/></li>
					                        </ul>
					                    </li>
					                    <li>- <spring:message code="Fn4.11"/>
					                        <ul>
					                            <li>>  <spring:message code="Fn4.12"/></li>
					                            <li>>  <spring:message code="Fn4.13"/></li>
					                        </ul>
					                    </li>
					                    <li>- <spring:message code="Fn4.14"/>
					                        <ul>
					                            <li>>  <spring:message code="Fn4.15"/></li>
					                            <li>>  <spring:message code="Fn4.16"/></li>
					                            <li>>  <spring:message code="Fn4.17"/></li>
					                        </ul>
					                    </li>
					                    <li>- <spring:message code="Fn4.18"/>
					                        <ul>
					                            <li>>  <spring:message code="Fn4.19"/></li>
					                            <li>>  <spring:message code="Fn4.20"/></li>
					                            <li>>  <spring:message code="Fn4.21"/></li>
					                            <li>>  <spring:message code="Fn4.22"/></li>
					                        </ul>
					                    </li>
					                    <li>- <spring:message code="Fn4.23"/>
					                        <ul>
					                            <li>>  <spring:message code="Fn4.24"/></li>
					                        </ul>
					                    </li>
					                    <li>- <spring:message code="Fn4.25"/>
					                    	<ul>
					                            <li>>  <spring:message code="Fn4.26"/></li>
					                            <li>>  <spring:message code="Fn4.27"/></li>
					                            <li>>  <spring:message code="Fn4.28"/></li>
					                            <li>>  <spring:message code="Fn4.29"/></li>
					                            <li>>  <spring:message code="Fn4.30"/></li>
					                        </ul>
					                    </li>
					                </ul>
					            </li>
					            <li>5. <spring:message code="Fn5.1"/>
					                <ul>
					                    <li>- <spring:message code="Fn5.2"/></li>
					                </ul>
					            </li>
					            <li>6. <spring:message code="Fn6.1"/>
					                <ul>
					                    <li>- <spring:message code="Fn6.2"/></li>
					                    <li>- <spring:message code="Fn6.3"/></li>
					                    <li>- <spring:message code="Fn6.4"/></li>
					                </ul>
					            </li>
					            <li>7. <spring:message code="Fn7.1"/>
					                <ul>
					                    <li>- <spring:message code="Fn7.2"/></li>
					                </ul>
					            </li>
					        </ul>
                        </div>
                        
                        <h3 class="job__title">Skills in using personal project</h3>
                        <div class="job__content">
                            <p style="text-align: center;">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Java-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Spring-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/AWS-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Nginx.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Maven-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/HTML.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/CSS.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/JavaScript.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/JQuery.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/MySQL-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Docker.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Linux-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Github-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Eclipse-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/VSCode-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Powershell-Light.svg'/>" alt="skill logo">
							</p>
							<div class="content_list">
	                           	<strong class="section-title">Front-End </strong>
	                            <ul>
	                                <li> HTML5/CSS3, JS ES6, JQuery3.7.1 </li>
	                            </ul>
                            </div>
                            <div class="content_list">
	                           	<strong class="section-title">Back-End </strong>
	                            <ul>
	                                <li> Spring Version : 5.3.32</li>
	                                <li> Java Version : OpenJDK 11.0.2</li>
	                            </ul>
                            </div>
                            <div class="content_list">
	                           	<strong class="section-title">Database</strong>
	                            <ul>
	                                <li> MyBatis 3.5.15</li>
	                                <li> MySQL</li>
	                            </ul>
                            </div>
                            <div class="content_list">
	                           	<strong class="section-title">Development environment</strong>
	                            <ul>
	                                <li> Eclipse IDE 4.31.0</li>
	                                <li> Apache Tomcat 9.0.87 </li>
	                                <li> Maven 3.9.6</li>
	                            </ul>
                            </div>
                            <div class="content_list">
	                           	<strong class="section-title">Distribution</strong>
	                            <ul>
	                                <li> AWS EC2</li>
	                                <li> AWS RDS</li>
	                                <li> Nginx</li>
	                            </ul>
                            </div>
                            <div class="content_list">
	                           	<strong class="section-title">Tool</strong>
	                            <ul>
	                                <li> GitHub</li>
	                                <li> MobaXterm</li>
	                                <li> FileZilla</li>
	                                <li> Sourcetree</li>
	                                <li> Docker</li>
	                                <li> DBeaver</li>
	                                <li>Visual Studio Code</li>
	                                <li>Notion</li>
	                            </ul>
                            </div>
                        </div>
                        

                        <h3 class="job__title">Team project</h3>
                        <div class="job__content">
                            <p><spring:message code="t.pro1"/></p>
                            <span class="lnr fa-brands fa-github info-icon"></span>
                            <a href="https://github.com/junani0v0/brokurly/">
                      	    	https://github.com/junani0v0/brokurly
							</a>

                            <ul class="content_list">
                                <li><spring:message code="t.pro2"/></li>
                                <li><spring:message code="t.pro3"/></li>
                                <li><spring:message code="t.pro4"/></li> 
								<li><spring:message code="t.pro5"/></li>
                                <li><spring:message code="t.pro6"/></li>
                                <li><spring:message code="t.pro7"/></li>
                            </ul>
                        </div>

                        <h3 class="job__title">Skills in using team project</h3>
                        <div class="job__content">
                            <p style="text-align: center;">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Java-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Spring-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Maven-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/HTML.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/CSS.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/JavaScript.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/JQuery.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/MySQL-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Github-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Idea-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/VSCode-Light.svg'/>" alt="skill logo">
							    <img class="skill-logo" src="<c:url value='/assest/template/images/skill_icon/Discord.svg'/>" alt="skill logo">
							</p>
							<div class="content_list">
	                           	<strong class="section-title">Language</strong>
	                            <ul>
	                                <li>Java 17 : <spring:message code="t.skill1"/></li>
	                                <li>JS ES6, JQuery3.7.1 : <spring:message code="t.skill2"/></li>
	                            </ul>
                            </div>
                            <div class="content_list">
	                           	<strong class="section-title">Framework</strong>
	                            <ul>
	                                <li>Spring 5.x : <spring:message code="t.skill3"/></li>
	                                <li>MyBatis3 : <spring:message code="t.skill4"/></li>
	                                <li>JUnit5 : <spring:message code="t.skill5"/></li>
	                            </ul>
                            </div>
                            <div class="content_list">
	                           	<strong class="section-title">Database</strong>
	                            <ul>
	                                <li><spring:message code="t.skill6"/></li>
	                                <li>MySQL 8.0 : <spring:message code="t.skill7"/></li>
	                            </ul>
                            </div>
                            <div class="content_list">
	                           	<strong class="section-title">Tools </strong>
	                            <ul>
	                                <li>
	                                	IntelliJ IDEA, Eclipse IDE, STS3, Visual Studio Code, Apache Tomcat,
										MySQL Workbench, Oracle SQL developer, Git, GitHub
									</li>
	                            </ul>
                            </div>
                        </div>
                    </div>
                    <!-- end /.job_detail_module -->
                </div>
                <!-- end /.col-md-6 -->
            </div>
            <!-- end /.row -->
        </div>
        <!-- end /.container -->
    </section>
    
<script>
document.addEventListener("DOMContentLoaded", function() {
    const jobTitles = document.querySelectorAll(".job__title");

    jobTitles.forEach(title => {
        const content = title.nextElementSibling;
        const arrowIcon = document.createElement("i");
        arrowIcon.classList.add("fas", "arrow-icon", "fa-chevron-up", "float-right"); // float-right 클래스 추가
        title.appendChild(arrowIcon);

        // 기본적으로 job__content는 보이도록 설정
        content.style.display = "block";

        title.addEventListener("click", function() {
            if (content.style.display === "none" || content.style.display === "") {
                content.style.display = "block";
                arrowIcon.classList.remove("fa-chevron-down");
                arrowIcon.classList.add("fa-chevron-up");
            } else {
                content.style.display = "none";
                arrowIcon.classList.remove("fa-chevron-up");
                arrowIcon.classList.add("fa-chevron-down");
            }
        });
    });
});
</script>


    
    
    