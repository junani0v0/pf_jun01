<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/common/scripts.jsp" %>
<link rel="stylesheet" href="<%=ctx%>/assest/template/css/trumbowyg.min.css">
<script src="<%=ctx%>/assest/template/js/vendor/trumbowyg.min.js"></script>
<script src="<%=ctx%>/assest/template/js/vendor/trumbowyg/ko.js"></script>
<style>
input[type=file]::file-selector-button {
  width: 150px;
  height:Auto;
  background: #fff;
  border: 1px solid rgb(77,77,77);
  border-radius: 10px;
  cursor: pointer;
  &:hover {
    background: rgb(77,77,77);
    color: #fff;
  }
}
</style>
    <!--================================
            START DASHBOARD AREA
    =================================-->
    <section class="support_threads_area section--padding2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="question-form cardify p-4">
                        <form action="<%=ctx%>/forum/notice/write.do" method ="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label><spring:message code="write.title"/></label>
                                <input type="text" placeholder="Enter title here"  name="title" required>
                            </div>
                            <div class="form-group">
                                <label><spring:message code="write.co"/></label>
                                <div id="trumbowyg-demo"></div>
                            </div>
                            <div class="form-group">
                                <div class="attachments">
                                    <label><spring:message code="write.attach"/></label>
                                    <label>
                                        <span class="lnr lnr-paperclip"></span> <spring:message code="write.file"/>
                                        <span><spring:message code="write.drop"/></span>
                                        <input type="file" name ="attFile" style="border: none">
                                    </label>
                                </div>
                                <div class="attachments">
                                    <label><spring:message code="write.attach"/></label>
                                    <label>
                                        <span class="lnr lnr-paperclip"></span> <spring:message code="write.file"/>
                                        <span><spring:message code="write.drop"/></span>
                                        <input type="file" name ="attFile" style="border: none">
                                    </label>
                                </div>
                                <div class="attachments">
	                                 <label><spring:message code="write.attach"/></label>
	                                 <label>
	                                     <span class="lnr lnr-paperclip"></span> <spring:message code="write.file"/>
	                                     <span><spring:message code="write.drop"/></span>
	                                     <input type="file" name ="attFile" style="border: none">
	                                 </label>
                              	</div>
                              </div>	
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

    <script>
    
    <!-- 청부파일 용량 유효성 검사 -->
	document.addEventListener("DOMContentLoaded", function() {
	    var fileInputs = document.querySelectorAll('input[type=file]');
	    
	    for (var i = 0; i < fileInputs.length; i++) {
	        fileInputs[i].addEventListener('change', function() {
	            var maxFileSize = 10 * 1024 * 1024; // 10MB
	            var file = this.files[0];
	            
	            if (file && file.size > maxFileSize) {
	                alert('파일 크기가 너무 큽니다. 최대 10MB까지 업로드 가능합니다.');
	                this.value = ''; // 업로드한 파일 초기화
	            }
	        });
	    }
	});
	
	</script>
    
    