<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 5 - c:catch" />
<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>

<h2>Ejercicio 5: captura de excepciones con c:catch</h2>
<p>Con <code>c:catch</code> la p&aacute;gina no se aborta cuando ocurre un error: la excepci&oacute;n se guarda en la
variable indicada en <code>var</code> y se comprueba que no sea nula.</p>

<%-- En 2006 era normal convertir el parametro con un scriptlet; la excepcion queda atrapada en error01 --%>
<c:catch var="error01">
  <% pageContext.setAttribute("valor", Integer.valueOf(request.getParameter("parametro"))); %>
</c:catch>

<c:if test="${not empty error01}">
  <div class="error"><strong>Se produjo un error:</strong> <c:out value="${error01}" /></div>
</c:if>
<c:if test="${empty error01 and not empty valor}">
  <div class="info"><strong>Valor recibido:</strong> <c:out value="${valor}" /></div>
</c:if>

<table class="datos">
  <tr>
    <td align="center"><form action="index.jsp" method="get">
      <input type="hidden" name="parametro" value="prueba" />
      <input class="boton" type="submit" value="Enviar 'prueba'" /></form></td>
    <td align="center"><form action="index.jsp" method="get">
      <input type="hidden" name="parametro" value="1234" />
      <input class="boton" type="submit" value="Enviar '1234'" /></form></td>
    <td align="center"><form action="index.jsp" method="get">
      <input class="boton" type="submit" value="No enviar el par&aacute;metro" /></form></td>
  </tr>
</table>
<p><a href="<c:url value='/v2006/index.jsp'/>">Volver</a></p>
<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
