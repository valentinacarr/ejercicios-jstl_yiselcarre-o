<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 3 - c:set" />

<%-- El texto va en el cuerpo de la etiqueta; scope indica donde vive la variable --%>
<c:set var="variableDePagina" scope="page">Esta informaci&oacute;n se guarda en la p&aacute;gina</c:set>
<c:set var="variableDeSesion" scope="session">Esta informaci&oacute;n se guarda en la sesi&oacute;n</c:set>
<c:set var="variableDeAplicacion" scope="application">Esta informaci&oacute;n se guarda en la aplicaci&oacute;n</c:set>

<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>
<h1 class="h4">Ejercicio 3. Uso de la etiqueta c:set</h1>
<table class="table table-bordered" style="max-width: 40rem">
  <tbody>
    <tr><th scope="row">page</th><td>${pageScope.variableDePagina}</td></tr>
    <tr><th scope="row">session</th><td>${sessionScope.variableDeSesion}</td></tr>
    <tr><th scope="row">application</th><td>${applicationScope.variableDeAplicacion}</td></tr>
  </tbody>
</table>
<p class="small text-body-secondary">Las variables de <em>application</em> las ven todos los usuarios, as&iacute; que se borran con <code>c:remove</code>.</p>
<c:remove var="variableDeAplicacion" scope="application" />
<a class="btn btn-outline-secondary" href="<c:url value='/v2026/index.jsp'/>">Volver</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
