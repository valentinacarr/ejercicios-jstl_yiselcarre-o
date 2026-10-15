<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 5 - Resultado" />
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>

<h1 class="h4">Resultado</h1>
<%-- Se ejecuta el primer when verdadero; si ninguno lo es, el otherwise --%>
<c:choose>
  <c:when test="${param.lenguaje == 'Java'}">
    <div class="alert alert-info" role="alert"><strong>Java:</strong> el rey de los lenguajes orientados a objetos.</div>
  </c:when>
  <c:when test="${param.lenguaje == 'C++'}">
    <div class="alert alert-info" role="alert"><strong>C++:</strong> ideal para aprender c&oacute;mo funciona la memoria.</div>
  </c:when>
  <c:when test="${param.lenguaje == 'Perl'}">
    <div class="alert alert-info" role="alert"><strong>Perl:</strong> lenguaje de scripting muy potente.</div>
  </c:when>
  <c:when test="${param.lenguaje == 'Python'}">
    <div class="alert alert-info" role="alert"><strong>Python:</strong> sintaxis clara, muy usado en datos e IA.</div>
  </c:when>
  <c:when test="${param.lenguaje == 'JavaScript'}">
    <div class="alert alert-info" role="alert"><strong>JavaScript:</strong> el lenguaje de la web.</div>
  </c:when>
  <c:otherwise>
    <div class="alert alert-warning" role="alert">No se seleccion&oacute; ning&uacute;n lenguaje.</div>
  </c:otherwise>
</c:choose>
<a class="btn btn-outline-secondary" href="index.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
