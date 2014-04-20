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
    restrict: "A",
    template: "Batman"
  }
}])

.directive('team', [function() {
  return {
    restrict: "E",
    template: "<li ng-repeat='dude in dudes'>Name: {{dude.name}}</li>"
  }
}]);