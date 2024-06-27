<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%
String ctx = request.getContextPath();
%>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>
.hide {
	display: none;
}

</style>

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
								<fieldset>
	 								<div class="form-group">
	                                    <label for="user_id">UserID</label>
	                                    <input id="user_id" name="memberId" type="text" class="text_field" placeholder="Enter your username...">
	                                </div>
                                </fieldset>
                                
                                <div class="success-message hide" style="color: #8fce00">사용할 수 있는 아이디입니다</div>
							    <div class="failure-message hide" style="color: #f44336">아이디는 4~20글자이어야 합니다</div>
							    <div class="failure-message2 hide" style="color: #f44336">영어 소문자와 숫자 혼합만 사용가능합니다</div>
                                <div class="failure-message3 hide" style="color: #f44336">사용할 수 없는 중복 아이디입니다</div>

								<fieldset>
	                                <div class="form-group">
	                                    <label for="urname">Your Name</label>
	                                    <input id="urname" name="memberNm" type="text" class="text_field" placeholder="Enter your Name">
	                                </div>
                                </fieldset>
                                
                                <div class="name-fail-message hide" style="color: #f44336">이름은 공백 또는 빈칸일 수 없습니다</div>
                                <div class="name-fail-message2 hide" style="color: #f44336">영어 대/소문자와 한글만 가능합니다</div>
                                <div class="name-fail-message3 hide" style="color: #f44336">최대 20글자까지 가능합니다</div>

								<fieldset>
	                                <div class="form-group">
	                                    <label for="email_ad">Email Address</label>
	                                    <input id="email_ad" name="email" type="text" class="text_field" placeholder="Enter your email address">
	                                </div>
                                </fieldset>
                               
							   <div class="email-fail-message hide" style="color: #f44336">이메일은 공백 또는 빈칸일 수 없습니다</div>
							   <div class="email-fail-message2 hide" style="color: #f44336">이메일 형식을 준수해야 합니다</div>
							   <div class="email-fail-message3 hide" style="color: #f44336">최대 20글자까지 가능합니다</div>
                               
                               <fieldset>
	                                <div class="form-group input_password">
	                                    <label for="password">Password</label>
	                                    <input id="password" name="passwd" type="password" class="text_field" placeholder="Enter your password...">
	                                    <i class="fa fa-eye-slash fa-lg toggle-password"></i>
	                                </div>
                                </fieldset>
                                
                                <div class="strongPassword-message hide" style="color: #f44336">8~16자의 영문(대/소문자), 숫자, 특수문자(@$!%*#?&) 1개 이상을 포함해야합니다</div>
                                
                                <fieldset>
	                                <div class="form-group input_password">
	                                    <label for="con_pass">Confirm Password</label>
	                                    <input id="con_pass" type="password" class="text_field" placeholder="Confirm password">
	                                    <i class="fa fa-eye-slash fa-lg toggle-con_pass"></i>
	                                </div>
                                </fieldset>
                                
                                <div class="mismatch-message hide" style="color: #f44336">비밀번호가 일치하지 않습니다</div>

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
	
  	//비밀번호 확인 숨기기&보여주기 기능
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
  
  	
  /* 회원가입 유효성 검사 */
  
  	/* 아이디 */
	// 1. 아이디 입력창 정보 가져오기
	let elInputUserId = document.querySelector('#user_id'); // input#username
	// 2. 성공 메시지 정보 가져오기
	let elSuccessMessage = document.querySelector('.success-message'); // div.success-message.hide
	// 3. 실패 메시지 정보 가져오기 (글자수 제한 4~12글자)
	let elFailureMessage = document.querySelector('.failure-message'); // div.failure-message.hide
	// 4. 실패 메시지2 정보 가져오기 (영어 또는 숫자)
	let elFailureMessageTwo = document.querySelector('.failure-message2'); // div.failure-message2.hide
	// 5. 실패 메시지3 정보 가져오기 (아이디 중복)
	let elFailureMessageThree = document.querySelector('.failure-message3'); // div.failure-message3.hide
	
	/* 비밀번호 */
	// 1. 비밀번호 입력창 정보 가져오기
	let elInputPassword = document.querySelector('#password'); // input#password
	// 2. 비밀번호 확인 입력창 정보 가져오기
	let elInputPasswordRetype = document.querySelector('#con_pass'); // input#password-retype
	// 3. 실패 메시지 정보 가져오기 (비밀번호 불일치)
	let elMismatchMessage = document.querySelector('.mismatch-message'); // div.mismatch-message.hide
	// 4. 실패 메시지 정보 가져오기 (8글자 이상, 영문, 숫자, 특수문자 미사용)
	let elStrongPasswordMessage = document.querySelector('.strongPassword-message'); // div.strongPassword-message.hide
	
	/* 이름 */
	// 1. 이름 입력창 정보 가져오기
	let elInputName = document.querySelector('#urname'); // input#name
	// 2. 실패 메시지 정보 가져오기 (공백 또는 빈칸 불가)
	let elFailNaemMessage = document.querySelector('.name-fail-message'); // div.name-fail-message.hide
	// 3. 실패 메시지 정보 가져오기 (영문 대/소문자와 한글만 가능)
	let elFailNaemMessageTwo = document.querySelector('.name-fail-message2'); // div.name-fail-message2.hide
	// 4. 최대 길이 제한(40자)
	let elFailNaemMessageThree = document.querySelector('.name-fail-message3'); // div.name-fail-message3.hide
	
	/* 이메일 */
	// 1. 이메일 입력창 정보 가져오기
	let elInputEmail = document.querySelector('#email_ad'); // input#name
	// 2. 실패 메시지 정보 가져오기 (빈칸 또는 공백 불가)
	let elFailEmailMessage = document.querySelector('.email-fail-message'); // div.email-fail-message.hide
	// 3. 실패 메시지 정보 가져오기 (이메일 형식 준수)
	let elFailEmailMessageTwo = document.querySelector('.email-fail-message2'); // div.email-fail-message2.hide
	// 4. 최대 길이 제한(40자)
	let elFailEmailMessageThree = document.querySelector('.email-fail-message3'); // div.email-fail-message3.hide
	
	//아이디 길이 4~20자
	function idLength(id) {
	    return id.length >= 4 && id.length <= 20;
	}
	
	//아이디 영문 소문자 or 숫자
	function onlyNumberAndEnglish(str) {
		return /^(?=.*[a-z])(?=.*\d)[a-z\d]+$/.test(str);
		}
	
	//비밀번호 8~16자 영문 대소문자 , 숫자, 특수문자 1개 이상
	function strongPassword (str) {
		  return /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,16}$/.test(str);
		}
	
	//비밀번호 확인
	function isMatch (password1, password2) {
		  return password1 === password2;
		}
	
	//이름 (영어 대소문자와 한글 가능)
	function isValidName(str) {
	    return /^[a-zA-Z가-힣]+$/.test(str);
	}
	
	//이름 길이 최대 20자
	function nameLength(value) {
		  return value.length > 0 && value.length <= 20
		}
	
	//이메일 형식 확인
	function isValidEmail(email) {
	    // 이메일 형식을 정의한 정규표현식
	    var emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
	    return emailRegex.test(email);
	}
	
	//이메일 길이 최대 20자
	function emailLength(value) {
		  return value.length > 0 && value.length <= 20
		}
	
	
	//아이디 이벤트
	elInputUserId.onkeyup = function () {
		  // 값을 입력한 경우
		  if (elInputUserId.value.length !== 0) {
		    // 영어 또는 숫자 외의 값을 입력했을 경우
		    if(onlyNumberAndEnglish(elInputUserId.value) === false) {
		      elSuccessMessage.classList.add('hide');
		      elFailureMessage.classList.add('hide');
		      elFailureMessageTwo.classList.remove('hide'); // 영어 또는 숫자만 가능합니다
		      elFailureMessageThree.classList.add('hide'); // 아이디 중복 체크
		    }
		    // 글자 수가 4~12글자가 아닐 경우
		    else if(idLength(elInputUserId.value) === false) {
		      elSuccessMessage.classList.add('hide'); // 성공 메시지가 가려져야 함
		      elFailureMessage.classList.remove('hide'); // 아이디는 4~12글자이어야 합니다
		      elFailureMessageTwo.classList.add('hide'); // 실패 메시지2가 가려져야 함
		      elFailureMessageThree.classList.add('hide'); // 아이디 중복 체크
		    }
		    // 조건을 모두 만족할 경우
		    else if(idLength(elInputUserId.value) || onlyNumberAndEnglish(elInputUsername.value)) {
		      /* elSuccessMessage.classList.remove('hide'); // 사용할 수 있는 아이디입니다 */
		      elFailureMessage.classList.add('hide'); // 실패 메시지가 가려져야 함
		      elFailureMessageTwo.classList.add('hide'); // 실패 메시지2가 가려져야 함
		      elFailureMessageThree.classList.add('hide'); // 아이디 중복 체크
		    }
		  }
		  // 값을 입력하지 않은 경우 (지웠을 때)
		  // 모든 메시지를 가린다.
		  else {
		    elSuccessMessage.classList.add('hide');
		    elFailureMessage.classList.add('hide');
		    elFailureMessageTwo.classList.add('hide');
		    elFailureMessageThree.classList.add('hide'); // 아이디 중복 체크
		  }
		}
	
	//비밀번호 이벤트
	elInputPassword.onkeyup = function () {

		  // 값을 입력한 경우
		  if (elInputPassword.value.length !== 0) {
		    if(strongPassword(elInputPassword.value)) {
		      elStrongPasswordMessage.classList.add('hide'); // 실패 메시지가 가려져야 함
		    }
		    else {
		      elStrongPasswordMessage.classList.remove('hide'); // 실패 메시지가 보여야 함
		    }
		  }
		  // 값을 입력하지 않은 경우 (지웠을 때)
		  // 모든 메시지를 가린다.
		  else {
		    elStrongPasswordMessage.classList.add('hide');
		  }
		};
	
	//비밀번호 확인 이벤트
	elInputPasswordRetype.onkeyup = function () {

		  if (elInputPasswordRetype.value.length !== 0) {
		    if(isMatch(elInputPassword.value, elInputPasswordRetype.value)) {
		      elMismatchMessage.classList.add('hide'); // 실패 메시지가 가려져야 함
		    }
		    else {
		      elMismatchMessage.classList.remove('hide'); // 실패 메시지가 보여야 함
		    }
		  }
		  else {
		    elMismatchMessage.classList.add('hide'); // 실패 메시지가 가려져야 함
		  }
		};
		
	//이름체크
	elInputName.onkeyup = function () {
		if (elInputName.value.length == 0 || '') { // 0또는 공백 불가
			elFailNaemMessage.classList.remove('hide');
			elFailNaemMessageTwo.classList.add('hide');	
			elFailNaemMessageThree.classList.add('hide');	
		}
		else if(isValidName(elInputName.value) === false) { //영문 & 한글만 가능
			elFailNaemMessage.classList.add('hide');
			elFailNaemMessageTwo.classList.remove('hide');	
			elFailNaemMessageThree.classList.add('hide');	
		}
		else if(nameLength(elInputName.value) === false) { //최대길이 20자
			elFailNaemMessage.classList.add('hide');
			elFailNaemMessageTwo.classList.add('hide');	
			elFailNaemMessageThree.classList.remove('hide');	
		}
		else { //모두 참
			elFailNaemMessage.classList.add('hide');
			elFailNaemMessageTwo.classList.add('hide');	
			elFailNaemMessageThree.classList.add('hide');	
		}
	}
	
	//이메일 체크
	elInputEmail.onkeyup = function () {
		if (elInputEmail.value.length == 0 || '') {	// 0또는 공백 불가
			elFailEmailMessage.classList.remove('hide');
			elFailEmailMessageTwo.classList.add('hide');
			elFailEmailMessageThree.classList.add('hide');
		}
		else if(isValidEmail(elInputEmail.value) === false){ // 이메일 형식제한
				elFailEmailMessage.classList.add('hide');
				elFailEmailMessageTwo.classList.remove('hide');
				elFailEmailMessageThree.classList.add('hide');
		}
		else if(emailLength(elInputEmail.value) === false){ // 최대길이 20자
			elFailEmailMessage.classList.add('hide');
			elFailEmailMessageTwo.classList.add('hide');
			elFailEmailMessageThree.classList.remove('hide');
		}
		else{
			elFailEmailMessage.classList.add('hide');
			elFailEmailMessageTwo.classList.add('hide');
			elFailEmailMessageThree.classList.add('hide');
		}
	}
		
	//아이디 중복체크
	$(document).ready(function() {
	    	//ID 중복 확인
	    	//id를 입력할 수 있는 input text 영역을 벗어나면 동작
	    	$("#user_id").on("focusout", function() {
	    		
	    		var memberId = $("#user_id").val();

	            if (memberId === '' || !idLength(memberId) || !onlyNumberAndEnglish(memberId)) {
	                return false;
	            }
	    		
	        	//Ajax로 전송
	        	$.ajax({
	        		url : '<%=ctx%>/auth/idCheck.do',
	        		data : {
	        			memberId : memberId
	        		},
	        		type : 'POST',
	        		dataType : 'json',
	        		success : function(result) {
	        			if (result == true) {
	        				elSuccessMessage.classList.remove('hide'); // 사용 가능한 아이디 메시지 표시
	                        elFailureMessageThree.classList.add('hide'); // 중복 아이디 메시지 숨김
	        			} else{
	        				elSuccessMessage.classList.add('hide'); // 사용 가능한 아이디 메시지 숨김
	                        elFailureMessageThree.classList.remove('hide'); // 중복 아이디 메시지 표시
	        				$("#user_id").val(''); // 아이디 입력 필드 초기화
	        			}
	        		}
	        	}); //End Ajax
	    	});
	    })

	//로그인 버튼 활성화(위에 조건 다 true여야)
    $(document).ready(function() {
        // 아이디, 이름, 이메일, 비밀번호, 비밀번호 확인 필드가 모두 유효성 검사를 통과했는지 확인하는 함수
        function validateForm() {
            // 각 필드의 유효성 상태를 가져옴
            var userIdValid = idLength(elInputUserId.value) && onlyNumberAndEnglish(elInputUserId.value);
            var nameValid = elInputName.value.trim() !== '' && isValidName(elInputName.value) && nameLength(elInputName.value);
            var emailValid = elInputEmail.value.trim() !== '' && isValidEmail(elInputEmail.value) && emailLength(elInputEmail.value);
            var passwordValid = strongPassword(elInputPassword.value);
            var passwordMatch = isMatch(elInputPassword.value, elInputPasswordRetype.value);
            var idDuplicateCheck = elSuccessMessage.classList.contains('hide'); // 아이디 중복 체크 성공 메시지가 숨겨져 있어야 함

            // 모든 필드의 유효성을 확인하고, 모두 유효할 경우 true를 반환
            return userIdValid && nameValid && emailValid && passwordValid && passwordMatch && !idDuplicateCheck;
        }

        // 초기 상태에서 Register Now 버튼을 비활성화
        $('.register_btn').prop('disabled', true);

        // 각 필드의 입력 이벤트를 감지하여 validateForm 함수를 호출하고,
        // 그 결과에 따라 Register Now 버튼을 활성화 또는 비활성화
        $('.text_field').keyup(function() {
            if (validateForm()) {
                $('.register_btn').prop('disabled', false); // 버튼 활성화
            } else {
                $('.register_btn').prop('disabled', true); // 버튼 비활성화
            }
        });

        // 아이디 입력창 focusout 이벤트에서 중복 체크 후 메시지를 보여줌
        $('#user_id').on('focusout', function() {
            var memberId = $('#user_id').val().trim();
            
            if (memberId === '' || !idLength(memberId) || !onlyNumberAndEnglish(memberId)) {
            	elSuccessMessage.classList.add('hide');
                return false;
            }

            $.ajax({
                url: '<%=ctx%>/auth/idCheck.do',
                data: {
                    memberId: memberId
                },
                type: 'POST',
                dataType: 'json',
                success: function(result) {
                    if (result) {
                        elSuccessMessage.classList.remove('hide');
                        elFailureMessageThree.classList.add('hide'); // 중복 아이디 메시지 숨김
                    } else {
                        elSuccessMessage.classList.add('hide');
                        elFailureMessageThree.classList.remove('hide');
                    }
                    // validateForm 함수를 호출하여 Register Now 버튼 상태를 업데이트
                    if (validateForm()) {
                        $('.register_btn').prop('disabled', false); // 버튼 활성화
                    } else {
                        $('.register_btn').prop('disabled', true); // 버튼 비활성화
                    }
                }
            });
        });
    });


	
	</script>