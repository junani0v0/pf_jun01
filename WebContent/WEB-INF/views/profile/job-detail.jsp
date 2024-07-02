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
                                        <p>경기도 용인시</p>
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
                                        <p>1993년 04월 29일 (만 31세) </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr lnr-book"></span>
                                        <p>Salary :</p>
                                    </div>
                                    <div class="info">
                                        <p>사규에 따름</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr lnr-graduation-hat"></span>
                                        <p>Education :</p>
                                    </div>
                                    <div class="info">
                                        <p>4년제 학사</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr lnr-hourglass"></span>
                                        <p>Experience :</p>
                                    </div>
                                    <div class="info">
                                        <p>신입</p>
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
                                        <p>외국어 :</p>
                                    </div>
                                    <div class="info">
                                    	일본어(비지니스 회화), 영어(기초회화)
                                    </div>
                                </li>
                                <li>
                                    <div class="info_title">
                                        <span class="lnr fa-regular fa-address-card"></span>
                                        <p>자격증 :</p>
                                    </div>
                                    <div class="info">
                                    	정보처리기사(필기), 운전면허증 1종 보통,</br>
                                    	해기사 3급 기관사, 소방안전관리자 2급, </br>
                                    	위험물안전관리자격증
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="job_detail_module">
                        <h3 class="job__title">
                        	개인 프로젝트
                       	</h3>
                        <div class="job__content">
                            <p>포토폴리오용 개인 프로젝트 Portfolio junani0v0 (개인 포트폴리오) | 개발기간 : 2024.05.27 ~  </p>
                            <span class="lnr fa-brands fa-github info-icon"></span>
                            <a href="https://github.com/junani0v0/pf_jun01/">
                      	    	https://github.com/junani0v0/pf_jun01
							</a>
							</br></br>
							<strong class="section-title">구현 기능</strong>
							</br>
                            <ul>
					            <li>1. 회원가입
					                <ul>
					                    <li>- 비밀번호 암호화
					                        <ul>
					                            <li>>  bcrypt 라이브러리를 활용한 DB 비밀번호 저장 암호화</li>
					                        </ul>
					                    </li>
					                    <li>- 이메일 인증으로 사용자 이메일 유효 여부 인증
					                        <ul>
					                            <li>>  회원가입 시 인증링크 첨부 이메일 발송</li>
					                            <li>>  Jasypt 라이브러리로 이메일 & 비밀번호 암호화</li>
					                            <li>>  tomcat 환경변수로 Jasypt 복구화 키 등록</li>
					                            <li>>  인증여부 DB에 반영</li>
					                        </ul>
					                    </li>
					                    <li>- 회원가입 제약사항(유효성 검사)
					                        <ul>
					                            <li>>  Ajax를 활용하여 아이디 작성후 바로 ID 중복 체크(중복 불가)</li>
					                            <li>>  ID 공백 또는 빈칸 불가</li>
					                            <li>>  ID 4~20자 영어 소문자, 숫자만 가능 조건</li>
					                            <li>>  비밀번호 8~16자 영문 대/소문자, 숫자 및 특수문자 1개 이상 포함 조건</li>
					                            <li>>  비밀번호 확인 칸과 비밀번호칸의 비밀번호 같은지 확인</li>
					                            <li>>  이름과 이메일 공백 또는 빈칸 불가, 이메일 형식 준수 조건</li>
					                            <li>>  이름과 이메일 이름 최대 20자 조건</li>
					                            <li>>  위 조건들이 모두 참이여야지만 회원가입 버튼 활성화, 아닐시 비활성화</li>
					                        </ul>
					                    </li>
					                </ul>
					            </li>
					            <li>2. 로그인
					                <ul>
					                    <li>- ID 조회
					                        <ul>
					                            <li>>  사용자 입력 ID를 DB에 조회 유효성 확인</li>
					                        </ul>
					                    </li>
					                    <li>- 비밀번호 조회</li>
					                    <li>- 아이디 저장(추가예정)</li>
					                    <li>- 아이디, 비밀번호 찾기 & 비밀번호 변경(추가예정)</li>
					                    <li>- 이메일 인증 사용자만 로그인 가능하도록 제한</li>
					                </ul>
					            </li>
					            <li>3. 로그아웃
					                <ul>
					                    <li>- 로그아웃시 세션 삭제</li>
					                </ul>
					            </li>
					            <li>4. 게시판
					                <ul>
					                    <li>- filter를 활용하여 게시판 접근 제한
					                        <ul>
					                            <li>>  세션으로 로그인 여부 판단</li>
					                            <li>>  로그인 시에만 접근 가능</li>
					                            <li>>  비로그인 시 로그인 화면으로 이동</li>
					                            <li>>  로그인 성공 후 이전 요청으로 리다이렉트</li>
					                        </ul>
					                    </li>
					                    <li>- 페이징
					                        <ul>
					                            <li>>  1페이지와 마지막 페이지에서 각각 이전, 다음 버튼 숨기기</li>
					                            <li>>  한 페이지 당 출력 게시글 10개</li>
					                            <li>>  페이징 네비게이션 바 한 페이지 당 10개씩 출력</li>
					                        </ul>
					                    </li>
					                    <li>- 게시글 리스트 조회
					                        <ul>
					                            <li>>  게시물 번호 DB게시글 번호가 아닌 전체 개수 기준으로 변경예정</li>
					                            <li>>  첨부파일 여부, 댓글, 좋아요 & 싫어요 개수 표시</li>
					                        </ul>
					                    </li>
					                    <li>- 게시글 작성(첨부파일)
					                        <ul>
					                            <li>>  trumbowyg 텍스트 에디터를 이용한 게시물 내용 입력</li>
					                            <li>>  첨부파일 등록 (최대 3개)</li>
					                            <li>>  첨부파일 용량 제한 (10MB)</li>
					                        </ul>
					                    </li>
					                    <li>- 게시글 상세 조회
					                        <ul>
					                            <li>>  게시글 좋아요 & 싫어요 DB 반영</li>
					                            <li>>  게시글 작성자만 게시글 수정/삭제 버튼 보이게 & 아닐 경우 숨기기</li>
					                            <li>>  댓글, 대댓글(예정) 기능 & 작성자가 같아야만 수정/삭제 가능</li>
					                            <li>>  첨부파일 단일 다운로드 & zip파일로 일괄 다운로드 기능</li>
					                        </ul>
					                    </li>
					                    <li>- 게시글 수정
					                        <ul>
					                            <li>>  ajax를 활용하여 즉각 반영 첨부파일 삭제/추가 (최대 3개 유지)</li>
					                        </ul>
					                    </li>
					                    <li>- 게시글 삭제
					                    	<ul>
					                            <li>>  게시글 번호 첨부파일 전체 삭제</li>
					                            <li>>  게시글 번호 댓글 전체 삭제</li>
					                            <li>>  게시글 번호 좋아요 전체 삭제</li>
					                            <li>>  게시글 번호 싫어요 전체 삭제</li>
					                            <li>>  게시글 번호 게시글 삭제</li>
					                        </ul>
					                    </li>
					                </ul>
					            </li>
					            <li>5. 다국어 기능
					                <ul>
					                    <li>- i18n을 활용하여 영어, 한국어, 일본어 다국어 기능 추가</li>
					                </ul>
					            </li>
					            <li>6. 배포
					                <ul>
					                    <li>- aws를 활용한 배포 & 배포용 DB생성</li>
					                    <li>- src/main/resource를 local, dev, common로 구분</li>
					                    <li>- config.properties로 local과 배포(dev)상태에서 각각의 첨부파일 저장 경로 및 인증이메일 주소 설정</li>
					                </ul>
					            </li>
					            <li>7. 테스트 케이스
					                <ul>
					                    <li>- JUnit5를 활용하여 단위테스트 진행</li>
					                </ul>
					            </li>
					        </ul>
                        </div>
                        
                        <h3 class="job__title">개인 프로젝트 사용 기술</h3>
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
	                           	<strong class="section-title">개발 환경</strong>
	                            <ul>
	                                <li> Eclipse IDE 4.31.0</li>
	                                <li> Apache Tomcat 9.0.87 </li>
	                                <li> Maven 3.9.6</li>
	                            </ul>
                            </div>
                            <div class="content_list">
	                           	<strong class="section-title">배포</strong>
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
                        

                        <h3 class="job__title">팀 프로젝트</h3>
                        <div class="job__content">
                            <p>Brokurly (마켓컬리 클론코딩 프로젝트) | 개발인원 : 7명 | 개발기간 : 2024.01.11 ~ 2024.03.15(약 2개월) </p>
                            <span class="lnr fa-brands fa-github info-icon"></span>
                            <a href="https://github.com/junani0v0/brokurly/">
                      	    	https://github.com/junani0v0/brokurly
							</a>

                            <ul class="content_list">
                                <li>상품 상세 페이지 조회, 수정, Ajax를 활용한 장바구니 담기 & 찜 기능 구현.</li>
                                <li>상품고시정보, 상품 후기 조회, 상품 문의 작성 & 조회, 수정 구현.</li>
                                <li>장바구니 조회, 선택 상품 삭제, 수량 변경과 그에 따른 상품 금액계산.</li> 
								<li>장바구니 선택 상품에 대한 결제예정금액 계산 DB와 연동 구현.</li>
                                <li>장바구니 선택상품 주문, 장바구니 비우기 구현.</li>
                                <li>카카오 주소 API를 활용한 주소지 등록, 조회, 변경 기능 구현.</li>
                            </ul>
                        </div>

                        <h3 class="job__title">팀 프로젝트 사용 기술</h3>
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
	                                <li>Java 17 : 자바 프로그래밍 언어를 활용한 스프링 프레임워크로 웹 개발,
	                                	자바의 기초를 공부하고 자료구조와 알고리즘을 자바기반으로 학습, 순수 자바를 활용 단위 테스트로 안정적인 코드를 짜기 위해 노력하였습니다.</li>
	                                <li>HTML5/CSS3 : 부트스트랩을 활용한 쇼핑몰 레이아웃 및 스타일링 작업.</li>
	                                <li>JS ES6, JQuery3.7.1 : 여러 이벤트를 다루어 보았으며 Ajax를 활용해서 서버와 
									비동기 통신하여 데이터를 분할하여 읽어오는 방법을 구현.</li>
	                            </ul>
                            </div>
                            <div class="content_list">
	                           	<strong class="section-title">Framework</strong>
	                            <ul>
	                                <li>Spring 5.x : MVC패턴으로 코드 작성, Maven 사용, 페이징 처리 기능 구현
										     RESTful 하게 URI 코드를 짜기 위해 노력하였습니다.</li>
	                                <li>MyBatis3 : MyBatis로 DB에 접근하는 SQL로직 구현.</li>
	                                <li>JUnit5 : JUnit을 활용하여 단위 테스트(Unit Test) 진행.</li>
	                            </ul>
                            </div>
                            <div class="content_list">
	                           	<strong class="section-title">Database</strong>
	                            <ul>
	                                <li>ERD CLOUD를 사용하여 쇼핑몰 고객 및 상품 관련 데이터모델링.</li>
	                                <li>MySQL 8.0 : 효율적인 인덱스 및 조인 활용으로 상품페이지, 좋아요, 장바구니 기능 구현.</li>
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


    
    
    