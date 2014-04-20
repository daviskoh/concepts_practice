angular.module('myApp')

.directive('enter', [function() {
  // shortcut: if want to default to attribute & link functionality
  // access to attr object when inject into link function below
  return function(scope, element, attrs) {
    element.bind('mouseenter', function() {
      element.addClass(attrs.enter);
    });
  }
}])

.directive('leave', [function() {
  return function(scope, element, attrs) {
    element.bind('mouseleave', function() {
      element.removeClass(attrs.enter);
    });
  }
}]);