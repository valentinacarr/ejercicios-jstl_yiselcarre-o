<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 7 - Resultado" />
<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>

<h2>Sus tokens</h2>
<c:choose>
  <c:when test="${empty param.texto or empty param.delim}">
    <div class="error">Debes escribir un texto y un delimitador.</div>
  </c:when>
  <c:otherwise>
    <table class="datos">
      <tr><th width="60">#</th><th>Token</th></tr>
      <c:forTokens items="${param.texto}" delims="${param.delim}" var="token" varStatus="e">
        <tr><td><c:out value="${e.count}" /></td><td><c:out value="${token}" /></td></tr>
      </c:forTokens>
    </table>
  </c:otherwise>
</c:choose>
<p><a href="index.jsp">Volver</a></p>
<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
