angular.module('commentsModule', [])

.factory('getTownComments', function($http) {

  return function() {
    // NEED TO GET ONLY THE RIGHT COMMENTS!!!
    var url = '/comments';
    var promise = $http({
      url: url,
      method: 'GET',
      // headers: {
      //   'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
      // },
      timeout: 60000,
      }).success(function(response) {
        return response
      }).error(function(response) {
        return {'status': false};
      })

    return promise;

  }
})