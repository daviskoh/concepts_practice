angular.module('myApp').controller('FirstCtrl', ['$scope', 'Data', function($scope, Data) {
  $scope.loadMoreTweets = function() {
    console.log('loading tweets');
  };

  $scope.deleteTweets = function() {
    console.log('deleting tweets');
  };
}]);