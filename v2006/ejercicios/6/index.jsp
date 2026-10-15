<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 6 - c:forEach" />
<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>

<h2>Ejercicio 6: ciclos con c:forEach</h2>

<h3>1. Contador de 1 a 24 de 2 en 2</h3>
<c:forEach begin="1" end="24" step="2" var="hora" varStatus="estado">
  <c:out value="${hora}" />
  <c:if test="${estado.first}"><strong>(primera iteraci&oacute;n)</strong></c:if>
  <c:if test="${estado.count == 5}"><strong>(estoy en la iteraci&oacute;n n&uacute;mero 5)</strong></c:if>
  <c:if test="${estado.last}"><strong>(&uacute;ltima iteraci&oacute;n)</strong></c:if>
  <br />
</c:forEach>

<h3>2. Recorrer una cadena separada por comas</h3>
<table class="datos">
  <tr><th width="60">&Iacute;ndice</th><th>Color</th></tr>
  <c:forEach var="color" items="Rojo,Verde,Azul,Amarillo" varStatus="e">
    <tr><td><c:out value="${e.index}" /></td><td><c:out value="${color}" /></td></tr>
  </c:forEach>
</table>

<h3>3. Tabla de multiplicar del 7</h3>
<c:forEach var="i" begin="1" end="10">
  7 x <c:out value="${i}" /> = <c:out value="${7 * i}" /><br />
</c:forEach>

<p><a href="<c:url value='/v2006/index.jsp'/>">Volver</a></p>
<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
