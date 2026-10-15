<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- Los formularios POST llegan en ISO-8859-1 si no se indica lo contrario: hay que fijar la codificacion ANTES de leer los parametros --%>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 2 - Resultado" />

<%-- c:set guarda cada dato en una variable (aqui, en la sesion) --%>
<c:set var="nombre"    value="${param.nombre}"    scope="session" />
<c:set var="apellido1" value="${param.apellido1}" scope="session" />
<c:set var="apellido2" value="${param.apellido2}" scope="session" />
<c:set var="nombreCompleto" value="${nombre} ${apellido1} ${apellido2}" />

<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>
<h2>Imprimiendo par&aacute;metros con JSTL</h2>
<table class="datos">
  <tr><th width="40%">Nombre</th><td><c:out value="${nombre}" /></td></tr>
  <tr><th>Primer apellido</th><td><c:out value="${apellido1}" /></td></tr>
  <tr><th>Segundo apellido</th><td><c:out value="${apellido2}" /></td></tr>
  <tr><th>Nombre completo (variable creada con c:set)</th><td><c:out value="${nombreCompleto}" /></td></tr>
</table>
<p><a href="index.jsp">Volver</a></p>
<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
