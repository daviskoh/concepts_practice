angular.module('myApp').directive('superman', [function() {
  return {
    // create custom HTML element
    restrict: "E",
    template: "<div>Here I am to save the day</div>"
  }
}]);
