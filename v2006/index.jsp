<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Inicio" />
<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>

<h2>Ejercicios JSTL</h2>
<p>Practica con la <em>JSP Standard Tag Library</em> tal como se hacia en 2006: JSP 2.0, JSTL 1.1,
XHTML 1.0 y una hoja de estilos propia (todavia no existia Bootstrap).</p>

<table class="datos">
  <tr><th width="30">#</th><th>Ejercicio</th><th>Etiquetas</th></tr>
  <tr><td>1</td><td><a href="<c:url value='/v2006/ejercicios/1/index.jsp'/>">Impresi&oacute;n de datos</a></td><td>c:out</td></tr>
  <tr><td>2</td><td><a href="<c:url value='/v2006/ejercicios/2/index.jsp'/>">Guardado e impresi&oacute;n de datos</a></td><td>c:set, c:out, fmt:requestEncoding</td></tr>
  <tr><td>3</td><td><a href="<c:url value='/v2006/ejercicios/3/index.jsp'/>">Condicional</a></td><td>c:if, c:redirect, c:param</td></tr>
  <tr><td>4</td><td><a href="<c:url value='/v2006/ejercicios/4/index.jsp'/>">Condiciones m&uacute;ltiples</a></td><td>c:choose, c:when, c:otherwise</td></tr>
  <tr><td>5</td><td><a href="<c:url value='/v2006/ejercicios/5/index.jsp'/>">Captura de excepciones</a></td><td>c:catch</td></tr>
  <tr><td>6</td><td><a href="<c:url value='/v2006/ejercicios/6/index.jsp'/>">Ciclos</a></td><td>c:forEach</td></tr>
  <tr><td>7</td><td><a href="<c:url value='/v2006/ejercicios/7/index.jsp'/>">Cadenas delimitadas</a></td><td>c:forTokens</td></tr>
  <tr><td>8</td><td><a href="<c:url value='/v2006/ejercicios/8/index.jsp'/>">Base de datos</a></td><td>sql:setDataSource, sql:update, sql:query</td></tr>
</table>

<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
