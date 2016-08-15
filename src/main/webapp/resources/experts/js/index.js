
	var app = angular.module('indexapp', []);
	
	
		app.controller('expertCategory', function($scope, $http){
			
		// get all subject name by category id //
			$scope.getAllSubjectByCategoryID= function(catID){
				$http({
					url:'http://localhost:3333/rest/subject/bysubjectcategory/'+catID,
					/*url: 'http://localhost:7777/rest/subject/bysubjectcategory/'+catID,*/
					method:'GET'
				}).then(function(response){
					console.log(response.data);	
					$scope.categories =  response.data;
				}, function(response){

				});
				}
			$scope.getAllSubjectByCategoryID(1);
			
/*			$scope.findAllBySubjectCategoryAndCount= function(catID){
				$http({
					url:'http://localhost:3333/rest/subject/bysubjectcategory/'+catID,
					url: 'http://localhost:7777/rest/subject/bysubjectcategory/'+catID,
					method:'GET'
				}).then(function(response){
					console.log(response.data);	
					$scope.categories =  response.data;
				}, function(response){

				});
				}
			$scope.findAllBySubjectCategoryAndCount(1);*/
		});	
		
		
		
		
		
		
		