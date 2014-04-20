angular.module('myApp')

.directive('superman', [function() {
  return {
    // create custom HTML element
    restrict: "E",
    template: "<div>Superman</div>"
  }
}])

.directive('batman', [function() {
  return {
    // add custom attribute
    template: "Batman"
  }
}]);