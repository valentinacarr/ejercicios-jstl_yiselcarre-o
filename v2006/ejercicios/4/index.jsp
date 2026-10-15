<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 4 - c:choose" />
<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>

<h2>Ejercicio 4: c:choose, c:when y c:otherwise</h2>
<form action="procesar.jsp" method="post">
  <table class="datos">
    <tr><th width="50%"><label for="lenguaje">&iquest;Cu&aacute;l es tu lenguaje de programaci&oacute;n favorito?</label></th>
        <td><select name="lenguaje" id="lenguaje">
              <option value="">-- Seleccionar un lenguaje --</option>
              <option value="Java">Java</option>
              <option value="C++">C++</option>
              <option value="Perl">Perl</option>
            </select></td></tr>
    <tr><td colspan="2" align="center"><input class="boton" type="submit" value="Enviar" /></td></tr>
  </table>
</form>
<p><a href="<c:url value='/v2006/index.jsp'/>">Volver</a></p>
<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
