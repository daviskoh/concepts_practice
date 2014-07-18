angular.module('myApp').factory('Data', [function() {
    return {
        message: "I'm from a factory",
        outPutMessage: function () {
            console.log(this.message);
        }
    }
}]);