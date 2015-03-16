'use strict'

angular.module('InfoCtrl', [
  ])

.controller('InfoCtrl', function (
  $scope,
  $http
) {

  $scope.comments = [];

  var promise = $http({
    url: '/comments',
    method: 'GET',
    // headers: {
    //   "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
    // },
    timeout: 60000,
  }).success(function(data, status, headers, config) {
    console.log(data);
    $scope.comments = data
  }).error(function(response) {
    console.log(response);
  })

  $scope.addComment = function() {
    $http({
      url: '/comments',
      method: 'POST',
      headers: {
        "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
      }
    }).success(function(data) {
      console.log(data);
    })

    // var newComment = {
    //   'userName': 'Test User',
    //   'comment': $scope.newComment,
    //   'time': 'Now'
    // }

    // $scope.comments.push(newComment);
  }

});