'use strict'

angular.module('InfoCtrl', [
  'commentsModule',
  'townsModule'
])

.controller('InfoCtrl', function (
  $scope,
  $http,
  $stateParams,
  getTowns,
  getTownComments
) {
  $scope.townName = $stateParams.town;
  $scope.departure = $stateParams.town;
  $scope.destination = '';
  
  getTowns().then(function(result) {
    $scope.towns = result.data;
  });

  // underscore, findWhere town = stateParams
  // take the ID of that town
  // pass it into getTownComments

  getTownComments(1).then(function(result) {
    $scope.comments = result.data || [];
  });

  $scope.reverse = function() {
    $scope.departure = [$scope.destination, $scope.destination = $scope.departure][0];
  }

  $scope.addComment = function() {
    $http({
      url: '/comments',
      method: 'POST',
      data: {
        text: $scope.newComment,
        town: $stateParams.town
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

