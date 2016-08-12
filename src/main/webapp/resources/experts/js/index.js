
	var app = angular.module('indexapp', []);
	
	// get all subject name by category id //
		app.controller('expertCategory', function($scope, $http){
			
			$scope.getSubjectCategory= function(category){
				console.log(category.c.subjects);
				$scope.subjects = category.c.subjects;
				console.log($scope.subjects.subjects);
			}
	// get all subject name by category id //
			
	// get all subject category name //
			$scope.getSubjectAndSubjectCategory= function(){
				$http({
					url:'http://localhost:3333/rest/subjectcategory/',
					method:'GET'
				}).then(function(response){
					console.log(response);	
					$scope.category =  response.data;
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
		
		
		
		
		
		
		