<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<c:set var="titulo" value="Ejercicio 5 - c:choose" />
<%@ include file="/WEB-INF/jspf/v2026/cabecera.jspf" %>

<h1 class="h4">Ejercicio 5. c:choose, c:when y c:otherwise</h1>
<form action="procesar.jsp" method="post" class="card card-body" style="max-width: 28rem">
  <div class="mb-3">
    <label for="lenguaje" class="form-label">&iquest;Cu&aacute;l es tu lenguaje de programaci&oacute;n favorito?</label>
    <select class="form-select" id="lenguaje" name="lenguaje">
      <option value="">-- Seleccionar un lenguaje --</option>
      <option value="Java">Java</option>
      <option value="C++">C++</option>
      <option value="Perl">Perl</option>
      <option value="Python">Python</option>
      <option value="JavaScript">JavaScript</option>
    </select>
  </div>
  <button type="submit" class="btn btn-primary">Enviar</button>
</form>
<a class="btn btn-outline-secondary mt-3" href="<c:url value='/v2026/index.jsp'/>">Volver</a>
<%@ include file="/WEB-INF/jspf/v2026/pie.jspf" %>
