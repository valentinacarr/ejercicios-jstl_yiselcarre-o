<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="/WEB-INF/jspf/v2026/conexion.jspf" %>
<c:set var="titulo" value="Ejercicio 9 - Empleados" />
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>

<h1 class="h4">Empleados registrados</h1>
<c:if test="${param.ok == 1}">
  <div class="alert alert-success" role="alert">El empleado se guard&oacute; correctamente.</div>
</c:if>

<c:catch var="errorConsulta">
  <sql:query var="rs" dataSource="${empleados}">
    SELECT id, nombres, apellido1, apellido2, edad FROM empleados ORDER BY id
  </sql:query>
</c:catch>

<c:choose>
  <c:when test="${not empty errorConsulta}">
    <div class="alert alert-danger" role="alert">No se pudo consultar la base de datos: <c:out value="${errorConsulta.message}" /></div>
  </c:when>
  <c:when test="${rs.rowCount == 0}">
    <div class="alert alert-secondary" role="alert">Todav&iacute;a no hay empleados. Guarda el primero desde el formulario.</div>
  </c:when>
  <c:otherwise>
    <p>Total de empleados: <strong><c:out value="${rs.rowCount}" /></strong></p>
    <div class="table-responsive">
      <table class="table table-striped table-bordered align-middle">
        <thead><tr><th scope="col">Id</th><th scope="col">Nombre</th><th scope="col">Apellidos</th><th scope="col">Edad</th></tr></thead>
        <tbody>
          <c:forEach var="fila" items="${rs.rows}">
            <tr>
              <td><c:out value="${fila.id}" /></td>
              <td><c:out value="${fila.nombres}" /></td>
              <td><c:out value="${fila.apellido1}" /> <c:out value="${fila.apellido2}" /></td>
              <td><c:out value="${fila.edad}" /></td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </c:otherwise>
</c:choose>
<a class="btn btn-primary" href="index.jsp">Agregar otro empleado</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
