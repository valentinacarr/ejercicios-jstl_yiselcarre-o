<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/jspf/v2006/conexion.jspf" %>
<c:set var="titulo" value="Ejercicio 8 - Empleados" />
<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>

<h2>Empleados registrados</h2>
<c:if test="${param.ok == 1}">
  <div class="ok">El empleado se guard&oacute; correctamente.</div>
</c:if>

<c:catch var="errorConsulta">
  <sql:query var="rs" dataSource="${empleados}">
    SELECT id, nombres, apellido1, apellido2, edad FROM empleados ORDER BY id
  </sql:query>
</c:catch>

<c:choose>
  <c:when test="${not empty errorConsulta}">
    <div class="error">No se pudo consultar la base de datos: <c:out value="${errorConsulta.message}" /></div>
  </c:when>
  <c:otherwise>
    <p>Total de empleados: <strong><c:out value="${rs.rowCount}" /></strong></p>
    <table class="datos">
      <tr><th>Id</th><th>Nombre</th><th>Apellidos</th><th>Edad</th></tr>
      <c:forEach var="fila" items="${rs.rows}">
        <tr>
          <td><c:out value="${fila.id}" /></td>
          <td><c:out value="${fila.nombres}" /></td>
          <td><c:out value="${fila.apellido1}" /> <c:out value="${fila.apellido2}" /></td>
          <td><c:out value="${fila.edad}" /></td>
        </tr>
      </c:forEach>
    </table>
  </c:otherwise>
</c:choose>
<p><a href="index.jsp">Volver al formulario</a></p>
<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
