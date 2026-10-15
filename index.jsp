<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ejercicios JSTL | 2006 y 2026</title>
<style>
  body { margin:0; font-family: system-ui, Arial, sans-serif; background:#f3f4f6; color:#1f2937; }
  header { text-align:center; padding:40px 16px 8px; }
  h1 { margin:0 0 8px; }
  p.sub { margin:0; color:#6b7280; }
  .cards { display:flex; flex-wrap:wrap; gap:24px; justify-content:center; padding:32px 16px 48px; }
  .card { width:340px; background:#fff; border-radius:12px; padding:24px; box-shadow:0 2px 10px rgba(0,0,0,.08); }
  .card h2 { margin-top:0; }
  .card ul { padding-left:18px; color:#4b5563; }
  .btn { display:inline-block; margin-top:12px; padding:10px 18px; border-radius:8px; color:#fff; text-decoration:none; font-weight:600; }
  .old .btn { background:#1e4a8a; }
  .new .btn { background:#7c3aed; }
  .old { border-top:6px solid #1e4a8a; font-family: Verdana, Arial, sans-serif; }
  .new { border-top:6px solid #7c3aed; }
</style>
</head>
<body>
<header>
  <h1>Ejercicios JSTL</h1>
  <p class="sub">Dos versiones de la gu&iacute;a en una sola aplicaci&oacute;n web</p>
</header>
<div class="cards">
  <div class="card old">
    <h2>Versi&oacute;n 2006</h2>
    <ul>
      <li>8 ejercicios (Gu&iacute;a 1)</li>
      <li>XHTML 1.0 + CSS propio, tablas</li>
      <li>JSP 2.0 / JSTL 1.1</li>
    </ul>
    <a class="btn" href="<c:url value='/v2006/index.jsp'/>">Abrir versi&oacute;n 2006</a>
  </div>
  <div class="card new">
    <h2>Versi&oacute;n 2026</h2>
    <ul>
      <li>9 ejercicios (Gu&iacute;a 2)</li>
      <li>HTML5 + Bootstrap 5.3, tema claro/oscuro</li>
      <li>Sin scriptlets</li>
    </ul>
    <a class="btn" href="<c:url value='/v2026/index.jsp'/>">Abrir versi&oacute;n 2026</a>
  </div>
</div>
</body>
</html>
