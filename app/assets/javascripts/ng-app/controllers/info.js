'use strict'

angular.module('InfoCtrl', [
  ])

.controller('InfoCtrl', function (
  $scope
) {
  console.log("In the info controller");

  $scope.comments = [
    {'userName': 'Brendan Scarano',
      'comment': 'Still waiting for this damn train!',
      'time': '3:07 Mar 5th'},
    {'userName': 'Foo Bar',
      'comment': '...waiting for this damn train!',
      'time': '3:05 Mar 5th'},
    {'userName': 'Jimmy Schimmy',
      'comment': 'Lets get busy',
      'time': '3:01 Mar 5th'}
  ]

});