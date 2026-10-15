<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:requestEncoding value="UTF-8" />

<%-- Validaciones ANTES de escribir HTML: c:redirect termina la pagina --%>
<c:if test="${empty fn:trim(param.nombre)}">
  <c:redirect url="index.jsp">
    <c:param name="error" value="El nombre es obligatorio" />
  </c:redirect>
</c:if>
<c:if test="${empty fn:trim(param.apellido1)}">
  <c:redirect url="index.jsp">
    <c:param name="error" value="El primer apellido es obligatorio" />
  </c:redirect>
</c:if>

<c:set var="titulo" value="Ejercicio 3 - Resultado" />
<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>
<h2>Imprimiendo par&aacute;metros con JSTL</h2>
<table class="datos">
  <tr><th width="40%">Nombre</th><td><c:out value="${param.nombre}" /></td></tr>
  <tr><th>Primer apellido</th><td><c:out value="${param.apellido1}" /></td></tr>
  <tr><th>Segundo apellido</th><td><c:out value="${param.apellido2}" /></td></tr>
</table>
<p><a href="index.jsp">Volver</a></p>
<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
