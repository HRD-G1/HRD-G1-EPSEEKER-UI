var app = angular.module('expertApplication', []);
app.controller('mainSkillAndSubSkillController', function($scope, $http) {
	
	$scope.insertDataOfMainSkill = function () {
    	$http({
            url: 'http://localhost:3333/rest/subjectcategory', 
            method: "POST",
            data: {
            	  "subjectCategory": 0,
            	  "subjectCategoryName": $scope.mainSkill
            }
        }).then(function (respone) {        	
        	$scope.mainSkill = "";
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
	
    
    
    /*Sub Skill Block*/
    
    $scope.getDataOfMainSkill = function () {
        $http({
            url: 'http://localhost:3333/rest/subjectcategory',
            method: 'GET'
        }).then(function (respone) {
        	$scope.mainSkillSet = respone.data; //array
        }, function (respone) {
        	
        });
    };
    
    $scope.getDataOfMainSkill();
    
    $scope.insertDataOfSubSkill = function () {
    	console.log($scope.subjectCategory);
    	$http({
            url: 'http://localhost:3333/rest/subject', 
            method: "POST",
            data:{
            	  "subjectCategoryID": $scope.subjectCategory.subjectCategory,
            	  "subjectID": 0,
            	  "subjectName": $scope.subjectName
            	}
        }).then(function (respone) {        	
        	$scope.subjectName = "";
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
    
    /*Sub Skill Block*/
});

app.controller('universityController', function($scope, $http) {
	$scope.insertUniverty = function () {
    	$http({
            url: 'http://localhost:3333/rest/university', 
            method: "POST",
            data: {
            	  "universityDescription": "",
            	  "universityID": 0,
            	  "universityName": $scope.universityName
            	}
        }).then(function (respone) {        	
        	$scope.universityName = "";
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
});

app.controller('majorController', function($scope, $http) {
	$scope.insertMajor = function () {
    	$http({
            url: 'http://localhost:3333/rest/major', 
            method: "POST",
            data: {
            	  "majorID": 0,
            	  "majorName": $scope.majorName
            	}
        }).then(function (respone) {        	
        	$scope.majorName = "";
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
});

app.controller('majorController', function($scope, $http) {
	$scope.insertLanguage = function () {
    	$http({
            url: 'http://localhost:3333/rest/language', 
            method: "POST",
            data: {
            	  "languageDescription": "",
            	  "languageID": 0,
            	  "languageName": $scope.languageName
            	}
        }).then(function (respone) {        	
        	$scope.languageName = "";
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
});

app.controller('locationController', function($scope, $http) {
	
	
	$scope.insertCountry = function () {
		console.log($scope.countryName);
    	$http({
            url: 'http://localhost:3333/rest/country', 
            method: "POST",
            data: {
            	  "countryID": 0,
            	  "countryName": $scope.countryName
            	}
        }).then(function (respone) {        	
        	$scope.countryName = "";
        	$scope.getDataOfProvinceOrCity();
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
    
    $scope.getDataOfProvinceOrCity = function () {
        $http({
            url: 'http://localhost:3333/rest/country',
            method: 'GET'
        }).then(function (respone) {
        	$scope.country = respone.data; //array
        	console.log($scope.province);
        }, function (respone) {
        	
        });
    };
    
    $scope.getDataOfProvinceOrCity();
    
    
    
});





