angular.module('myApp').controller('SecondCtrl', ['$scope', 'Data', function($scope, Data) {
    $scope.data = Data;
}]);