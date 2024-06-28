<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import = "com.portfolio.www.message.MessageEnum" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/common/scripts.jsp" %>
<link rel="stylesheet" href="<%=ctx%>/assest/template/css/trumbowyg.min.css">
<script src="<%=ctx%>/assest/template/js/vendor/trumbowyg.min.js"></script>
<script src="<%=ctx%>/assest/template/js/vendor/trumbowyg/ko.js"></script>
<script type="text/javascript">
 $('#trumbowyg-demo').trumbowyg({
     lang: 'kr'
 });
</script>

    <!--================================
            START DASHBOARD AREA
    =================================-->
    <section class="support_threads_area section--padding2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="question-form cardify p-4">
                        <form action="<%=ctx%>/forum/notice/edit.do?boardSeq=${board.boardSeq}&boardTypeSeq=${board.boardTypeSeq}" method ="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label><spring:message code="write.title"/></label>
                                <input type="text" name="title" value="${board.title}" required>
                            </div>
                            <div class="form-group">
                                <label><spring:message code="write.co"/></label>
                                <div id="trumbowyg-demo">${board.content}</div>
                            </div>
                         	<!-- 첨부되어 있는 파일 -->
                            <c:forEach items="${attFile}" var="attFile" varStatus="status">
	                            <c:if test="${attFile != null}">
									<a href='<%=ctx%>/forum/download.do?attachSeq=${attFile.attachSeq}'>
										${attFile.orgFileNm} (${attFile.fileSize} byte)
									</a>
									<button class="btn btn--sm btn--round" onClick='deleteAtt(${attFile.attachSeq})'><spring:message code="read.delete"/></button>
									<br/>
								</c:if>
							</c:forEach>
                            <!-- 첨부파일 추가 -->
                            <c:choose>
							    <c:when test="${fn:length(attFile) < 3}">
							        <!-- attFile가 0~2개인 경우에만 attachments 클래스 부분을 보여줌 -->
							        <c:forEach varStatus="status" begin="1" end="${3 - fn:length(attFile)}">
								        <div class="form-group attachments">
								       		<div class="attachments">
									            <label><spring:message code="write.attach"/></label>
									            <label>
									                <span class="lnr lnr-paperclip"></span> <spring:message code="write.file"/>
									                <span><spring:message code="write.drop"/></span>
									                <input type="file" name="attFile" style="display:inline-block;">
									            </label>
								            </div>
								        </div>
							         </c:forEach>
							    </c:when>
							    <c:otherwise>
							        <!-- attFile가 3개인 경우에는 attachments 클래스 부분을 보여주지 않음 -->
							    </c:otherwise>
							</c:choose>
                            
                            <div class="form-group">
                                <button type="submit" class="btn btn--md btn-primary"><spring:message code="write.submit"/></button>
                            	<a href="<c:url value='/forum/notice/listPage.do'/>" class="btn btn--md btn-light"><spring:message code="write.cancel"/></a>
                            </div>
                        </form>
                    </div><!-- ends: .question-form -->
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
   	<!--//////////////////// JS GOES HERE ////////////////-->

	<script type="text/javascript">
	
    //첨부파일 삭제
    function deleteAtt(attachSeq){
        if (attachSeq == null || attachSeq === "") {
            console.log("Invalid attachSeq");
            return;
        }

        let url = '<%=ctx%>/forum/deleteAttachInfo.do';
        url += '?attachSeq=' + attachSeq;

        $.ajax({    
            type : 'GET',           
            url : url,
            headers : {
                "Content-Type" : "application/json"
            },
            dataType : 'text',
            success : function(result) {
                console.log("Ajax 요청 성공: ", result);
                window.location.reload();
            },
            error : function(request, status, error) {
                console.log("Ajax 요청 실패: ", error);
            }
        }); 
    }
    
    </script>