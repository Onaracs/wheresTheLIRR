angular.module('townsModule', [])

.factory('getTowns', function($http) {

  // return function() {
  //   var url = '/towns';
  //   var promise = $http({
  //     url: url,
  //     method: 'GET',
  //     timeout: 60000,
  //   }).success(function(response) {
  //     return response;
  //   }).error(function(response) {
  //     return {'status': false};
  //   })

  //   return promise;
  // }
  // 

  towns = ["Albertson", "Amagansett", "Amityville", "Atlantic Terminal", "Auburndale", "Babylon", "Baldwin", "Bay Shore", "Bayside", "Bellerose", "Bellmore", "Bellport", "Bethpage", "Brentwood", "Bridgehampton", "Broadway", "Carle Place", "Cedarhurst", "Central Islip", "Centre Ave", "Cold Spring Harbor", "Copiague", "Country Life Press", "Deer Park", "Douglaston", "East Hampton", "East New York", "East Rockaway", "East Williston", "Far Rockaway", "Farmingdale", "Floral Park", "Flushing Main St", "Forest Hills", "Freeport", "Garden City", "Gibson", "Glen Cove", "Glen Head", "Glen St", "Great Neck", "Great River", "Greenlawn", "Greenport", "Greenvale", "Hampton Bays", "Hempstead", "Hempstead Gardens", "Hewlett", "Hicksville", "Hillside Facility", "Holis", "Hunterspoint Ave", "Huntington", "Inwood", "Island Park", "Islip", "Jamacia", "Kew Gardens", "Kings Park", "Lakeview", "Laurelton", "Lawrence", "Lindenhurst", "Little Neck", "Locust Manor", "Locust Valley", "Long Beach", "Long Island City", "Lynbrook", "Malverne", "Manhasset", "Massapequa", "Massapequa Park", "Mastic-Shirley", "Mattituck", "Medford", "Merillon Ave", "Merrick", "Mets - Willets Point", "Mineola", "Montauk", "Murrary Hill", "Nassau Blvd", "New Hyde Park", "Northport", "Nostrand Ave", "Oakdale", "Oceanside", "Oyster Bay", "Patchogue", "Penn Station", "Pinelawn", "Plandome", "Port Jefferson", "Port Washington", "Queens Village", "Riverhead", "Rockville Centre", "Ronkonkoma", "Rosedale", "Rosyln", "Sayville", "Sea Cliff", "Seaford", "Smithtown", "Southhampton", "Southold", "Speonk", "St. James", "St.Albans", "Stewart Manor", "Stony Brook", "Syosset", "Valley Stream", "Wantagh", "West Hempstead", "Westbury", "Westhampton", "Westwood", "Woodmere", "Wooside", "Wyandanch", "Yaphank"]

  return towns;
})

