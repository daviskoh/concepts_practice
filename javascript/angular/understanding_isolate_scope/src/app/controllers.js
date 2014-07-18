'use strict';

angular.module('myControllers', [])

.controller('FirstCtrl', function($scope) {
    $scope.logChore = function (chore) {
        alert(chore + ' is done!');
    };
})

.controller('SecondCtrl', function($scope) {
      
});
