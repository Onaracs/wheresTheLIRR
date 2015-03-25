angular.module('commentsModule', [])

.factory('getTownComments', function($http) {

  return function(townID) {
    console.log(townID);
    var url = '/comments/' + townID;
    var promise = $http({
      url: url,
      method: 'GET',
      // headers: {
      //   'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
      // },
      timeout: 60000,
      }).success(function(response) {
        return response;
      }).error(function(response) {
        return {'status': false};
      })

    return promise;

  }
})