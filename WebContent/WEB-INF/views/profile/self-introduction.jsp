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
                                <h4>나의 가치관</h4>
                                <button class="toggle-button"><i class="fas fa-chevron-up"></i></button>
                            </div>
                            <p>
                            	“동료 사랑을 실천하는 인재”
                            </br></br>
	                            저는 남들과는 조금 다른 사회 경험을 가지고 있습니다. </br>
	                            2015년 시작된 인턴 생활을 시작으로 선박의 선원으로 다년간 승선하였습니다. 
	                            24시간 한순간도 긴장의 끈을 놓을 수 없는 극한의 근무 환경에 있었기에 누구보다 강한 정신력으로 어디에서든지 적응할 수 있는 준비가 되어있습니다. </br></br>
	                            또한 저는 남다른 열정이 있는 사람입니다.</br>  해외에서 생활하다 보면 언어의 장벽과 생김새의 다름 때문에 제대로 된 대화 한번 없이 각자의 업무가 끝나면 각자의 방으로 돌아가는 것이 선원 생활입니다.
	                            하지만 저는 한 회사에서 근무하고 있는 동료들이라면 서로를 신뢰하고 존중하며 화목하게 지내는, 사람 냄새나는 근무 환경을 만들고 싶었습니다. 또한 모두의 목표인 안전 항해를 더욱 효율적으로 이루고 싶었습니다.
								그래서 전 행동했습니다. </br></br>
								
								첫째로, 같은 부서에 근무하는 외국인 동료에게 먼저 다가가 말을 건네며 식사도 함께하고 많은 것을 함께하며 같이 어울렸습니다. 
								함께하는 시간이 많아지면서 저의 부족한 영어 실력이 드러났습니다. 하지만 이것을 부끄럽게 여기지 않고 오히려 대화에 더 적극적으로 참여했고 대화 중 전자사전을 펼쳐 놓으면서 대화를 시도 했습니다.
								이 적극적인 행동들이 동료들의 마음에 작은 변화를 일으켰고 점차 시간이 지날수록 동료들과 웃으면서 일할 수 있었고, 나아가 서로의 버팀목이 되어줄 수 있었습니다. </br></br>
								전 이 경험을 통해 주변에 있는 사람들의 말에 귀 기울이는 행동, 그것이 끼치는 영향이 얼마나 대단한 것인지, 그리고 나의 말을 들어주는 사람이 있다는 것이 얼마나 행복감을 주는지 배웠습니다. 
								저는 사람과 사람 사이에 관계를 중요시하며 동료들 간에 협력으로 일의 효율을 높이는 걸 선호합니다. 입사 후에도 저의 앞선 노력과 같이 동료 사랑을 멈추지 않고 계속해서 이어가겠습니다.</br>
							</p>
                        </div>
                        <!-- end /.term -->

                        <div class="term">
                            <div class="term__title">
                                <h4>성격의 장단점</h4>
                                <button class="toggle-button"><i class="fas fa-chevron-up"></i></button>
                            </div>
                            <p>
                            	“변화를 두려워하지 않는 인재”</br></br>

								저의 장점은 학창 시절 친구 및 주변 사람들의 의견을 경청하고 호응을 잘해주었으며, 원만한 대인관계를 유지하였습니다. </br>
								단점으로는 내향적인 성격으로 거절하지 못해 난처했던 경험이 있었습니다. 
								이러한 성격을 고치기 위해 재학 중 마술 동호회 활동을 통해 공원이나 길거리에서 마술공연을 하며 성격을 외향적으로 바꾸어 나갔습니다. 
								이렇게 노력해 성격을 바꿔가며 어떠한 일이든 해낼 수 있다는 자신감이 생겼고 어려운 일이 생겼을 때 끈기 있게 노력할 수 있게 되었습니다.
                            </p>
                        </div>
                        <!-- end /.term -->
                        <div class="term">
                            <div class="term__title">
                                <h4>지원 직무 관련 담당자가 갖춰야할 자세와 역량에 대해 기술</h4>
                                <button class="toggle-button"><i class="fas fa-chevron-up"></i></button>
                            </div>
                            <p>
                            	어떤한 직무를 하더라도 업무에 적응을 잘하는 것이 중요하다고 생각합니다. </br></br>
                            	저는 업무 강도가 높은 선박에 근무하며 한번 승선하면 짧게는 6개월 길게는 1년동안 24시간 3교대로 주말, 휴일 없이 바다 위에서 생활하며, 
                            	새로 승선할 때마다 새로운 사람을 만나고 새로운 장비를 다루며 어떠한 업무에도 잘 적응할 자신이 있습니다.
                            	또한 다양한 장비를 만지다 보면 여러 사건 사고 및 위급상황을 많이 겪었으며, 이를 해결해 나아가며 이제는 어떠한 문제가 생기더라도 침착하게 문제를 분석하고 대처할 수 있게 되었습니다.
                           </p>
                        </div>
                        <!-- end /.term -->
						<div class="term">
                            <div class="term__title">
                                <h4>입사 후 포부</h4>
                                <button class="toggle-button"><i class="fas fa-chevron-up"></i></button>
                            </div>
                            <p>
                            	입사는 시작이라고 생각합니다. 저는 두 가지 목표를 통해 귀사에 일조하겠습니다.
								</br></br>
								첫째, 멈춰 있지 않고 달리겠습니다.</br>
								전문적인 개발자가 되기 위해 계속해서 교육받을 것입니다. 현재에 안주해 있지 않고 발전하는 모습으로 귀사의 발전에 기여하겠습니다.
								</br></br>
								둘째, 항상 사명감을 가지고 일하는 사원이 되겠습니다.</br>
								개발은 제품의 완성도에 기여하는 부분이자 신뢰도에 영향을 미치는 직무라고 생각합니다. 그렇기에 사소한 차이는 완성도 있는 결과물을 내는 지표가 될 것입니다. 
								제가 개발자가 된다면 항상 사명감을 가지고 정확성 있는 결과로 믿음직한 기업이 되는데 이바지하겠습니다.
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
        const toggleButtons = document.querySelectorAll(".toggle-button");

        toggleButtons.forEach(button => {
            const paragraph = button.parentElement.nextElementSibling;
            paragraph.style.display = "block"; // 기본적으로 내용 열림 상태로 설정

            button.addEventListener("click", function() {
                if (paragraph.style.display === "none" || paragraph.style.display === "") {
                    paragraph.style.display = "block";
                    button.querySelector('i').classList.remove('fa-chevron-down');
                    button.querySelector('i').classList.add('fa-chevron-up');
                } else {
                    paragraph.style.display = "none";
                    button.querySelector('i').classList.remove('fa-chevron-up');
                    button.querySelector('i').classList.add('fa-chevron-down');
                }
            });
        });
    });
	</script>