angular.module("monApp").controller('homeController', ['$scope', '$rootScope', '$state', '$timeout', '$filter', 'targetService', '$http',
    function ($scope, $rootScope, $state, $timeout, $filter, targetService, $http) {
        $scope.targets = [];
        $scope.target = {
            "Destination": "",
            "Codes": "",
            "Rate": "",
            "Currency": "",
            "Quality": "",
            "QoS": "",
            "Volume": "",
            "Type": "",
            "Technology": ""
        }
        var promise = targetService.GetTargetList();
        promise.then(function (result) {
            $scope.targets = result;
        }, function (e) {
            console.log(e);
        });
        $scope.submit = function (target) {
            console.log(target)
        }

    }]);