var app = angular.module('expertFrontEndApp', []);

app
		.controller(
				'expertController',
				function($scope, $http) {

					/* get all subject name by category id */
					$scope.getAllSubjectByCategoryID = function(catID) {
						$http(
								{
									url : 'http://localhost:3333/rest/subject/bysubjectcategory/'
											+ catID,
									/*
									 * url:
									 * 'http://localhost:7777/rest/subject/bysubjectcategory/'+catID,
									 */
									method : 'GET'
								}).then(function(response) {
							/* console.log(response.data); */
							$scope.categories = response.data;
						}, function(response) {

						});
					}
					$scope.getAllSubjectByCategoryID(1);
					/* get all subject name by category id */

					$scope.getExpertsByRandom = function() {
						$http({
							url : 'http://localhost:3333/rest/expertbyrandom',
							method : 'GET'
						}).then(function(response) {
							/*
							 * console.log("Expert");
							 * console.log(response.data);
							 */
							$scope.experts = response.data;
						}, function(response) {

						});
					}

					$scope.getExpertsByRandom();

					$scope.getStatistic = function() {
						$http({
							url : 'http://localhost:3333/rest/subject/count',
							method : 'GET'
						}).then(function(response) {
							/*
							 * console.log("NUM"); console.log(response.data);
							 */
							$scope.numOfSkills = response.data;
						}, function(response) {

						});
					}

					$scope.getStatistic();

					// Searching Block

					$scope.getSubjectID = function(id) {
						window.location = "http://localhost:2244/search?id="
								+ id; // then go to this link searc page , get
						// it?

					}

					$scope.goToSearchBySubjectID = function(subjectID) {
						$http(
								{
									url : 'http://localhost:3333/rest/findExpertsBySubjectID/'
											+ subjectID,
									method : 'GET'
								}).then(function(response) {
							/*console.log(response);*/
							$scope.resultExpert = response.data;
						}, function(response) {

						});
					}

					$scope.test = function() {
						alert(1);
					}

					

					$scope.getMajor = function() {
						$http(
								{
									url : 'http://localhost:3333/rest/major',
									method : 'GET'
								}).then(function(response) {
							console.log(response.data);
							$scope.majorDatas = response.data;
							
							
						}, function(response) {

						});
					}
					
					$scope.getMajor();

					// Searching Block

				});
