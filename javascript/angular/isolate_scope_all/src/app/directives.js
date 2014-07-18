'use strict';

angular.module('myDirectives', [])

.directive('drinkAt', function () {
    return {
        scope: {
            // get value passed into flavor attribute on line 11 of index.html
            // read it in as STRING similar to attrs.flavor
            // assigns it to scope object
            flavor: '@'
        },
        template: '<div>{{flavor}}</div>'
    };
})

.directive('drinkEquals', function () {
    return {
        scope: {
            // expect OBJECT to bind to
            // sets up two-way binding between flavor model below and what is passed into flavor attribute on line 21 of index.html
            flavor: '='
        },
        template: '<input type="text" ng-model="flavor"></input>'
    };
})

.directive('phone', function () {
    return {
        restrict: 'E',
        scope: {
            // what is passed into dial attribute on line 30 of index.html will be evaluated via dial()
            // NOT two-way, binding not occur until passed-in expression invoked
            dial: '&'
        },
        template: '<input type="text" ng-model="value" />' +
        // call the callHome() function on line 30 from FirstCtrl & pass in value as the message argument
        '<button ng-click="dial({message: value})">Call Home!</button>'
    };
});
