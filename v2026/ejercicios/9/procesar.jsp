<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="/WEB-INF/jspf/v2026/conexion.jspf" %>
<c:set var="titulo" value="Ejercicio 9 - Guardar" />

<c:choose>
  <c:when test="${empty fn:trim(param.nombres) or empty fn:trim(param.apellido1) or empty fn:trim(param.edad)}">
    <c:set var="mensaje" value="El nombre, el primer apellido y la edad son obligatorios." />
  </c:when>
  <c:otherwise>
    <c:catch var="errorBD">
      <fmt:parseNumber var="edad" value="${param.edad}" integerOnly="true" />
      <c:if test="${edad lt 0 or edad gt 120}">
        <c:set var="edadInvalida" value="true" />
      </c:if>
      <c:if test="${edadInvalida != true}">
        <%-- sql:param envia los datos como parametros de un PreparedStatement (sin inyeccion SQL) --%>
        <sql:update dataSource="${empleados}">
          INSERT INTO empleados (nombres, apellido1, apellido2, edad) VALUES (?, ?, ?, ?)
          <sql:param value="${param.nombres}" />
          <sql:param value="${param.apellido1}" />
          <sql:param value="${param.apellido2}" />
          <sql:param value="${edad}" />
        </sql:update>
      </c:if>
    </c:catch>
    <c:choose>
      <c:when test="${not empty errorBD}">
        <c:set var="mensaje" value="${errorBD.message}" />
      </c:when>
      <c:when test="${edadInvalida == true}">
        <c:set var="mensaje" value="La edad debe estar entre 0 y 120." />
      </c:when>
      <c:otherwise>
        <%-- Patron Post/Redirect/Get: al recargar la pagina no se repite el INSERT --%>
        <c:redirect url="listado.jsp">
          <c:param name="ok" value="1" />
        </c:redirect>
      </c:otherwise>
    </c:choose>
  </c:otherwise>
</c:choose>

<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>
<h1 class="h4">No se pudo guardar el empleado</h1>
<div class="alert alert-danger" role="alert"><c:out value="${mensaje}" /></div>
<a class="btn btn-outline-secondary" href="index.jsp">Volver al formulario</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
