'use strict';

angular.module('myControllers', [])

.controller('FirstCtrl', function($scope) {
    $scope.ctrlFlavor = 'blackberry';

    $scope.callHome = function (message) {
        alert(message);
    };
});
