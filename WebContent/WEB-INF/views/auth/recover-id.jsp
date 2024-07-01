<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%
String ctx = request.getContextPath();
%>

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
                            <a href="<c:url value='/index.do'/>">Home</a>
                        </li>
                        <li class="active">
                            <a href="<c:url value='/auth/recoverPassPage.do'/>">Recover-Password</a>
                        </li>
                    </ul>
                </div>
                <h1 class="page-title">Recover password</h1>
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
        START DASHBOARD AREA
=================================-->
<section class="pass_recover_area section--padding2">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3" style="padding-top: 70px; padding-bottom: 120px;">
             <!-- Form 부분 -->
                <c:if test="${empty recoverId}">
                <form action="<%=ctx%>/auth/recoverId.do" style="box-shadow: 0 0 2px 0px;">
                    <div class="cardify recover_pass">
                        <div class="login--header">
                            <p>Please enter the email address for your account. A verification code will be sent to you.
                                Once you have received the verification code, you will be able to choose a new password
                                for your account.</p>
                        </div>
                        <!-- end .login_header -->

                        <div class="login--form">
                            <div class="form-group">
                                <label for="urname">Your Name</label>
                                <input id="urname" name="memberNm" type="text" class="text_field" placeholder="Enter your Name">
                            </div>
                            <div class="form-group">
                                <label for="email_ad">Email Address</label>
                                <input id="email_ad" name="email" type="text" class="text_field" placeholder="Enter your email address">
                            </div>

                            <button class="btn btn--md btn--round register_btn" type="submit">Register Now</button>
                        </div>
                        <!-- end .login--form -->
                    </div>
                    <!-- end .cardify -->
                </form>
                </c:if>
                <!-- 찾은 아이디 부분 -->
                <c:if test="${not empty recoverId}">
                    <div class="cardify recover_pass">
                        <div class="login--form">
                            <div class="form-group">
                                <label for="urname">Your ID</label>
                                ${recoverId}
                            </div>
                        </div>
                        <!-- end .login--form -->
                    </div>
                    <!-- end .cardify -->
                </c:if>
            </div>
            <!-- end .col-md-6 -->
        </div>
        <!-- end .row -->
    </div>
    <!-- end .container -->
</section>
<!--================================
        END DASHBOARD AREA
=================================-->
    