'use strict';

angular.module('myDirectives', [])

.directive('kid', function () {
    return {
        restrict: 'E',
        // breaks interaction w/ controllers that wrap around it
            // breaks any bindings
        scope: {
            // take IN values into directive
            // cant leak OUT
            done: '&'
        },
        // create model chore available for use within directive
        template: '<input type="text" ng-model="chore">' +
        '{{chore}}' +
        // done() is mapped to what is passed into done attribute on line 11 of index.html
        '<button type="button" ng-click="done({chore: chore})">button</button>'
    };
});
