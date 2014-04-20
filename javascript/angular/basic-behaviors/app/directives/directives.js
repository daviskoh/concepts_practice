angular.module('myApp')

.directive('enter', [function() {
  // shortcut: if want to default to attribute & link functionality
  return function(scope, element) {
    element.bind('mouseenter', function() {
      console.log('I am inside of you');
    });
  }
}])

.directive('leave', [function() {
  return function(scope, element) {
    element.bind('mouseleave', function() {
      console.log('I am outside of you');
    });
  }
}]);