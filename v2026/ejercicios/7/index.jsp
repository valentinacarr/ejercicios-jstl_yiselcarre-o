<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 7 - c:forEach" />
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>

<h1 class="h4">Ejercicio 7. Ciclos con c:forEach</h1>

<h2 class="h6 mt-4">1. Contador de 1 a 24 de 2 en 2</h2>
<ul class="list-unstyled">
  <c:forEach begin="1" end="24" step="2" var="hora" varStatus="estado">
    <li>
      <c:out value="${hora}" />
      <c:if test="${estado.first}"><span class="badge text-bg-primary">primera iteraci&oacute;n</span></c:if>
      <c:if test="${estado.count == 5}"><span class="badge text-bg-warning">iteraci&oacute;n n&uacute;mero 5</span></c:if>
      <c:if test="${estado.last}"><span class="badge text-bg-success">&uacute;ltima iteraci&oacute;n</span></c:if>
    </li>
  </c:forEach>
</ul>

<h2 class="h6 mt-4">2. Recorrer una lista creada con EL</h2>
<table class="table table-sm table-bordered" style="max-width: 24rem">
  <thead><tr><th scope="col">&Iacute;ndice</th><th scope="col">Lenguaje</th></tr></thead>
  <tbody>
    <c:forEach var="lenguaje" items="${['Java', 'Kotlin', 'Python', 'JavaScript']}" varStatus="e">
      <tr><td><c:out value="${e.index}" /></td><td><c:out value="${lenguaje}" /></td></tr>
    </c:forEach>
  </tbody>
</table>

<h2 class="h6 mt-4">3. Tabla de multiplicar del 7</h2>
<c:forEach var="i" begin="1" end="10">
  <div>7 &times; <c:out value="${i}" /> = <c:out value="${7 * i}" /></div>
</c:forEach>

<a class="btn btn-outline-secondary mt-4" href="<c:url value='/v2026/index.jsp'/>">Volver</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
