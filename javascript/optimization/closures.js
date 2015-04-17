// 1) reference to msg in outer scope (bad)
// 2) creates inner function everytime setupAlertTimeout called (bad)
function setupAlertTimeout() {
  var msg = 'Message to alert';
  
  window.setTimeout(function() {
    alert(msg);
  }, 100);
}
// is slower than:

// 1) uses private msg var (good)
// 2) creates inner function everytime setupAlertTimeout called (bad)
function setupAlertTimeout() {
  window.setTimeout(function() {
    var msg = 'Message to alert';
    alert(msg);
  }, 100);
}
// which is slower than:

// 1) uses private msg var (good)
// 2) reuses static func alertMsg (good)
function alertMsg() {
  var msg = 'Message to alert';
  alert(msg);
}

function setupAlertTimeout() {
  window.setTimeout(alertMsg, 100);
}

