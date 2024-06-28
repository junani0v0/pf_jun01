<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "com.portfolio.www.message.MessageEnum" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
String ctx = request.getContextPath();
%>

<style>

.empty-space {
    display: inline-block;
    width: 40px; /* 적절한 너비 설정 */
}
.empty-space2 {
    display: inline-block;
    width: 50px; /* 적절한 너비 설정 */
}
a {
    text-decoration: none; /* 밑줄 제거 */
    color: black; /* 텍스트 색상을 검정으로 지정 */
}
</style>
	<!--================================
            START LOGIN AREA
    =================================-->
    <section class="section--padding2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="">
                        <div class="modules__content">
                            <div class="withdraw_module withdraw_history">
                                <div class="withdraw_table_header">
                                    <h3><spring:message code="list"/></h3>
                                </div>
                                <div class="table-responsive">
                                    <table class="table withdraw__table">
                                        <thead>
                                            <tr>
                                            	<th><spring:message code="list.no"/></th>
                                                <th><spring:message code="list.title"/></th>
                                                <th></th>
                                                <th><spring:message code="list.date"/></th>
                                                <th><spring:message code="list.writer"/></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <!-- 리스트 시작 -->
                                            <c:forEach items="${list}" var="i" begin="0" step="1" varStatus="status">
	                                        	<tr>
	                                        		<td>${i.boardSeq}</td>
	                                        		<td>
	                                        			<a href="<c:url value='/forum/notice/readPage.do?boardSeq=${i.boardSeq}&boardTypeSeq=${i.boardTypeSeq}'/>" >
	                                                		${i.title}
	                                                	</a>
	                                       			</td>
	                                       			<td>
	                                       				<!-- 첨부파일 여부 표시 -->
	                                                	<c:if test="${i.attachCnt > 0}">
	                                                		<span class="lnr lnr-paperclip" style="color:#000000"></span>&nbsp${i.attachCnt}
	                                                		<!-- 댓글이 있는 경우 구분자 표시 -->
		                                                	<c:if test="${i.commentCnt > 0}">
		                                                		&nbsp;&nbsp;
		                                                	</c:if>
	                                                	</c:if>
	                                                	<!-- 첨부 파일이 없는 경우 공백-->
													    <c:if test="${i.attachCnt <= 0}">
													        <span class="empty-space">&nbsp;</span>
													    </c:if>
	                                                	<!-- 댓글 표시 -->
	                                       				<c:if test="${i.commentCnt > 0}" > 
	                                       					<span class="lnr lnr-bubble" style="color:#7347c1"></span>&nbsp${i.commentCnt}
	                                       					<!-- 댓글이 있는 경우 구분자 표시 -->
		                                                	<c:if test="${i.likeCnt > 0}">
		                                                		&nbsp;&nbsp;
		                                                	</c:if>
														</c:if>
														<!-- 댓글 없는 경우 공백 -->
													    <c:if test="${i.commentCnt <= 0}">
													        <span class="empty-space">&nbsp;</span>
													    </c:if>
	                                       				<!-- 종아요 표시 -->
	                                                	<c:if test="${i.likeCnt > 0}">
	                                                		<span class="fa-regular fa-thumbs-up" style="color:#EEDD55"></span>&nbsp${i.likeCnt}
	                                                		<!-- 댓글이 있는 경우 구분자 표시 -->
		                                                	<c:if test="${i.disLikeCnt > 0}">
		                                                		&nbsp;&nbsp;
		                                                	</c:if>
	                                                	</c:if>
	                                                	<!-- 좋아요 없는 경우 공백 -->
													    <c:if test="${i.likeCnt <= 0}">
													        <span class="empty-space2">&nbsp;</span>
													    </c:if>
	                                                	<!-- 싫어요 표시 -->
	                                       				<c:if test="${i.disLikeCnt > 0}" > 
	                                       					<span class="fa-regular fa-thumbs-down" style="color:#91191a"></span>&nbsp${i.disLikeCnt}
														</c:if>
													</td>
													<!-- 날짜 포맷팅 -->
											        <fmt:parseDate value="${i.regDtm}" var="regDate" pattern="yyyyMMddHHmmss" />
											        <td><fmt:formatDate value="${regDate}" pattern="yyyy/MM/dd HH:mm:ss" /></td>
	                                        		<td>${i.memberId}</td>
	                                        	</tr>
	                                        </c:forEach>
                                       	<!-- 리스트 끝 -->
                                        </tbody>
                                    </table>
                                    <div style="display: inline-block; margin: 0 5px; float: right; padding-right:10px;">
		                                <a href="<c:url value='/forum/notice/writePage.do'/>">
		                                	<button class="btn btn--round btn--bordered btn-sm btn-secondary">
		                                		<spring:message code="list.write"/>
		                                	</button>
		                                </a>
		                            </div>
                                    <!-- 페이징 시작 -->
									<div class="pagination-area" style="padding-top: 45px;">
									    <nav class="navigation pagination" role="navigation">
									        <div class="nav-links">
									        	<!-- 이전 페이지 -->
									            <c:if test="${hasPrev}">
									                <a class="prev page-numbers" href="<c:url value='/forum/notice/listPage.do?page=${startPage - countPage}&size=10'/>">
									                    <span class="lnr lnr-arrow-left"></span>
									                </a>
									            </c:if>
												 <!-- 페이지 링크 -->
									            <c:forEach begin="${startPage}" end="${endPage}" var="pageNum">
									                <c:if test="${pageNum eq currentPage}">
									                    <a class="page-numbers current" href="#">
									                        ${pageNum}
									                    </a>
									                </c:if>
									                <c:if test="${pageNum ne currentPage}">
									                    <a class="page-numbers" href="<c:url value='/forum/notice/listPage.do?page=${pageNum}&size=10'/>">
									                        ${pageNum}
									                    </a>
									                </c:if>
									            </c:forEach>
												 <!-- 다음 페이지 -->
									            <c:if test="${hasNext}">
									                <a class="next page-numbers" href="<c:url value='/forum/notice/listPage.do?page=${startPage + countPage}&size=10'/>">
									                    <span class="lnr lnr-arrow-right"></span>
									                </a>
									            </c:if>
									        </div>
									    </nav>
									</div>
								 	<!-- 페이징 끝 -->
                                </div>
                            </div>
                        </div>
                    </div>
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
    
    
   
