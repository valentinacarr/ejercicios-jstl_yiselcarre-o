<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 2 - Ambitos de c:set" />

<%-- El texto va en el cuerpo de la etiqueta y scope indica donde vive la variable --%>
<c:set var="variableDePagina" scope="page">Esta informaci&oacute;n se guarda en la p&aacute;gina</c:set>
<c:set var="variableDeSesion" scope="session">Esta informaci&oacute;n se guarda en la sesi&oacute;n</c:set>
<c:set var="variableDeAplicacion" scope="application">Esta informaci&oacute;n se guarda en la aplicaci&oacute;n</c:set>

<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>
<h2>Uso de la etiqueta c:set</h2>
<table class="datos">
  <tr><th width="25%">page</th><td>${pageScope.variableDePagina}</td></tr>
  <tr><th>session</th><td>${sessionScope.variableDeSesion}</td></tr>
  <tr><th>application</th><td>${applicationScope.variableDeAplicacion}</td></tr>
</table>
<p class="nota">Las variables de <em>application</em> las ven todos los usuarios; por eso se eliminan abajo con <code>c:remove</code>.</p>
<c:remove var="variableDeAplicacion" scope="application" />
<p><a href="index.jsp">Volver</a></p>
<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
