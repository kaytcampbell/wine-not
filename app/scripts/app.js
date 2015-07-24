(function () {
	var app = angular.module("winenot", ['ngRoute']);

	app.config(function($routeProvider) {
		$routeProvider.when('/wines', {
			templateUrl: "pages/wines.html",
			controller: "WinesController"
		})
		.when('/wines/:id', {
			templateUrl: "pages/wine.html",
			controller: "WineController"
		})
		.when('/', {
			templateUrl: 'pages/home.html'			
		})
		.otherwise({
			redirectTo: '/'
		});
	});

	app.controller("WinesController", [ '$http', function($http) {
		var ctrl = this;
		$http.get('data/wines.php')
		.success (function (data, status, headers, config) {
			/* DEBUG */ ctrl.response = {result: 'success', data: data, status: status, headers: headers, config: config};
			ctrl.wines = data;
		})
		.error (function (data, status, headers, config) {
			/* DEBUG */ ctrl.response = {result: 'error', data: data, status: status, headers: headers, config: config};
			ctrl.error = 'Oops! Could not retrieve wines';
		});
	}]);

	app.controller("WineController", [ '$http', '$routeParams', function($http, $routeParams) {
		var ctrl = this;
		$http.get('data/wines.php?id=' + $routeParams.id)
		.success (function (data, status, headers, config) {
			/* DEBUG */ ctrl.response = {result: 'success', data: data, status: status, headers: headers, config: config};
			ctrl.wine = data;
		})
		.error (function (data, status, headers, config) {
			/* DEBUG */ ctrl.response = {result: 'error', data: data, status: status, headers: headers, config: config};
			ctrl.error = 'Oops! Could not retrieve wine';
		});
	}]);

	app.controller("ReviewsController", [ '$http', '$routeParams', function($http, $routeParams) {
		var ctrl = this;
		$http.get('data/reviews.php?wine=' + $routeParams.id)
		.success (function (data, status, headers, config) {
			/* DEBUG */ ctrl.response = {result: 'success', data: data, status: status, headers: headers, config: config};
			ctrl.reviews = data;
		})
		.error (function (data, status, headers, config) {
			/* DEBUG */ ctrl.response = {result: 'error', data: data, status: status, headers: headers, config: config};
			ctrl.error = 'Oops! Could not retrieve reviews';
		});
	}]);

	app.controller("VarietalController", ['$http', function($http) {
		var ctrl = this;
		$http.get('data/varietals.php')
		.success (function (data, status, headers, config) {
			/* DEBUG */ ctrl.response = {result: 'success', data: data, status: status, headers: headers, config: config};
			ctrl.varietals = data;
		})
		.error (function (data, status, headers, config) {
			/* DEBUG */ ctrl.response = {result: 'error', data: data, status: status, headers: headers, config: config};
			ctrl.error = 'Oops! Could not retrieve varietals';
		});
	}]);
})();