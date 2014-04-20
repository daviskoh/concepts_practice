angular.module('myApp')

.directive('superman', [function() {
  return {
    // create custom HTML element (E)
    restrict: "E",
    template: "<div>Superman</div>"
  }
}])

.directive('batman', [function() {
  return {
    // add custom attribute (A)
    restrict: "A",
    template: "Batman"
  }
}])

.directive('team', [function() {
  return {
    restrict: "E",
    template: "<li ng-repeat='dude in dudes' my-behavior another-behavior>Name: {{dude.name}}</li>"
  }
}])

.directive('my-behavior', [function() {
  return {
    restrict: "A",
    link: function() {
      console.log('my behavior');
    }
  }
}])

.directive('another-behavior', [function() {
  return {
    restrict: "A",
    link: function() {
      console.log('Another behavior');
    }
  }
}]);