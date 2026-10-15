<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 4 - c:if" />
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>

<h1 class="h4">Ejercicio 4. Condicional c:if</h1>
<p>El nombre y el primer apellido son obligatorios; si falta alguno, <code>procesar.jsp</code> te devuelve aqu&iacute; con el motivo.</p>

<c:if test="${not empty param.error}">
  <div class="alert alert-danger" role="alert"><strong>Error:</strong> <c:out value="${param.error}" /></div>
</c:if>

<form action="procesar.jsp" method="post" class="card card-body" style="max-width: 28rem">
  <div class="mb-3">
    <label for="nombre" class="form-label">Nombre</label>
    <input type="text" class="form-control" id="nombre" name="nombre">
  </div>
  <div class="mb-3">
    <label for="apellido1" class="form-label">Primer apellido</label>
    <input type="text" class="form-control" id="apellido1" name="apellido1">
  </div>
  <div class="mb-3">
    <label for="apellido2" class="form-label">Segundo apellido</label>
    <input type="text" class="form-control" id="apellido2" name="apellido2">
  </div>
  <button type="submit" class="btn btn-primary">Enviar informaci&oacute;n</button>
</form>
<a class="btn btn-outline-secondary mt-3" href="<c:url value='/v2026/index.jsp'/>">Volver</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
