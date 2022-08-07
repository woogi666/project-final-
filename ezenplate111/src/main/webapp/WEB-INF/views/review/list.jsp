<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/nav.jsp"/>
<table class="table">
  <thead>
  <tr>
    <th>Column 1 Heading</th>
    <th>Column 2 Heading</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>Row 1: Col 1</td>
    <td>Row 1: Col 2</td>
    <td><img src="/upload/${fn:replace(mdto.fvo.saveDir, '\\', '/') }/${mdto.fvo.uuid }_th_${mdto.fvo.fileName }"></td>
  </tr>
  </tbody>
</table>

<jsp:include page="../common/footer.jsp"/>