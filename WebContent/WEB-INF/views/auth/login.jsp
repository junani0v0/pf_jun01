<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!--================================
            START LOGIN AREA
    =================================-->
    <section class="login_area section--padding2">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <form action="/pf/auth/login.do" method = "post">
                        <div class="cardify login">
                            <div class="login--header">
                                <h3><spring:message code="login.header"/></h3>
                                <p><spring:message code="login.con"/></p>
                            </div>
                            <!-- end .login_header -->
                            
                            <div class="login--form">
                            
                                <div class="form-group">
                                    <label for="user_name"><spring:message code="login.id"/></label>
                                    <input id="user_name" name="memberId" type="text" class="text_field" value="test_account" placeholder="아이디를 입력하세요">
                                </div>

                                <div class="form-group input_password">
	                                <label for="pass"><spring:message code="login.password"/></label>
	                                <input id="pass" type="password" name="passwd" class="text_field" value="Test_Account_Password" placeholder="비밀번호를 입력하세요">
	                                <i class="fa fa-eye-slash fa-lg toggle-password"></i><!-- 비밀번호 숨기기/보이기 -->
	                            </div>

                                <div class="form-group">
                                    <div class="custom_checkbox">
                                        <input type="checkbox" id="ch2">
                                        <label for="ch2">
                                            <span class="shadow_checkbox"></span>
                                            <span class="label_text"><spring:message code="login.rem"/></span>
                                        </label>
                                    </div>
                                </div>

                                <button class="btn btn--md btn--round" type="submit"><spring:message code="login"/></button>

                                <div class="login_assist">
                                    <p class="recover"><spring:message code="login.lost"/>
                                        <a href="<c:url value='/auth/recoverPassPage.do'/>">
                                        	<spring:message code="login.id"/>
                                       	</a> 
                                       		<spring:message code="login.or"/>
                                        <a href="<c:url value='/auth/recoverPassPage.do'/>">
                                        	<spring:message code="login.password"/>
                                       	</a>?</p>
                                    <p class="signup"><spring:message code="login.null"/>
                                        <a href="<c:url value='/auth/joinPage.do'/>">
                                        	<spring:message code="login.account"/>
                                        </a>?</p>
                                </div>
                            </div>
                            <!-- end .login--form -->
                        </div>
                        <!-- end .cardify -->
                    </form>
                </div>
                <!-- end .col-md-6 -->
            </div>
            <!-- end .row -->
        </div>
        <!-- end .container -->
    </section>
    <!--================================
            END LOGIN AREA
    =================================-->
    <script>
	//비밀번호 숨기기&보여주기 기능
    $(document).ready(function(){
        $('.toggle-password').click(function(){
            var input = $(this).prev('input');
            var type = input.attr('type');
            
            if(type === 'password') {
                input.attr('type', 'text');
                $(this).removeClass('fa-eye-slash').addClass('fa-eye');
            } else {
                input.attr('type', 'password');
                $(this).removeClass('fa-eye').addClass('fa-eye-slash');
            }
        });
    });
	</script>
