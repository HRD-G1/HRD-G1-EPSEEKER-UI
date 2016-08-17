var app = angular.module('expertApplication', []);

/*Start of Language Block*/
app.controller('languageController', function($scope, $http) {
	
	$scope.getDataOfLanguage = function () {
        $http({
            url: 'http://localhost:3333/rest/language',
            method: 'GET'
        }).then(function (respone) {
        	$scope.languageObject = respone.data; //array        	
        }, function (respone) {
        	
        });
    };
    $scope.getDataOfLanguage();
	
  /*  $scope.whenInsert = function() {
    	$scope.ifUpdate = true;
    	$scope.ifInsert = false;
    	
    	$scope.universityName="";
    	
	}*/
    
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
        	$scope.getDataOfLanguage();
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
    
    $scope.getUpdateLanguage = function(lan) {
    	
    	$scope.ifUpdate = false;
    	$scope.ifInsert = true;
    	
    	
    	$scope.languageID = lan.lan.LANGUAGE_ID;
    	$scope.languageName = lan.lan.LANGUAGE_NAME;
    }
    
    $scope.updateLanguage = function() {
    	$http({
            url: 'http://localhost:3333/rest/language', 
            method: "PUT",
            data: {
            	  "languageDescription": "",
            	  "languageID": $scope.languageID,
            	  "languageName": $scope.languageName
            	}
        }).then(function (respone) {        	
        	$scope.languageName = "";
        	$scope.getDataOfLanguage();
        	swal({title: "Updated", text: "Updated Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Updated", text: "Updated Unsuccessfully", timer: 500, showConfirmButton: false});
        });
	}
    
    
    $scope.removeLanguage = function(id) {
    	swal({   title: "Are you sure?",   text: "You will not be able to recover this imaginary file!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Yes, delete it!",   cancelButtonText: "No, cancel plx!",   closeOnConfirm: false,   closeOnCancel: false }, function(isConfirm){   
    		if (isConfirm) {     
	    			$http({
	    	            url: 'http://localhost:3333/rest/language/' + id, 
	    	            method: "DELETE"
	    	        }).then(function (respone) {        	
	    	        	$scope.getDataOfLanguage();
	    	        	swal({title: "Deleted", text: "Deleted Successfully", timer: 500, showConfirmButton: false})
	    	        }, function (respone) {
	    	        	swal({title: "Failed To Deleted", text: "Deleted Unsuccessfully", timer: 500, showConfirmButton: false});
	    	        });
    			} else {     
    				swal("Cancelled", "Your imaginary file is safe :)", "error");   
    				} });
    	
	}
    

});
/*End of Language Block*/


