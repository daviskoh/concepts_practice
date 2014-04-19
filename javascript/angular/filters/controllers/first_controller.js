angular.module('myApp').controller('FirstCtrl', ['$scope', 'Data', function($scope, Data) {
    $scope.data = Data; 

    $scope.meow = function () {
        Data.outPutMessage();
    };
}]);