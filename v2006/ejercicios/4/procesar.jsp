<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 4 - Resultado" />
<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>

<h2>Resultado</h2>
<%-- Se ejecuta el PRIMER when que sea verdadero; si ninguno lo es, el otherwise --%>
<c:choose>
  <c:when test="${param.lenguaje == 'Java'}">
    <div class="info"><strong>Java:</strong> el rey de los lenguajes orientados a objetos.</div>
  </c:when>
  <c:when test="${param.lenguaje == 'C++'}">
    <div class="info"><strong>C++:</strong> ideal para aprender.</div>
  </c:when>
  <c:when test="${param.lenguaje == 'Perl'}">
    <div class="info"><strong>Perl:</strong> lenguaje de scripting muy potente.</div>
  </c:when>
  <c:otherwise>
    <div class="error">No se seleccion&oacute; ning&uacute;n lenguaje.</div>
  </c:otherwise>
</c:choose>
<p><a href="index.jsp">Volver</a></p>
<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
