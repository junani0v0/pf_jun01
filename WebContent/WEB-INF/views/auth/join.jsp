<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!--================================
            START SIGNUP AREA
    =================================-->
    <section class="signup_area section--padding2">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <form action="/pf/auth/join.do" method = "post">
                        <div class="cardify signup_form">
                            <div class="login--header">
                                <h3>Create Your Account</h3>
                                <p>Please fill the following fields with appropriate information to register a new MartPlace
                                    account.
                                </p>
                            </div>
                            <!-- end .login_header -->

                            <div class="login--form">

 								<div class="form-group">
                                    <label for="user_id">UserID</label>
                                    <input id="user_id" name="memberId" type="text" class="text_field" placeholder="Enter your username...">
                                </div>

                                <div class="form-group">
                                    <label for="urname">Your Name</label>
                                    <input id="urname" name="memberNm" type="text" class="text_field" placeholder="Enter your Name">
                                </div>

                                <div class="form-group">
                                    <label for="email_ad">Email Address</label>
                                    <input id="email_ad" name="email" type="text" class="text_field" placeholder="Enter your email address">
                                </div>
                               
                                <div class="form-group input_password">
                                    <label for="password">Password</label>
                                    <input id="password" name="passwd" type="password" class="text_field" placeholder="Enter your password...">
                                    <i class="fa fa-eye-slash fa-lg toggle-password"></i>
                                </div>

                                <div class="form-group input_password">
                                    <label for="con_pass">Confirm Password</label>
                                    <input id="con_pass" type="password" class="text_field" placeholder="Confirm password">
                                    <i class="fa fa-eye-slash fa-lg toggle-con_pass"></i>
                                </div>

                                <button class="btn btn--md btn--round register_btn" type="submit">Register Now</button>

                                <div class="login_assist">
                                    <p>Already have an account?
                                        <a href="<c:url value='/auth/loginPage.do'/>">Login</a>
                                    </p>
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
            END SIGNUP AREA
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
	
    $(document).ready(function(){
        $('.toggle-con_pass').click(function(){
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