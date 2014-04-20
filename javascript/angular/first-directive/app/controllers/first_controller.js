angular.module('myApp').controller('FirstCtrl', ['$scope', 'Data', function($scope, Data) {
  $scope.dudes = [
    {
      name: 'dude1'
    },
    {
      name: 'dude2'
    },
    {
      name: 'dude3'
    },
    {
      name: 'dude4'
    },
    {
      name: 'dude5'
    }
  ];
}]);