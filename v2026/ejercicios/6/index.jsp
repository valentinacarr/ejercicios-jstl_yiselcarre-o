<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 6 - c:catch" />
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>

<h1 class="h4">Ejercicio 6. Captura de excepciones con c:catch</h1>
<p>Si algo falla dentro de <code>c:catch</code>, la p&aacute;gina sigue funcionando y la excepci&oacute;n queda en la variable de <code>var</code>.
Aqu&iacute; no hay scriptlets (est&aacute;n desactivados en <code>web.xml</code>): la conversi&oacute;n la hace <code>fmt:parseNumber</code>.</p>

<c:catch var="error01">
  <fmt:parseNumber var="valor" value="${param.parametro}" integerOnly="true" />
</c:catch>

<c:choose>
  <c:when test="${not empty error01}">
    <div class="alert alert-danger" role="alert"><strong>Se produjo un error:</strong> <c:out value="${error01.message}" /></div>
  </c:when>
  <c:when test="${empty param.parametro}">
    <div class="alert alert-warning" role="alert">No se envi&oacute; el par&aacute;metro.</div>
  </c:when>
  <c:otherwise>
    <div class="alert alert-info" role="alert"><strong>Valor recibido:</strong> <c:out value="${valor}" /></div>
  </c:otherwise>
</c:choose>

<div class="d-flex flex-wrap gap-2">
  <form action="index.jsp" method="get">
    <input type="hidden" name="parametro" value="prueba">
    <button type="submit" class="btn btn-outline-dark">Enviar 'prueba'</button>
  </form>
  <form action="index.jsp" method="get">
    <input type="hidden" name="parametro" value="1234">
    <button type="submit" class="btn btn-outline-success">Enviar '1234'</button>
  </form>
  <form action="index.jsp" method="get">
    <button type="submit" class="btn btn-outline-danger">No enviar el par&aacute;metro</button>
  </form>
</div>
<a class="btn btn-outline-secondary mt-3" href="<c:url value='/v2026/index.jsp'/>">Volver</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
