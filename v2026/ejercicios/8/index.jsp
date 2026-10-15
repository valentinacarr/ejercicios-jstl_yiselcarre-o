<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 8 - c:forTokens" />
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>

<h1 class="h4">Ejercicio 8. c:forTokens</h1>
<p>Escribe un texto y el car&aacute;cter con el que quieres separarlo (por ejemplo una coma, un espacio o un punto y coma).</p>
<form action="resultado.jsp" method="post" class="card card-body" style="max-width: 28rem">
  <div class="mb-3">
    <label for="texto" class="form-label">Texto con delimitador</label>
    <input type="text" class="form-control" id="texto" name="texto" required placeholder="ej: rojo,verde,azul">
  </div>
  <div class="mb-3">
    <label for="delim" class="form-label">Delimitador</label>
    <input type="text" class="form-control" id="delim" name="delim" required maxlength="5" placeholder="ej: ,">
  </div>
  <button type="submit" class="btn btn-primary">Separar texto</button>
</form>
<a class="btn btn-outline-secondary mt-3" href="<c:url value='/v2026/index.jsp'/>">Volver</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
