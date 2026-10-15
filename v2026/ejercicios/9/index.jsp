<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 9 - SQL" />
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>

<h1 class="h4">Ejercicio 9. Base de datos con las etiquetas sql</h1>
<p>Antes de empezar ejecuta <code>sql/empleados.sql</code> y revisa la conexi&oacute;n en <code>WEB-INF/jspf/conexion.jspf</code>.</p>

<c:if test="${not empty param.error}">
  <div class="alert alert-danger" role="alert"><c:out value="${param.error}" /></div>
</c:if>

<form action="procesar.jsp" method="post" class="card card-body" style="max-width: 28rem">
  <div class="mb-3">
    <label for="nombres" class="form-label">Nombre</label>
    <input type="text" class="form-control" id="nombres" name="nombres" maxlength="50" required>
  </div>
  <div class="mb-3">
    <label for="apellido1" class="form-label">Primer apellido</label>
    <input type="text" class="form-control" id="apellido1" name="apellido1" maxlength="50" required>
  </div>
  <div class="mb-3">
    <label for="apellido2" class="form-label">Segundo apellido</label>
    <input type="text" class="form-control" id="apellido2" name="apellido2" maxlength="50">
  </div>
  <div class="mb-3">
    <label for="edad" class="form-label">Edad</label>
    <input type="number" class="form-control" id="edad" name="edad" min="0" max="120" required>
  </div>
  <div class="d-flex gap-2">
    <button type="submit" class="btn btn-primary">Guardar empleado</button>
    <a class="btn btn-outline-secondary" href="listado.jsp">Ver empleados</a>
  </div>
</form>
<a class="btn btn-outline-secondary mt-3" href="<c:url value='/v2026/index.jsp'/>">Volver</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
