'use strict';

angular.module('ngAppDirectives', [])

.directive('commentform', function() {
  return {
    restrict: 'E',
    replace: true,
    templateUrl: 'comment-form.html'
  };
})