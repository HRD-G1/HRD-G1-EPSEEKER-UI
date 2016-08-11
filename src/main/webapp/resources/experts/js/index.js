
	var app = angular.module('indexapp', []);
	
	// subject category
	
		app.controller('expertCategory', function($scope, $http){
			// get subject category all 
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
			$scope.test2;
			$scope.test= function(cate){
					$scope.test2=cate;
					console.log($scope.test2);
				}
			$scope.getSubjectCategory();
			});
		
	// subject 	
	app.controller('subjectname', function($scope, $http){
			// get subject all
			$scope.getSubject= function(id){
				$http({
					url:'http://localhost:3333/rest/subject/bysubjectcategory/'+id,
					method:'GET'
				}).then(function(response){
					$scope.subjects =  response.data;
					console.log($scope.subjects);
				}, function(response){
					
				});
				}
			
			
			$scope.getSubject();
			});
	
	
