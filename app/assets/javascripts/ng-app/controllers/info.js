'use strict'

angular.module('InfoCtrl', [
  ])

.controller('InfoCtrl', function (
  $scope,
  $http,
  $stateParams
) {
  $scope.townName = $stateParams.town;
  $scope.comments = [];

  var promise = $http({
    url: '/comments',
    method: 'GET',
    // headers: {
    //   "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
    // },
    timeout: 60000,
  }).success(function(data, status, headers, config) {
    $scope.comments = data
  }).error(function(response) {
    console.log(response);
  })

  $scope.addComment = function() {
    // $http.post('/comments', {data: 'hello world!'}).
    //   success(function(data) {
    //     console.log(data);
    //   }).
    //   error(function(data) {
    //     console.log(data);
    //   });
    $http({
      url: '/comments',
      method: 'POST',
      data: {
        text: $scope.newComment
      }
    }).success(function(data) {
      var newComment = {
        created_at: data.created_at,
        text: data.text,
        username: data.username
      }
      $scope.comments.push(newComment);
      console.log(data);
    }).error(function(data) {
      console.log(data);
    })
  }

});