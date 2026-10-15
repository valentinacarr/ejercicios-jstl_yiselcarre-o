<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Inicio" />
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>

<h1 class="h3 mb-1">Ejercicios JSTL</h1>
<p class="text-body-secondary">Estilo moderno: HTML5, Bootstrap 5.3 y tema claro/oscuro (aqu&iacute; adaptado a JSTL 1.2 para correr junto a la versi&oacute;n 2006).</p>

<div class="list-group">
  <a class="list-group-item list-group-item-action" href="<c:url value='/v2026/ejercicios/1/index.jsp'/>"><strong>Ejercicio 1.</strong> Impresi&oacute;n de datos &mdash; <code>c:out</code></a>
  <a class="list-group-item list-group-item-action" href="<c:url value='/v2026/ejercicios/2/index.jsp'/>"><strong>Ejercicio 2.</strong> Captura de datos de una persona &mdash; <code>param</code>, <code>c:set</code>, <code>c:out</code></a>
  <a class="list-group-item list-group-item-action" href="<c:url value='/v2026/ejercicios/3/index.jsp'/>"><strong>Ejercicio 3.</strong> &Aacute;mbitos de las variables &mdash; <code>c:set</code>, <code>c:remove</code></a>
  <a class="list-group-item list-group-item-action" href="<c:url value='/v2026/ejercicios/4/index.jsp'/>"><strong>Ejercicio 4.</strong> Condicional &mdash; <code>c:if</code>, <code>c:redirect</code></a>
  <a class="list-group-item list-group-item-action" href="<c:url value='/v2026/ejercicios/5/index.jsp'/>"><strong>Ejercicio 5.</strong> Condiciones m&uacute;ltiples &mdash; <code>c:choose</code>, <code>c:when</code>, <code>c:otherwise</code></a>
  <a class="list-group-item list-group-item-action" href="<c:url value='/v2026/ejercicios/6/index.jsp'/>"><strong>Ejercicio 6.</strong> Captura de excepciones &mdash; <code>c:catch</code></a>
  <a class="list-group-item list-group-item-action" href="<c:url value='/v2026/ejercicios/7/index.jsp'/>"><strong>Ejercicio 7.</strong> Ciclos &mdash; <code>c:forEach</code></a>
  <a class="list-group-item list-group-item-action" href="<c:url value='/v2026/ejercicios/8/index.jsp'/>"><strong>Ejercicio 8.</strong> Cadenas delimitadas &mdash; <code>c:forTokens</code></a>
  <a class="list-group-item list-group-item-action" href="<c:url value='/v2026/ejercicios/9/index.jsp'/>"><strong>Ejercicio 9.</strong> Base de datos &mdash; <code>sql:update</code>, <code>sql:query</code></a>
</div>

<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
