
	var app = angular.module('indexapp', []);
	
	// subject category
		app.controller('expertCategory', function($scope, $http){
//			 get subject category all 
			$scope.getSubjectCategory= function(category){
				console.log(category);
			$http({
				url:'http://localhost:7777/rest/subject/bysubjectcategory/'+category.c.subjectCategory,
				method:'GET'
			}).then(function(response){
				$scope.skills =  response.data;
				console.log($scope.categoryid);
				console.log($scope.skills);
			}, function(response){
				
			});
			}
//			$scope.getSubjectCategory(3);
			
			
			
			$scope.getSubjectAndSubjectCategory= function(){
				$http({
					url:'http://localhost:7777/rest/subjectcategory/',
					method:'GET'
				}).then(function(response){
					$scope.category =  response.data;
					console.log($scope.category);
				}, function(response){
					
				});
				}
				$scope.getSubjectAndSubjectCategory();
		});

			