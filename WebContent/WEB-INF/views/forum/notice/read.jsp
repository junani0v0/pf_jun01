<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "com.portfolio.www.message.MessageEnum" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
String ctx = request.getContextPath();
%>
<link rel="stylesheet" href="<%=ctx%>/assest/template/css/trumbowyg.min.css">
<script src="<%=ctx%>/assest/template/js/vendor/trumbowyg.min.js"></script>
<script src="<%=ctx%>/assest/template/js/vendor/trumbowyg/ko.js"></script>

<style>
/* 일괄 다운로드 버튼 숨기기 기능용 */
	.hidden {
	    display: none;
	}
</style>

    <!--================================
            START DASHBOARD AREA
    =================================-->
    <section class="support_threads_area section--padding2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="forum_detail_area ">
                        <div class="cardify forum--issue">
                        	<!-- 제목 시작 -->
                            <div class="title_vote clearfix">
                                <h3>${board.title}</h3>
								<!-- start .vote -->
                                <div class="vote">
								    <a href="#" id="cThumbUpAnchor" onClick="javascript:thumbUp(${board.boardSeq}, ${board.boardTypeSeq});" <c:if test="${liked == 1}">class="active"</c:if>>
								        <span class="lnr lnr-thumbs-up"></span>
								    </a>
								    <a href="#" id="cThumbDownAnchor" onClick="javascript:thumbDown(${board.boardSeq}, ${board.boardTypeSeq});" <c:if test="${disliked == 1}">class="active"</c:if>>
								        <span class="lnr lnr-thumbs-down"></span>
								    </a>
								</div>
                                <!-- end .vote -->
                            </div>
                            <!-- 제목 끝 -->
                            <div class="suppot_query_tag">
                                <img class="poster_avatar" src="<%=ctx%>/assest/template/images/support_avat1.png" alt="Support Avatar">${board.memberId}
                                <!-- 날짜 포맷팅 -->
						        <fmt:parseDate value="${board.regDtm}" var="regDate" pattern="yyyyMMddHHmmss" />
                                <span><fmt:formatDate value="${regDate}" pattern="yyyy.MM.dd HH:mm:ss" /></span>
                            </div>
                            <p style="margin-bottom: 0; margin-top: 19px;">${board.content}</p>
                            
                            <br/><br/><br/><br/>
                            <!-- 기능 버튼 -->
                            <c:if test="${board.regMemberSeq eq memberSeq}">
	                           <!--  수정하기 -->
								<div style="display: inline-block; margin: 0 5px; float: right; padding-right:10px;">
	                                <a href="<c:url value='/forum/notice/editPage.do?boardSeq=${board.boardSeq}&boardTypeSeq=${board.boardTypeSeq}'/>">
	                                	<button class="btn btn--round btn--bordered btn-sm btn-secondary"><spring:message code="read.edit"/></button>
	                                </a>
                            	</div>
                            	<!-- 수정하기 끝-->
                            	<!--  삭제하기 -->
								<div style="display: inline-block; margin: 0 5px; float: right; padding-right:10px;">
	                                <a href="<c:url value='/forum/notice/delete.do?boardSeq=${board.boardSeq}&boardTypeSeq=${board.boardTypeSeq}'/>">
	                                	<button class="btn btn--round btn--bordered btn-sm btn-secondary"><spring:message code="read.delete"/></button>
	                                </a>
                            	</div>
                            	<!-- 삭제하기 끝-->
                            </c:if>
                            <br/>
                            <!-- 첨부파일 일괄다운로드-->
                            <a href="<c:url value='/forum/downloadAllZip.do?boardSeq=${board.boardSeq}&boardTypeSeq=${board.boardTypeSeq}'/>"
							   class="download-link ${empty attFile ? 'hidden' : ''}">
							    <button class="btn btn--round btn--bordered btn-sm btn-secondary ${empty attFile ? 'hidden' : ''}">
							    	<spring:message code="read.download"/>
							    </button>
							</a>
                            <br/>
                            <!-- 첨부파일 -->
                            <c:forEach items="${attFile}" var="attFile" varStatus="status">
	                            <c:if test="${attFile != null}">
		                            <i class="fa-regular fa-circle-down">
										<a href='<%=ctx%>/forum/download.do?attachSeq=${attFile.attachSeq}' style="font-size: 16px; color:#555555;">
											${attFile.orgFileNm} (${attFile.fileSize} byte)
										</a>
		                            </i><br/>
								</c:if>
							</c:forEach>
                        </div>
                        <!-- end .forum_issue -->


                        <div class="forum--replays cardify">
                            <div class="area_title">
                                <h4>${commentCnt} <spring:message code="read.cnt"/></h4>
                            </div>
                            <!-- end .area_title -->
                            <!-- 댓글 시작 -->
							<c:forEach items="${comments}" var="comment" varStatus="status">
							  <div class="forum_single_reply">
							      <!-- <div class="reply_content"> -->
							      <div class="title_vote clearfix">
							          <div class="name_vote">
							              <div class="pull-left">
							                  <h4>${comment.memberNm}
							                      <!-- <span>staff</span> -->
							                  </h4>
							                  <fmt:parseDate value="${comment.regDtm}" var="regDate" pattern="yyyyMMddHHmmss" />
							                  <p><fmt:formatDate value="${regDate}" pattern="yyyy.MM.dd HH:mm:ss" /></p>
							              </div>
							              <!-- end .pull-left -->
							            <div class="button-container" style="text-align: right;">
							            	<c:if test="${comment.memberSeq eq memberSeq}">
											    <button class="btn btn--round btn--bordered btn-sm btn-secondary" onClick='editComment(${comment.commentSeq}, "${comment.content}")'><spring:message code="read.edit"/></button>
											    <button class="btn btn--round btn--bordered btn-sm btn-secondary" onClick='deleteComment(${comment.commentSeq})'><spring:message code="read.delete"/></button>
										    </c:if>
										</div>
							          </div>
							          <!-- end .vote -->
							          <p class="reply_comment" id="content-${comment.commentSeq}">${comment.content}</p>
							      </div>
							      <!-- end .reply_content -->
							      <!-- 댓글 끝 -->
							  </div>
							  <!-- end .forum_single_reply -->
							</c:forEach>
                            <!-- end .forum_single_reply -->

                            <div class="comment-form-area">
                                <h4><spring:message code="read.Comment"/></h4>
                                <!-- comment reply -->
                                <div class="media comment-form support__comment">
                                    <div class="media-left">
                                        <a href="#">
                                            <img class="media-object" src="<%=ctx%>/assest/template/images/m7.png" alt="Commentator Avatar">
                                        </a>
                                    </div>
                                    <div class="media-body comment-reply-form">
	                                    <div id="trumbowyg-demo"></div>
	                                    <button class="btn btn--sm btn--round" onClick='addComment(${board.boardSeq}, ${board.boardTypeSeq});'><spring:message code="read.reply"/></button>
	                                    <a href="<c:url value='/forum/notice/listPage.do'/>">
		                               		<button class="btn btn--round btn--bordered btn-sm btn-secondary"><spring:message code="read.list"/></button>
		                                </a>
                                    </div>
                                </div>
                                <!-- comment reply -->
                            </div>
                        </div>
                        <!-- end .forum_replays -->
                    </div>
                    <!-- end .forum_detail_area -->
                </div>
                <!-- end .col-md-12 -->            
            </div>
            <!-- end .row -->
        </div>
        <!-- end .container -->
    </section>
    <!--================================
            END DASHBOARD AREA
    =================================-->
    <script type="text/javascript">
   $('#trumbowyg-demo').trumbowyg({
       lang: 'kr'
   });
   
  
	// 댓글 작성 기능
    function addComment(boardSeq, boardTypeSeq) {
    	var url = '<%=ctx%>/forum/notice/reply.do';
    	$.ajax({        
    		type : 'POST',
    		url : url,
    		headers : {
    			"Content-Type" : "application/json"
    		},
    		dataType : 'json',
    		data : JSON.stringify ({
    			boardSeq : boardSeq,
    			boardTypeSeq : boardTypeSeq,
    			content: $('#trumbowyg-demo').trumbowyg('html') 
    		}),
    		success : function(result) {
    			if(result) {
    				alert('작성 완료');
    				window.location.reload();
    			}
    			else {
      			alert('작성 실패!');
    			}
    		},
    		error : function(request, status, error) {
    			console.log(error)
    		}
    	});
    }

 	// 댓글 삭제
    function deleteComment(commentSeq) {
    	var url = '<%=ctx%>/forum/notice/deleteComment.do';
    	url += '?commentSeq=' + commentSeq;
    	
    	$.ajax({        
    		type : 'GET',
    		url : url,
    		headers : {
    			"Content-Type" : "application/json"
    		},
    		dataType : 'text',
    		success : function(result) {
    			if(result) {
    				alert('삭제 성공!');
    				window.location.reload();
    			}
    			else {
      			alert('삭제 실패!');
    			}
    		},
    		error : function(request, status, error) {
    			console.log(error)
    		}
    	});
    }
 	
 	// 댓글 수정
    function editComment(commentSeq, content) {
        // 해당 댓글의 내용을 가져와서 수정 폼으로 변경
        var commentContentElement = document.getElementById('content-' + commentSeq);
        var commentContent = commentContentElement.innerHTML;
        

        // 수정 폼으로 변경
        var editForm = document.createElement('div');
        editForm.innerHTML = `
        	<textarea class="edit-comment-textarea" id="edit-comment-textarea"></textarea>
            <button class="btn btn--sm btn--round" onClick="updateComment(` + commentSeq + `)">Update</button>
        `;

        // 기존 내용을 수정 폼으로 교체
        commentContentElement.innerHTML = '';
        commentContentElement.appendChild(editForm);

        // 기존 댓글 내용을 textarea에 설정
        var textarea = editForm.querySelector('.edit-comment-textarea');
        textarea.value = content;
    }
    
 	// 댓글 업데이트
    function updateComment(commentSeq) {
        var url = '<%=ctx%>/forum/notice/updateComment.do';

        $.ajax({        
            type : 'POST',
            url : url,
            headers : {
                "Content-Type" : "application/json"
            },
            data : JSON.stringify ({
                commentSeq : commentSeq,
                content: $('#edit-comment-textarea').val() 
            }),
            success : function(response) {
            	alert('수정 완료');
				window.location.reload();
            },
            error : function(request, status, error) {
            	alert('수정 실패');
                console.log(error)
            }
        });
    }
 	
    //좋아요 
    function thumbUp(boardSeq, boardTypeSeq){
    	console.log(boardSeq);
    	console.log(boardTypeSeq);
    	
    	let url = '<%=ctx%>/forum/notice/thumb-up.do?';
    	url += 'boardSeq=' + boardSeq;
    	url += '&boardTypeSeq=' + boardTypeSeq;
    	

    	$.ajax({    
    		// 타입 (get, post, put 등등)    
    		type : 'GET',           
    		// 요청할 서버url
    		url : url,
    		// 비동기화 여부 (default : true)
    		/* async : true, */
			// Http header
    		headers : {
    			"Content-Type" : "application/json"
    			/* "X-HTTP-Method-Override" : "POST" */
    		},
    		dataType : 'text',
			// 결과 성공 콜백함수 - 비동기통신은 콜백이 항상 있어야한다
    		success : function(result) {
    			/* console.log(result); */
			 if(result == 0){//삭제해도1이기에 구분
	    			$('a#cThumbUpAnchor').removeClass('active');
	    				
	    			} else{
	    				$('a#cThumbUpAnchor').addClass('active');
	    			}
    		},
			// 결과 에러 콜백함수
    		error : function(request, status, error) {
    			console.log(error)
    		}
    	});

    }
    
   //싫어요 기능
   function thumbDown(boardSeq, boardTypeSeq){
    	console.log(boardSeq);
    	console.log(boardTypeSeq);
    	
    	let url = '<%=ctx%>/forum/notice';
    	url += '/' + boardTypeSeq;
    	url += '/' + boardSeq;
    	url += '/thumb-down.do';
    	
    	

    	$.ajax({    
    		// 타입 (get, post, put 등등)    
    		type : 'GET',           
    		// 요청할 서버url
    		url : url,
			// Http header
    		headers : {
    			"Content-Type" : "application/json"
    		},
    		dataType : 'text',
			// 결과 성공 콜백함수 - 비동기통신은 콜백이 항상 있어야한다
    		success : function(result) {
			 if(result == 0){ //삭제해도 1이니까  구분
	    			$('a#cThumbDownAnchor').removeClass('active');
	    				
	    			} else{
	    				$('a#cThumbDownAnchor').addClass('active');
	    			}
    		},
			// 결과 에러 콜백함수
    		error : function(request, status, error) {
    			console.log(error)
    		}
    	});

    }
	</script>
