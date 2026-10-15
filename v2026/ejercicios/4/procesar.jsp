<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />

<%-- Validaciones antes de escribir HTML: c:redirect termina la pagina --%>
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

<c:set var="titulo" value="Ejercicio 4 - Resultado" />
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>
<h1 class="h4">Imprimiendo par&aacute;metros con JSTL</h1>
<table class="table table-bordered" style="max-width: 32rem">
  <tbody>
    <tr><th scope="row">Nombre</th><td><c:out value="${param.nombre}" /></td></tr>
    <tr><th scope="row">Primer apellido</th><td><c:out value="${param.apellido1}" /></td></tr>
    <tr><th scope="row">Segundo apellido</th><td><c:out value="${param.apellido2}" /></td></tr>
  </tbody>
</table>
<a class="btn btn-outline-secondary" href="index.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
