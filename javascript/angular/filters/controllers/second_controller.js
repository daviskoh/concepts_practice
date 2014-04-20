angular.module('myApp').controller('SecondCtrl', ['$scope', 'Data', function($scope, Data) {
    $scope.data = Data;

    $scope.foods = [
      {
        name: 'chocolate',
        taste: 5
      },
      {
        name: 'milk',
        taste: 3
      },
      {
        name: 'bread',
        taste: 1
      },
      {
        name: 'icecream',
        taste: 10
      },
      {
        name: 'cheese',
        taste: 5
      }
    ];
}]);