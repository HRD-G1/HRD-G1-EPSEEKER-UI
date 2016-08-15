var app = angular.module('indexapp', []);

app
		.controller(
				'expertCategory',
				function($scope, $http) {

					// get all subject name by category id //
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
							console.log(response.data);
							$scope.categories = response.data;
						}, function(response) {

						});
					}
					$scope.getAllSubjectByCategoryID(1);

					/*
					 * $scope.findAllBySubjectCategoryAndCount= function(catID){
					 * $http({
					 * url:'http://localhost:3333/rest/subject/bysubjectcategory/'+catID,
					 * url:
					 * 'http://localhost:7777/rest/subject/bysubjectcategory/'+catID,
					 * method:'GET' }).then(function(response){
					 * console.log(response.data); $scope.categories =
					 * response.data; }, function(response){
					 * 
					 * }); } $scope.findAllBySubjectCategoryAndCount(1);
					 */

					$scope.getExpertsByRandom = function() {
						$http({
							url : 'http://localhost:3333/rest/expertbyrandom',
							method : 'GET'
						}).then(function(response) {
							/*console.log("Expert");
							console.log(response.data);*/
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
							/*console.log("NUM");
							console.log(response.data);*/
							$scope.numOfSkills = response.data;
						}, function(response) {

						});
					}
					
					$scope.getStatistic();
				});


