<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 2 - c:set" />
<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>

<h2>Ejercicio 2: guardado e impresi&oacute;n de datos con c:set</h2>
<form action="procesar.jsp" method="post">
  <table class="datos">
    <tr><th width="40%"><label for="nombre">Ingrese su nombre</label></th>
        <td><input class="texto" type="text" name="nombre" id="nombre" /></td></tr>
    <tr><th><label for="apellido1">Ingrese su primer apellido</label></th>
        <td><input class="texto" type="text" name="apellido1" id="apellido1" /></td></tr>
    <tr><th><label for="apellido2">Ingrese su segundo apellido</label></th>
        <td><input class="texto" type="text" name="apellido2" id="apellido2" /></td></tr>
    <tr><td colspan="2" align="center">
        <input class="boton" type="submit" value="Enviar" />
        &nbsp;&nbsp;<a href="ambitos.jsp">Ver uso de c:set en distintos &aacute;mbitos</a></td></tr>
  </table>
</form>

<p><a href="<c:url value='/v2006/index.jsp'/>">Volver</a></p>
<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
