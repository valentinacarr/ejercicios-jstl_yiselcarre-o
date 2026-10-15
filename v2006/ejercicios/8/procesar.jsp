<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/jspf/v2006/conexion.jspf" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 8 - Guardar" />

<c:choose>
  <c:when test="${empty fn:trim(param.nombres) or empty fn:trim(param.apellido1) or empty fn:trim(param.edad)}">
    <c:set var="mensaje" value="El nombre, el primer apellido y la edad son obligatorios." />
  </c:when>
  <c:otherwise>
    <c:catch var="errorBD">
      <%-- fmt:parseNumber lanza error si la edad no es un numero --%>
      <fmt:parseNumber var="edad" value="${param.edad}" integerOnly="true" />
      <%-- sql:param evita escribir los datos dentro de la consulta (inyeccion SQL) --%>
      <sql:update dataSource="${empleados}">
        INSERT INTO empleados (nombres, apellido1, apellido2, edad) VALUES (?, ?, ?, ?)
        <sql:param value="${param.nombres}" />
        <sql:param value="${param.apellido1}" />
        <sql:param value="${param.apellido2}" />
        <sql:param value="${edad}" />
      </sql:update>
    </c:catch>
    <%-- Si todo salio bien se redirige al listado (asi F5 no repite el INSERT) --%>
    <c:if test="${empty errorBD}">
      <c:redirect url="listado.jsp">
        <c:param name="ok" value="1" />
      </c:redirect>
    </c:if>
    <c:set var="mensaje" value="${errorBD.message}" />
  </c:otherwise>
</c:choose>

<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>
<h2>No se pudo guardar el empleado</h2>
<div class="error"><c:out value="${mensaje}" /></div>
<p><a href="index.jsp">Volver al formulario</a></p>
<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
