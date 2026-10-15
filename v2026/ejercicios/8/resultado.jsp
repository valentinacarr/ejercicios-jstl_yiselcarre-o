<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 8 - Resultado" />
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>

<h1 class="h4">Sus tokens</h1>
<c:choose>
  <c:when test="${empty param.texto or empty param.delim}">
    <div class="alert alert-warning" role="alert">Debes escribir un texto y un delimitador.</div>
  </c:when>
  <c:otherwise>
    <ol class="list-group list-group-numbered" style="max-width: 28rem">
      <c:forTokens items="${param.texto}" delims="${param.delim}" var="token">
        <li class="list-group-item"><c:out value="${token}" /></li>
      </c:forTokens>
    </ol>
  </c:otherwise>
</c:choose>
<a class="btn btn-outline-secondary mt-3" href="index.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
