<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 1 - c:out" />
<c:set var="palabra" value="jstl" />
<c:set var="textoHtml"><b>negrita</b> &amp; mas</c:set>
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>

<h1 class="h4">Ejercicio 1. Impresi&oacute;n de datos con c:out</h1>
<p><code>c:out</code> escribe el valor de una expresi&oacute;n y, por defecto, escapa el HTML para evitar ataques XSS.</p>

<table class="table table-bordered align-middle">
  <tbody>
    <tr><th scope="row" class="w-50">Cadena de caracteres</th><td><c:out value="1+2+3" /></td></tr>
    <tr><th scope="row">Suma de valores (EL)</th><td><c:out value="${1+2+3}" /></td></tr>
    <tr><th scope="row">Comparaci&oacute;n (EL): 5 &gt; 3</th><td><c:out value="${5 gt 3}" /></td></tr>
    <tr><th scope="row">M&eacute;todo de String (EL): <code>palabra.toUpperCase()</code></th><td><c:out value="${palabra.toUpperCase()}" /></td></tr>
    <tr><th scope="row">Texto con HTML (escapeXml por defecto)</th><td><c:out value="${textoHtml}" /></td></tr>
    <tr><th scope="row">Valor por defecto (par&aacute;metro inexistente)</th><td><c:out value="${param.nada}" default="(sin valor)" /></td></tr>
  </tbody>
</table>

<a class="btn btn-outline-secondary" href="<c:url value='/v2026/index.jsp'/>">Volver</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
