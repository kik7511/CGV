<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


	<div style="margin-bottom: 10px;">
		<c:out value="total: ${vo.totalRows}"></c:out>
	</div>
	<table class="table table-responsive table-hover table-sm" style="text-align: center;" id="maintable">
		<tr class="table-dark">
			<th scope="col">
				<input type="checkbox" class="form-check-input" onclick="selectAll(this);" name=check>
			</th>
			<th scope="col">NO</th>
			<th scope="col">이름</th>
			<th scope="col">성별</th>
			<th scope="col">생년월일</th>
			<th scope="col">아이디</th>
			<th scope="col">연락처</th>
			<th scope="col">이메일</th>
			<th scope="col">마케팅 동의여부</th>
		</tr>
		<tbody id="cursor">
			<c:choose>
				<c:when test="${fn:length(list) eq 0}">
					<tr>
						<td colspan="9">
							there is no data.
						</td>
					</tr>					
				</c:when>
				<c:otherwise>	
					<c:forEach items="${list}" var="list" varStatus="status">
						<tr onclick="javascript:goForm(<c:out value="${list.ifMmSeq}" />)">
							<td onclick="event.cancelBubble=true">
								<input type="checkbox" class="form-check-input" name=check>
							</td>
							<th scope="col">${list.ifMmSeq}</th>
							<td>${list.ifMmName}</td>
							<td>
								<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
									<c:if test="${list.ifMmGender eq listGender.ccSeq}"><c:out value="${listGender.ccCodeName}"/></c:if>
								</c:forEach>
							</td>
							<td>
								<fmt:formatDate value="${list.ifMmDob}" pattern="yyyy.MM.dd" />
							</td>
							<td>${list.ifMmId}</td>
							<td>${list.ifMmPhone}</td>
							<td>${list.ifMmEmail}@
								<c:forEach items="${listCodeEmail}" var="listEmail" varStatus="statusEmail">
									<c:if test="${list.ifMmEmailAddress eq listEmail.ccSeq}"><c:out value="${listEmail.ccCodeName}"/></c:if>
								</c:forEach>
							</td>
							<td>
								<c:forEach items="${listCodeMarketing}" var="listMarketing" varStatus="statusMarketing">
									<c:if test="${list.ifMmMarketing eq listMarketing.ccSeq}"><c:out value="${listMarketing.ccCodeName}"/></c:if>
								</c:forEach>
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	<!-- pagination s -->
	<%@include file="../../../infra/common/xdmin/pagination.jsp"%>
	<!-- pagination e -->
	
	<script>
	goForm = function(keyValue) {
		seq.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		setLita();
	}
	</script>