app.controller('mainSkillAndSubSkillController', function($scope, $http) {
	
	$scope.insertDataOfMainSkill = function () {
    	$http({
            url: 'http://localhost:3333/rest/subjectcategory', 
            method: "POST",
            data: {
            	  "subjectCategory": 0,
            	  "subjectCategoryName": $scope.mainSkillName
            }
        }).then(function (respone) {
        	$scope.getDataOfMainSkill();
        	$scope.mainSkillName = "";
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
    
    $scope.getUpdateMainSkill = function(mainSkill) {
    	
    	$scope.ifUpdate = false;
    	$scope.ifInsert = true;
    	$scope.mainSkillID = mainSkill.mks.SUBJECT_CATEGORY_ID;
    	$scope.mainSkillName = mainSkill.mks.SUBJECT_CATEGORY_NAME; 
		
	}
    
    $scope.updateMainSkill = function () {
    	$http({
            url: 'http://localhost:3333/rest/subjectcategory', 
            method: "PUT",
            data: {
            	  "subjectCategory": $scope.mainSkillID,
            	  "subjectCategoryName": $scope.mainSkillName
            }
        }).then(function (respone) {
        	$scope.getDataOfMainSkill();
        	$scope.mainSkillName = "";
        	swal({title: "Updated", text: "Updated Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Updated", text: "Updated Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
	
    $scope.removeMainSkill = function(id) {
    	swal({   title: "Are you sure?",   text: "You will not be able to recover this imaginary file!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Yes, delete it!",   cancelButtonText: "No, cancel plx!",   closeOnConfirm: false,   closeOnCancel: false }, function(isConfirm){   
    		if (isConfirm) {     
	    			$http({
	    	            url: 'http://localhost:3333/rest/subjectcategory/' + id, 
	    	            method: "DELETE"
	    	        }).then(function (respone) {        	
	    	         	$scope.getDataOfMainSkill();
	    	        	swal({title: "Deleted", text: "Deleted Successfully", timer: 500, showConfirmButton: false})
	    	        }, function (respone) {
	    	        	swal({title: "Failed To Deleted", text: "Deleted Unsuccessfully", timer: 500, showConfirmButton: false});
	    	        });
    			} else {     
    				swal("Cancelled", "Your imaginary file is safe :)", "error");   
    				} });
    	
	}
    
    $scope.getDataOfMainSkill = function () {
        $http({
            url: 'http://localhost:3333/rest/subjectcategory',
            method: 'GET'
        }).then(function (respone) {
        	console.log(respone)
        	$scope.mainSkillSet = respone.data; //array
        }, function (respone) {
        	
        });
    };
    $scope.getDataOfMainSkill();
    
    /*Sub Skill Block*/
    
    $scope.getDataOfSkill = function () {
        $http({
            url: 'http://localhost:3333/rest/subject',
            method: 'GET'
        }).then(function (respone) {
        	console.log(respone)
        	$scope.skillSet = respone.data; //array
        }, function (respone) {
        	
        });
    };
    $scope.getDataOfSkill();
    
    $scope.insertDataOfSubSkill = function () {
    	
    	$http({
            url: 'http://localhost:3333/rest/subject', 
            method: "POST",
            data:{
            	  "subjectCategoryID": $scope.subjectCategory,
            	  "subjectID": 0,
            	  "subjectName": $scope.subjectName
            	}
        }).then(function (respone) {        	
        	$scope.subjectName = "";
        	$scope.getDataOfSkill();
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
    
    $scope.getUpdateSkill = function(subject) {
    	console.log(subject);
    	$scope.ifUpdate = true;
    	$scope.ifInsert = false;
    	
    	$scope.subjectID = subject.sub.SUBJECT_ID;
    	$scope.subjectName = subject.sub.SUBJECT_NAME;
    	$scope.subjectCategory = subject.sub.SUBJECT_CATEGORY_ID;
	}
    
    $scope.updateSkill = function() {
    	$http({
            url: 'http://localhost:3333/rest/subject', 
            method: "PUT",
            data:{
            	  "subjectCategoryID": $scope.subjectCategory,
            	  "subjectID": $scope.subjectID,
            	  "subjectName": $scope.subjectName
            	}
        }).then(function (respone) {        	
        	$scope.subjectName = "";
        	$scope.getDataOfSkill();
        	swal({title: "Updated", text: "Updated Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Updated", text: "Updated Unsuccessfully", timer: 500, showConfirmButton: false});
        });
	}
    
    
    
    /*Sub Skill Block*/
});

app.controller('universityController', function($scope, $http) {
	
	$scope.getDataOfUniversity = function () {
        $http({
            url: 'http://localhost:3333/rest/university',
            method: 'GET'
        }).then(function (respone) {
        	$scope.universityObject = respone.data; //array        	
        }, function (respone) {
        	
        });
    };
    $scope.getDataOfUniversity();
	
  /*  $scope.whenInsert = function() {
    	$scope.ifUpdate = true;
    	$scope.ifInsert = false;
    	
    	$scope.universityName="";
    	
	}*/
    
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
        	$scope.getDataOfUniversity();
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
    
    $scope.getUpdateUniversity = function(uni) {
    	
    	
    	$scope.ifUpdate = false;
    	$scope.ifInsert = true;
    	
    	
    	$scope.universityID = uni.uni.UNIVERSITY_ID;
    	$scope.universityName = uni.uni.UNIVERSITY_NAME;
    }
    
    $scope.updateUniversity = function() {
    	$http({
            url: 'http://localhost:3333/rest/university', 
            method: "PUT",
            data: {
            	  "universityDescription": "",
            	  "universityID": $scope.universityID,
            	  "universityName": $scope.universityName
            	}
        }).then(function (respone) {        	
        	$scope.universityName = "";
        	$scope.getDataOfUniversity();
        	swal({title: "Updated", text: "Updated Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Updated", text: "Updated Unsuccessfully", timer: 500, showConfirmButton: false});
        });
	}
    
    
    $scope.removeUniversity = function(id) {
    	swal({   title: "Are you sure?",   text: "You will not be able to recover this imaginary file!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Yes, delete it!",   cancelButtonText: "No, cancel plx!",   closeOnConfirm: false,   closeOnCancel: false }, function(isConfirm){   
    		if (isConfirm) {     
	    			$http({
	    	            url: 'http://localhost:3333/rest/university/' + id, 
	    	            method: "DELETE"
	    	        }).then(function (respone) {        	
	    	        	$scope.getDataOfUniversity();
	    	        	swal({title: "Deleted", text: "Deleted Successfully", timer: 500, showConfirmButton: false})
	    	        }, function (respone) {
	    	        	swal({title: "Failed To Deleted", text: "Deleted Unsuccessfully", timer: 500, showConfirmButton: false});
	    	        });
    			} else {     
    				swal("Cancelled", "Your imaginary file is safe :)", "error");   
    				} });
    	
	}
    

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
        	$scope.getDataOfMajor();
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
    
    /*$scope.whenInsert = function(){
    	$scope.ifUpdate = false;
    	$scope.ifInsert = true;
    }*/
    
    $scope.getUpdateMajor = function(major) {
    	
    	$scope.ifUpdate = true;
    	$scope.ifInsert = false;
    	
		$scope.majorID = major.maj.MAJOR_ID;
		$scope.majorName = major.maj.MAJOR_NAME;
	}
    
    $scope.updateMajor = function(){
    	$http({
            url: 'http://localhost:3333/rest/major', 
            method: "PUT",
            data: {
            	  "majorID": $scope.majorID,
            	  "majorName": $scope.majorName
            	}
        }).then(function (respone) {        	
        	$scope.majorName = "";
        	$scope.getDataOfMajor();
        	swal({title: "Updated", text: "Updated Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Updated", text: "Updated Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    }
    
    $scope.getDataOfMajor = function () {
    	$http({
            url: 'http://localhost:3333/rest/major', 
            method: "GET",
        }).then(function (respone) {
        	$scope.majors = respone.data;
        }, function (respone) {
        	
        });
    };
    $scope.getDataOfMajor();
    
    
    $scope.removeMajor = function(id) {
  	
    	swal({   title: "Are you sure?",   text: "You will not be able to recover this imaginary file!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Yes, delete it!",   cancelButtonText: "No, cancel plx!",   closeOnConfirm: false,   closeOnCancel: false }, function(isConfirm){   
    		if (isConfirm) {     
	    			$http({
	    	            url: 'http://localhost:3333/rest/major/' + id, 
	    	            method: "DELETE"
	    	        }).then(function (respone) {        	
	    	        	$scope.getDataOfMajor();
	    	        	swal({title: "Deleted", text: "Deleted Successfully", timer: 500, showConfirmButton: false})
	    	        }, function (respone) {
	    	        	swal({title: "Failed To Deleted", text: "Deleted Unsuccessfully", timer: 500, showConfirmButton: false});
	    	        });
    			} else {     
    				swal("Cancelled", "Your imaginary file is safe :)", "error");   
    				} });
    	
	}
});

app.controller('languageController', function($scope, $http) {
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
	
//	Country Block
	$scope.insertCountry = function () {
    	$http({
            url: 'http://localhost:3333/rest/country', 
            method: "POST",
            data: {
            	  "countryID": 0,
            	  "countryName": $scope.countryName
            	}
        }).then(function (respone) {        	
        	$scope.countryName = "";
        	$scope.getDataOfCountry(); // refresh country
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
    
//    Country Block
    
//    Province Block
    $scope.getDataOfCountry = function () {
        $http({
            url: 'http://localhost:3333/rest/country',
            method: 'GET'
        }).then(function (respone) {
        	$scope.country = respone.data; //array
        }, function (respone) {
        	
        });
    };
    $scope.getDataOfCountry();
    
    $scope.insertProvince = function () {
    	$http({
            url: 'http://localhost:3333/rest/cityorprovince', 
            method: "POST",
            data:{
            	  "cityOrProvinceID": 0,
            	  "cityOrProvinceName": $scope.provinceOrCityName,
            	  "countryID": $scope.objectCountry.countryID
            	}
        }).then(function (respone) {        	
        	$scope.countryName = "";
        	$scope.getDataOfProvinceOrCity(); // refresh Province Or City
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
    	
//    Province Block

//    District Block
    $scope.getDataOfProvinceOrCity = function () {
        $http({
            url: 'http://localhost:3333/rest/cityorprovince' ,
            method: 'GET'
        }).then(function (respone) {
        	$scope.provinceOrCity = respone.data; //array
        }, function (respone) {
        	
        });
    };

    $scope.getDataOfProvinceOrCity();
    
    $scope.insertDistrict = function () {
    	$http({
            url: 'http://localhost:3333/rest/district', 
            method: "POST",
            data:{
            	  "cityOrProvinceID": $scope.objectProvince.cityOrProvinceID,
            	  "districtID": 0,
            	  "districtName": $scope.districtName
            	}
        }).then(function (respone) {        	
        	$scope.districtName = "";
        	$scope.getDataOfDistrict();
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
    
//    District Block
    
//    Commune Block

    $scope.getDataOfDistrict = function () {
        $http({
            url: 'http://localhost:3333/rest/district' ,
            method: 'GET'
        }).then(function (respone) {
        	$scope.district = respone.data; //array        	
        }, function (respone) {
        	
        });
    };
    $scope.getDataOfDistrict();
    
    $scope.insertCommune = function () {
    	$http({
            url: 'http://localhost:3333/rest/commune', 
            method: "POST",
            data:{
            	  "communeID": 0,
            	  "communeName": $scope.communeName,
            	  "districtID": $scope.objectDistrict.districtID
            	}
        }).then(function (respone) {        	
        	$scope.communeName = "";
        	$scope.getDataOfCommune();
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
    
    $scope.getDataOfCommune = function () {
        $http({
            url: 'http://localhost:3333/rest/commune',
            method: 'GET'
        }).then(function (respone) {
        	$scope.commune = respone.data; //array        	
        }, function (respone) {
        	
        });
    };
    
    $scope.getDataOfCommune();
    
//    Commune Block
});

app.controller('fileTypeController', function($scope, $http) {
	$scope.insertFileType = function () {
    	$http({
            url: 'http://localhost:3333/rest/filedocument', 
            method: "POST",
            data:{
            	  "fielDescription": "",
            	  "fileID": 0,
            	  "fileName": $scope.fileTypeName
            	}
        }).then(function (respone) {        	
        	$scope.fileTypeName = "";
        	$scope.getDataOfFileType();
        	swal({title: "Inserted", text: "Inserted Successfully", timer: 500, showConfirmButton: false})
        }, function (respone) {
        	swal({title: "Failed To Insert", text: "Inserted Unsuccessfully", timer: 500, showConfirmButton: false});
        });
    };
    
    $scope.getDataOfFileType = function () {
        $http({
            url: 'http://localhost:3333/rest/filedocument',
            method: 'GET'
        }).then(function (respone) {
        	$scope.fileType = respone.data; //array        	
        }, function (respone) {
        	
        });
    };
    
    $scope.upload = function(event){
		event.preventDefault();
		var frmData = new FormData();
		var files = angular.element('#file')[0].files;
		for(var i=0; i<files.length; i++)
			frmData.append("files", files[i]);
		
		$http({
			url: 'http://localhost:5555/api/v1/upload',
			method: 'POST',
			data: frmData,
			transformRequest: angular.identity,
            headers: {'Content-Type': undefined}
		}).then(function(response){
			console.log(response);
			$scope.message = response.data.message;
		}, function(response){
			console.log(response);
		});
	};
    
    $scope.getDataOfFileType();
});

app.controller('expertController', function($scope, $http) {
	
	/*$scope.uploadImage = function(){
		var formData = new FormData();
		formData.append('image',  $("#image")[0].files[0]);
		alert(formData);
     	$.ajax({
            url: "http://localhost:3333/rest/uploadphoto",
            type:"POST",
         	enctype : 'multipart/form-data',
			data : formData ,
			cache: false,
			crossDomain: true,
			processData : false, // tell jQuery not to process the data
			contentType : false, // tell jQuery not to set contentType
  	        beforeSend: function(xhr) {
				xhr.setRequestHeader('Access-Control-Allow-Origin', '*');
				xhr.setRequestHeader('Authorization', 'Basic ZWxpYnJhcnlBRE1JTjplbGlicmFyeVBAU1NXT1JE');
  	        },
            success: function(data) {
            	console.log(data);
            	$("#resultImage").attr("src", data.ORIGINAL_IMAGE);
            	$("#resultImageThumbnail").attr("src", data.THUMBNAIL_IMAGE);
            	$("#resultImage").show();
            	$("#resultImageThumbnail").show();
            },
         	error: function(data){
         		console.log(data);
			}
        });
	};*/
	
});



