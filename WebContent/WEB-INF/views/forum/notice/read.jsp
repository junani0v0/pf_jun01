<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String ctx = request.getContextPath();
%>
	<link rel="stylesheet" href="<%=ctx%>/assest/template/css/trumbowyg.min.css">
    <script src="<%=ctx%>/assest/template/js/vendor/trumbowyg.min.js"></script>
    <script src="<%=ctx%>/assest/template/js/vendor/trumbowyg/ko.js"></script>
    <script type="text/javascript">
	    $('#trumbowyg-demo').trumbowyg({
	        lang: 'kr'
	    });
	    
	// 댓글 작성 기능
<%--     function addComment(boardSeq, boardTypeSeq) {
    	var url = '<%=ctx%>/forum/notice/reply.do';
    	$.ajax({        
    		type : 'POST',
    		url : url,
    		headers : {
    			"Content-Type" : "application/json"
    		},
    		dataType : 'JSON',
    		data : JSON.stringify ({
    			boardSeq : boardSeq,
    			boardTypeSeq : boardTypeSeq,
    			content: $('#trumbowyg-demo').trumbowyg('html') 
    		}),
    		success : function(result) {
    			if(result) {
    				location.href='<%=ctx%>/forum/notice/readPage.do?boardSeq='+boardSeq+'&boardTypeSeq='+boardTypeSeq
    			}
    			else {
      			alert('실패!');
    			}
    		},
    		error : function(request, status, error) {
    			console.log(error)
    		}
    	});
    } --%>
	
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
	</script>
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

                                <div class="vote">
                                    <a href="#" id='cThumbUpAnchor' onClick="javascript:thumbUp(${board.boardSeq}, ${board.boardTypeSeq});" <c:if test ='${liked ==1}'>class = "active"</c:if>>
                                        <span class="lnr lnr-thumbs-up"></span>
                                    </a>
                                    <a href="#" id='cThumbDownAnchor' onClick="javascript:thumbDown(${board.boardSeq}, ${board.boardTypeSeq});"<c:if test ='${disliked ==1}'>class = "active"</c:if>>
                                        <span class="lnr lnr-thumbs-down"></span>
                                    </a>
                                </div>
                                <!-- end .vote -->
                            </div>
                            <!-- 제목 끝 -->
                            <div class="suppot_query_tag">
                                <img class="poster_avatar" src="<%=ctx%>/assest/template/images/support_avat1.png" alt="Support Avatar">${board.memberId}
                                <span>${board.regDtm}</span>
                            </div>
                            <p style="margin-bottom: 0; margin-top: 19px;">${board.content}</p>
                            
                            <br/><br/><br/><br/>
                            <!-- 메뉴가기 -->
                            <div style="display: inline-block; margin: 0 5px; float: right; padding-right:10px;">
                            	<a href="<c:url value='/forum/notice/listPage.do'/>">
                               		<button class="btn btn--round btn--bordered btn-sm btn-secondary">목록</button>
                                </a>
                            </div>
                            <!-- 수정하기 -->
							<div style="display: inline-block; margin: 0 5px; float: right; padding-right:10px;">
                                <a href="<c:url value='/forum/notice/editPage.do?boardSeq=${board.boardSeq}&boardTypeSeq=${board.boardTypeSeq}'/>">
                                	<button class="btn btn--round btn--bordered btn-sm btn-secondary">수정</button>
                                </a>
                            </div>
                            <!-- 수정하기 끝-->
                            <br/>
                            <!-- 첨부파일 일괄다운로드-->
                            <a href="<c:url value='/forum/downloadAllZip.do?boardSeq=${board.boardSeq}&boardTypeSeq=${board.boardTypeSeq}'/>">
                            
                               	<button class="btn btn--round btn--bordered btn-sm btn-secondary">일괄 다운로드</button>
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
                                <h4>${commentCnt} Replies</h4>
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
							                  <p>${comment.regDtm}</p>
							              </div>
							              <!-- end .pull-left -->
							            <div class="button-container" style="text-align: right;">
										    <button class="btn btn--round btn--bordered btn-sm btn-secondary" onClick='editComment(${comment.commentSeq}, "${comment.content}")'>수정</button>
										    <button class="btn btn--round btn--bordered btn-sm btn-secondary" onClick='deleteComment(${comment.commentSeq})'>삭제</button>
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
                                <h4>Leave a comment</h4>
                                <!-- comment reply -->
                                <div class="media comment-form support__comment">
                                    <div class="media-left">
                                        <a href="#">
                                            <img class="media-object" src="<%=ctx%>/assest/template/images/m7.png" alt="Commentator Avatar">
                                        </a>
                                    </div>
                                    <div class="media-body comment-reply-form">
	                                    <div id="trumbowyg-demo"></div>
	                                    <button class="btn btn--sm btn--round" onClick='addComment(${board.boardSeq}, ${board.boardTypeSeq});'>Post Comment</button>
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