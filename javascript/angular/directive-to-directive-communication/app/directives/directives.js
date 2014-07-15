angular.module('myApp')
    .directive('superhero', function () {
        return {
            restrict: 'E',
            scope: {},
            // build API for other directives to talk to
            controller: function ($scope) {
                // each controller will have SEPARATE instance of attributes defined on $scope
                $scope.abilities = [];

                function addAbility (ability) {
                    return function () {
                        $scope.abilities.push(ability);
                    }
                }

                // share functions available to ALL instances of controller
                this.addStrength = addAbility('strength');
                this.addSpeed = addAbility('speed');
                this.addFlight = addAbility('flight');
            },
            link: function (scope, element) {
                element.bind('mouseenter', function () {
                    console.log(scope.abilities);
                });
            }
        }
    })
    .directive('speed', function () {
        return {
            require: 'superhero', 
            link: function (scope, element, attrs, superheroCtrl) {
                superheroCtrl.addSpeed();
            }
        } 
    })
    .directive('strength', function () {
        return {
            require: 'superhero', 
            link: function (scope, element, attrs, superheroCtrl) {
                superheroCtrl.addStrength();
            }
        } 
    })
    .directive('flight', function () {
        return {
            require: 'superhero', 
            link: function (scope, element, attrs, superheroCtrl) {
                superheroCtrl.addFlight();
            }
        } 
    });;