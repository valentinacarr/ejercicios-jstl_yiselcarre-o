<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 1 - c:out" />
<c:set var="textoHtml"><b>negrita</b> &amp; mas</c:set>
<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>

<h2>Ejercicio 1: impresi&oacute;n de datos con c:out</h2>
<p>La etiqueta <code>c:out</code> muestra el resultado de una expresi&oacute;n (equivale a <code>&lt;%= %&gt;</code>)
y por defecto escapa los caracteres especiales del HTML.</p>

<table class="datos">
  <tr><th width="50%">Cadena de caracteres</th><td><c:out value="1+2+3" /></td></tr>
  <tr><th>Suma de valores (lenguaje EL)</th><td><c:out value="${1+2+3}" /></td></tr>
  <tr><th>Texto con HTML (escapeXml por defecto)</th><td><c:out value="${textoHtml}" /></td></tr>
  <tr><th>Mismo texto con escapeXml="false"</th><td><c:out value="${textoHtml}" escapeXml="false" /></td></tr>
  <tr><th>Valor por defecto (par&aacute;metro inexistente)</th><td><c:out value="${param.nada}" default="(sin valor)" /></td></tr>
</table>

<p><a href="<c:url value='/v2006/index.jsp'/>">Volver</a></p>

<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
