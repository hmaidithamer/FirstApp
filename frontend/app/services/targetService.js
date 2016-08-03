/* JavaScript content from app/modules/catalogue/services/catalogueService.js in folder common */
/* Service */
angular.module("monApp").factory('targetService', ['$q', '$log', '$filter', '$http',
    function ($q, $log, $filter, $http) {

        var ListTarget = function () {
            var dfd = $q.defer();

            $http.get('http://127.0.0.1:3000/api/target').success(function (response) {

                console.log('response', response);
                dfd.resolve(response.targets);

            }).error(function (error) {
                dfd.reject('error when loading file');
            })
            return dfd.promise;
        };

        return {
            GetTargetList: ListTarget
        };
    }]);