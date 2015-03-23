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
    
  $scope.towns = getTowns;


  getTownComments().then(function(result) {
    $scope.comments = result.data;
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



// $scope.towns = ["Albertson", "Amagansett", "Amityville", "Auburndale", "Babylon", "Baldwin", "Bay Shore", "Bayside", "Bellerose", "Bellmore", "Bellport", "Bethpage", "Brentwood", "Bridgehampton", "Broadway", "Carle Place", "Cedarhurst", "Central Islip", "Centre Ave", "Cold Spring Harbor", "Copiague", "Country Life Press", "Deer Park", "Douglaston", "East Hampton", "East New York", "East Rockaway", "East Williston", "Far Rockaway", "Farmingdale", "Flatbush Ave", "Floral Park", "Flushing Main St", "Forest Hills", "Freeport", "Garden City", "Gibson", "Glen Cove", "Glen Head", "Glen St", "Great Neck", "Great River", "Greenlawn", "Greenport", "Greenvale", "Hampton Bays", "Hempstead", "Hempstead Gardens", "Hewlett", "Hicksville", "Hicksville", "Holis", "Hunterspoint Ave", "Huntington", "Inwood", "Island Park", "Islip", "Jamacia", "Kew Gardens", "Kings Park", "Lakeview", "Laurelton", "Laurelton", "Lawrence", "Lindenhurst", "Little Neck", "Locust Manor", "Locust Valley", "Long Beach", "Long Island City", "Long Island City", "Lynbrook", "Malverne", "Manhasset", "Massapequa", "Massapequa Park", "Mastic-Shirley", "Mattituck", "Medford", "Merillon Ave", "Merrick", "Mineola", "Mineola", "Montauk", "Murrary Hill", "Nassau Blvd", "New Hyde Park", "Northport", "Nostrand Ave", "Oakdale", "Oceanside", "Oyster Bay", "Patchogue", "Pinelawn", "Plandome", "Port Jefferson", "Port Washington", "Queens Village", "Queens Village", "Riverhead", "Rockville Centre", "Ronkonkoma", "Rosyln", "Sayville", "Sea Cliff", "Seaford", "Shea Stadium", "Smithtown", "Southhampton", "Southold", "Speonk", "St. James", "St.Albans", "Stewart Manor", "Stony Brook", "Syosset", "Valley Stream", "Wantagh", "West Hempstead", "Westbury", "Westhampton", "Westwood", "Woodmere", "Woodside", "Wooside", "Wyandanch", "Yaphank"]
});

