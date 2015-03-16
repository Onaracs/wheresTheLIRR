angular
	.module('myApp', [
		'ngAnimate',
		'ui.router',
		'templates',
		'HomeCtrl',
		'InfoCtrl',
		'ngAppDirectives'
	])
	.config(function(
		$stateProvider, 
		$urlRouterProvider, 
		$locationProvider,
		$httpProvider) {

		authToken = $("meta[name=\"csrf-token\"]").attr("content")
		$httpProvider.defaults.headers.common["X-CSREF-TOKEN"] = authToken;

		// default fallback route
		$urlRouterProvider.otherwise('/');
		/**
		 * Route and States
		 */
		$stateProvider
			.state('home', {
				url: '/',
				templateUrl: 'home.html',
				controller: 'HomeCtrl'
			})

			.state('info', {
				url: '/info',
				templateUrl: 'info.html',
				controller: 'InfoCtrl'
			})

		// enable HTML5 mode for SEO
		$locationProvider.html5Mode(true);

	});