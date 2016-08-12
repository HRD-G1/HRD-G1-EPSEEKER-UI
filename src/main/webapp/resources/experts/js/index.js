
	var app = angular.module('indexapp', []);
		app.controller('expertCategory', function($scope, $http){
			// get all 
			$scope.getSubjectCategory= function(){
			$http({
				url:'http://localhost:3333/rest/subjectcategory',
				method:'GET'
			}).then(function(response){
				$scope.category =  response.data;
				console.log($scope.category);
			}, function(response){
				
			});
			}
			$scope.getSubjectCategory();
			});
		