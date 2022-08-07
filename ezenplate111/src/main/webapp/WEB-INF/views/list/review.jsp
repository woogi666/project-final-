<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/nav.jsp"/>

<table calss="table">
<thead>
	<tr>
	<td></td>
	</tr>
</thead>
<tbody>
<c:forEach items="${profile }" var="p">
<c:forEach items="${list }" var="i">
<c:forEach items="${getphoto }" var="g">
	<tr>
	
	<td>${g.uuid }</td>
	<td>${p.email }</td>
	<td>${i.sno }</td>
	<td>${i.content }</td>
	<td>${i.writer }</td>
	
	</tr>
	</c:forEach>
</c:forEach>
</c:forEach>
</tbody>

</table>
<jsp:include page="../common/footer.jsp"/>