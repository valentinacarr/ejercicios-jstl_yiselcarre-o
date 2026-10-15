<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 7 - c:forTokens" />
<%@ include file="/WEB-INF/jspf/v2006/cabecera.jspf" %>

<h2>Ejercicio 7: c:forTokens</h2>
<p>Escribe un texto, indica el car&aacute;cter delimitador (por ejemplo una coma o un espacio) y se separar&aacute; en partes.</p>
<form action="resultado.jsp" method="post">
  <table class="datos">
    <tr><th width="45%"><label for="texto">Introduzca un texto con delimitador</label></th>
        <td><input class="texto" type="text" name="texto" id="texto" /></td></tr>
    <tr><th><label for="delim">Introduzca el delimitador</label></th>
        <td><input class="texto" type="text" name="delim" id="delim" maxlength="5" /></td></tr>
    <tr><td colspan="2" align="center"><input class="boton" type="submit" value="Separar" /></td></tr>
  </table>
</form>
<p><a href="<c:url value='/v2006/index.jsp'/>">Volver</a></p>
<%@ include file="/WEB-INF/jspf/v2006/pie.jspf" %>
