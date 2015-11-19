(function () {
  'use strict';

  function changeConsoleOpenText (text) {
    document.getElementById('console-open').innerHTML = text;
  }

  window.addEventListener('devtoolschange', function (e) {
    changeConsoleOpenText(e.detail.open);
  });
})();
