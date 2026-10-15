<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 2 - Resultado" />
<%-- c:set crea una variable a partir de los parametros del formulario --%>
<c:set var="nombreCompleto" value="${param.nombre} ${param.apellido1} ${param.apellido2}" />
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>

<h1 class="h4">Imprimiendo par&aacute;metros con JSTL</h1>
<table class="table table-bordered" style="max-width: 32rem">
  <tbody>
    <tr><th scope="row">Nombre</th><td><c:out value="${param.nombre}" /></td></tr>
    <tr><th scope="row">Primer apellido</th><td><c:out value="${param.apellido1}" /></td></tr>
    <tr><th scope="row">Segundo apellido</th><td><c:out value="${param.apellido2}" /></td></tr>
    <tr><th scope="row">Nombre completo (c:set)</th><td><c:out value="${nombreCompleto}" /></td></tr>
  </tbody>
</table>
<a class="btn btn-outline-secondary" href="index.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
