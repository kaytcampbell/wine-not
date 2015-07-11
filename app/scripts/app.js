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

	app.controller("WinesController", function() {
		this.wines = winedb;
	});

	app.controller("WineController", [ '$routeParams', function($routeParams) {
		this.wine = winedb.filter(function(wine) {
			return wine.id == $routeParams.id;
		})[0];
	}]);

	var winedb = [
		{
			id: '1',
			label: "Proprietor's Reserve",
			vineyard: "Jackson Trigg's",
			country: "International",
			varietal: "Merlot",
			description: 'JT iz teh bestst wine!!1',
			reviews: [{
				id: '1',
				year: '2014',
				rating: '3',
				description: "Not the best, but it'll do",
				date: '2015-04-17T17:28:13.511Z',
				store: 'the corner store',
				price: 8.5
			}, {
				id: '2',
				year: '2013',
				rating: '4',
				description: 'I lurvs me sum cheap ass wine',
				date: '2015-02-17T17:28:13.511Z',
				store: 'the corner store',
				price: 8.5
			}, {
				id: '3',
				year: '2010',
				rating: '5',
				description: 'A most excellent year for a classic vineyard.',
				date: '2015-03-17T17:28:13.511Z',
				store: 'the corner store',
				price: 8.99
			}]
		}, {
			id: '2',
			label: "",
			vineyard: "Stoneleigh",
			country: "New Zealand",
			varietal: "Sauvignon Blanc",
			description: "This wine is so good that you'll drank it all the time and won't be able to drink it anymore.",
			reviews: [{
				id: '1',
				year: '2014',
				rating: '3',
				description: "So fruity. Perfect for a hot summer's day.",
				date: '2015-04-17T17:28:13.511Z',
				store: 'the corner store',
				price: 18.5
			}, {
				id: '2',
				year: '2013',
				rating: '4',
				description: 'I almost bought some at the store today, but I know you used to be sick of drinking it.',
				date: '2015-02-17T17:28:13.511Z',
				store: 'the corner store',
				price: 19.5
			}, {
				id: '3',
				year: '2010',
				rating: '5',
				description: 'A most excellent year for a classic vineyard.',
				date: '2015-03-17T17:28:13.511Z',
				store: 'the corner store',
				price: 18.5
			}]
		}, {
			id: '3',
			label: "Proprietor's Reserve",
			vineyard: "Beringer",
			country: "United States - California",
			varietal: "Cabernet Sauvignon",
			description: "A nice heavy cab, perfect for steak or chocolate.",
			reviews: [{
				id: '1',
				year: '2014',
				rating: '3',
				description: "I brought some, so I hope you like it. It's my favourite",
				date: '2015-04-17T17:28:13.511Z',
				store: 'the corner store',
				price: 14.5
			}, {
				id: '2',
				year: '2013',
				rating: '4',
				description: "The Knight's Valley is better, but this one is cheaper",
				date: '2015-02-17T17:28:13.511Z',
				store: 'the corner store',
				price: 14.5
			}, {
				id: '3',
				year: '2010',
				rating: '5',
				description: 'A most excellent year for a classic vineyard.',
				date: '2015-03-17T17:28:13.511Z',
				store: 'the corner store',
				price: 14.5
			}]
		}
	];
})();