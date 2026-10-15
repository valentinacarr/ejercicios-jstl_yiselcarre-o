// Tema claro/oscuro con Bootstrap 5.3 (atributo data-bs-theme). Recuerda la eleccion; el tema futurista arranca en oscuro.
(function () {
  var guardado = null;
  try { guardado = localStorage.getItem('tema'); } catch (e) { /* almacenamiento bloqueado */ }
  var tema = guardado || 'dark';
  document.documentElement.setAttribute('data-bs-theme', tema);

  document.addEventListener('DOMContentLoaded', function () {
    var boton = document.getElementById('btn-tema');
    if (!boton) { return; }
    boton.addEventListener('click', function () {
      var nuevo = document.documentElement.getAttribute('data-bs-theme') === 'dark' ? 'light' : 'dark';
      document.documentElement.setAttribute('data-bs-theme', nuevo);
      try { localStorage.setItem('tema', nuevo); } catch (e) { /* ignorar */ }
    });
  });
})();
