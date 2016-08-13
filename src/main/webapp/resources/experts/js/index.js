
	var app = angular.module('indexapp', []);
	
	// get all subject name by category id //
		app.controller('expertCategory', function($scope, $http){
			$scope.getSubjectCategory= function(category){
			$http({
				url:'http://localhost:3333/rest/subject/bysubjectcategory/'+category.c.subjectCategory,
				method:'GET'
			}).then(function(response){
				$scope.skills =  response.data;
				console.log($scope.categoryid);
				console.log($scope.skills);
			}, function(response){
			});
			}
	// get all subject name by category id //
			
			
			
	// get all subject category name //
			$scope.getSubjectAndSubjectCategory= function(){
				$http({
					url:'http://localhost:3333/rest/subjectcategory/',
					method:'GET'
				}).then(function(response){
					
					$scope.category =  response.data;
					console.log($scope.category);
				}, function(response){

				});
				}
				$scope.getSubjectAndSubjectCategory();
	
	// get all subject category name //
	
		$scope.getRandomExperts= function(){
			$http({
				url:'http://localhost:3333/rest/expert/',
				method:'GET'
			}).then(function(response){
				$scope.experts =  response.data;
				console.log($scope.experts);
			}, function(response){

			});
			}
		$scope.getRandomExperts();
		
		});		
		
		
		