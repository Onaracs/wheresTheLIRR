'use strict';

angular.module('ngAppDirectives', [])

.directive('commentform', function() {
  return {
    restrict: 'E',
    replace: true,
    templateUrl: 'comment-form.html'
  };
})

.directive('calendar', function() {

  var template1 = 'calendar/march2015.html';
  var template2 = 'calendar/april2015.html';

  var template = template2;

  return {
    restrict: 'E',
    link: function(scope) {
      console.log(scope);
    },
    replace: true,
    scope: {
      month: '='
    },
    templateUrl: template
  }
})