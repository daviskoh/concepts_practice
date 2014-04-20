angular.module('myApp')
.directive('enter', [function() {
  return function(scope, element, attrs) {
    element.bind('mouseenter', function() {
      // take string param, parse it, find it one scope object
      scope.$apply(attrs.enter);
    });
  }
}])