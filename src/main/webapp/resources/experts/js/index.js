var app = angular.module('expertFrontEndApp', []);

app
		.controller(
				'expertController',
				function($scope, $http) {

					// expert detail
					$scope.getDataDetail = function(ID) {
						$http({
							url : 'http://localhost:3333/rest/expert/' + ID,
							/*
							 * url:
							 * 'http://localhost:7777/rest/subject/bysubjectcategory/'+catID,
							 */
							method : 'GET'
						}).then(function(response) {

							$scope.expertDetail = response.data;
							console.log("This is expert detail");
							console.log($scope.expertDetail);
						}, function(response) {

						});
					}
					// expert detail

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
								+ id;
					}

					$scope.filter = {
						page : 1
					}

					$scope.checkPagination = true;
					$scope.goToSearchBySubjectID = function(subjectID) {
						$http(
								{
									url : 'http://localhost:3333/rest/findExpertsBySubjectID/'
											+ subjectID,
									method : 'GET',
									params : {
										page : $scope.filter.page,
										limit : 120
									}
								})
								.then(
										function(response) {
											$scope.resultExpert = response.data.DATA;

											if ($scope.checkPagination) {
												/* alert("PAGINATION BLOCK") */
												$('#PAGINATION')
														.bootpag(
																{
																	total : response.data.PAGINATION.TOTAL_PAGES,
																	page : $scope.filter.page, // CURRENT
																	// PAGE
																	leaps : true,
																	firstLastUse : true,
																	first : '←',
																	last : '→',
																	next : 'Next',
																	prev : 'Prev',
																	maxVisible : 10
																});
												$scope.checkPagination = false;
											}
										}, function(response) {

										});
					}

					$('#PAGINATION').on("page", function(event, currentPage) {
						$scope.filter.page = currentPage;
						$scope.goToSearchBySubjectID(searchID);

					});

					// subjectSkill

					$scope.getSkill = function() {
						$http({
							url : 'http://localhost:3333/rest/subjectcategory',
							method : 'GET'
						}).then(function(response) {
							console.log(response.data);
							$scope.skills = response.data;

						}, function(response) {

						});
					}

					$scope.getSkill();

					var sujectSkills = {};
					$scope.getSubjectResults = function() {
						sujectSkills = $('input[name=subjectValues]:checked')
								.map(function() {
									return this.value;
								}).get();

					}

					$scope.test = function() {
						$scope.getSubjectResults();

						console.log(subjectString);
					}

					// subjectSkill

					// work experience

					$scope.getPosition = function() {
						$http({
							url : 'http://localhost:3333/rest/position',
							method : 'GET'
						}).then(function(response) {
							console.log(response.data);
							$scope.positions = response.data;
							$scope.positions[$scope.positions.length] = {
								POSITION_ID : 0,
								POSITION_NAME : "--Other--"
							};
						}, function(response) {

						});
					}

					$scope.getPosition();

					$scope.experienceValues = [ {
						EXP_VALUE : "1 Year",
						EXP_SHOW : "0-1 Year"
					}, {
						EXP_VALUE : "2 Years",
						EXP_SHOW : "1-2 Years"
					}, {
						EXP_VALUE : "3 Years",
						EXP_SHOW : "2-3 Years"
					}, {
						EXP_VALUE : "4 Years",
						EXP_SHOW : "3-4 Years"
					}, {
						EXP_VALUE : "5 Years",
						EXP_SHOW : "4 Years+"
					} ];

					// work experience

					// languages

					$scope.getLanguages = function() {
						$http({
							url : 'http://localhost:3333/rest/language',
							method : 'GET'
						}).then(function(response) {
							console.log(response.data);
							$scope.languages = response.data;
						}, function(response) {

						});
					}

					$scope.getLanguages();

					var languagesResults;
					$scope.getLanguageResults = function() {
						languagesResults = $(
								'input[name=languagesValues]:checked').map(
								function() {
									return this.value;

								}).get();
						console.log(languagesResults);
					}

					// age
					$scope.ages = [ {
						MIN_AGE : 18,
						MAX_AGE : 25,
						AGE_INFO : "18 - 25"
					}, {
						MIN_AGE : 26,
						MAX_AGE : 30,
						AGE_INFO : "26 - 30"
					}, {
						MIN_AGE : 31,
						MAX_AGE : 25,
						AGE_INFO : "31 - 50"
					} ];
					// age

					// location

					$scope.getLanguages = function() {
						$http({
							url : 'http://localhost:3333/rest/cityorprovince',
							method : 'GET'
						}).then(function(response) {
							console.log(response.data);
							$scope.locations = response.data;
						}, function(response) {

						});
					}

					$scope.getLanguages();

					// location

					$scope.expectedSalarys = [ {
						MIN_SALARY : 250,
						MAX_SALARY : 300,
						SALARY_INFO : "$ 250.00 - $ 300.00"
					}, {
						MIN_SALARY : 300,
						MAX_SALARY : 500,
						SALARY_INFO : "$ 300.00 - $ 500.00"
					}, {
						MIN_SALARY : 500,
						MAX_SALARY : 1000,
						SALARY_INFO : "$ 500.00 - $ 1000.00"
					}, {
						MIN_SALARY : 1000,
						MAX_SALARY : 5000,
						SALARY_INFO : "$ 1000.00 - $ 5000.00"
					} ];

					$scope.searchAdvance = function() {
						$scope.myDataOfSubjects = [];
						// subject array
						$scope.getSubjectResults();
						console.log("sub" + sujectSkills.length);
						for (var i = 0; i < sujectSkills.length; i++) {
							$scope.myDataOfSubjects.push({
								NUMBER_OF_EXPERT_EACH_SKILL : 0,
								NUM_OF_SKILLS : 10,
								SUBJECT_CATEGORY_ID : 0,
								SUBJECT_CATEGORY_NAME : '',
								SUBJECT_ID : sujectSkills[i],
								SUBJECT_NAME : ''
							});
						}
						//console.log($scope.myDataOfSubjects);

						// subject array

						// languages array
						$scope.getLanguageResults();
						languagesResults;
						$scope.myDataOfLanguages = [];
						for (var i = 0; i < languagesResults.length; i++) {
							$scope.myDataOfLanguages.push({
								LANGUAGE_DESCRIPTION : "",
								LANGUAGE_ID : languagesResults[i],
								LANGUAGE_NAME : ""
							})
						}
						
						console.log($scope.expPeroid);

						// languages array

						$http(
								{
									url : 'http://localhost:3333/rest/expert/advance',
									method : 'POST',
									data : {
										"MAX_AGE": 0,
										"MIN_AGE": 0,
										"DOB" : "string",
										"EDUCATIONS" : [ {
											"EDUCATION_END_YEAR" : "",
											"EDUCATION_START_YEAR" : "",
											"EXPERT_ID" : 0,
											"MAJOR_ID" : 0,
											"MAJOR_NAME" : "",
											"UNIVERSITY_ID" : 0,
											"UNIVERSITY_NAME" : ""
										} ],
										"EXPERT_ADVANCE_COURSE" : "",
										"EXPERT_CURRENT_ADDRESS" : {
											"CITY_OR_PROVINCE_ID" : 0,
											"CITY_OR_PROVINCE_NAME" : "",
											"COMMUNE_ID" : 0,
											"COMMUNE_NAME" : "",
											"COUNTRY_ID" : 0,
											"COUNTRY_NAME" : "",
											"DISTRICT_ID" : 0,
											"DISTRICT_NAME" : "",
											"EXPERT_ID" : 0
										},
										"EXPERT_CURRENT_JOBS" : [ {
											"EXPERT_ID" : 0,
											"INSTITUTIOIN_NAME" : "",
											"INSTITUTION_ADDRESS" : "",
											"INSTITUTION_EMAIL" : "",
											"INSTITUTION_ID" : 0,
											"INSTITUTION_PHONE" : "",
											"POSITION_ID" : 0,
											"POSITION_NAME" : "",
											"SALARY" : 0,
											"intitutionAddress" : ""
										} ],
										"EXPERT_DOCUMENTS" : [ {
											"DESCRIPTION" : "",
											"EXPERT_ID" : 0,
											"FILE_DOCUMENT_ID" : 0,
											"FILE_NAME" : "",
											"FILE_PATH" : ""
										} ],
										"EXPERT_EMAIL" : "",
										"EXPERT_EXPERIENCES" : [ {
											"EXPERIENCE_END_YEAR" : "",
											"EXPERIENCE_START_YEAR" : "",
											"EXPERT_ID" : 0,
											"INSTITUTION_ADDRESS" : "",
											"INSTITUTION_ID" : 0,
											"INSTITUTION_NAME" : "",
											"PERIOD" : $scope.expPeroid.PEROID,
											"POSITION_ID" : $scope.objPosition.POSITION_ID,
											"POSITION_NAME" : "",
											"PROJECT_EXPERIENCE" : ""
										} ],
										"EXPERT_FIRST_NAME" : "",
										"EXPERT_GENDER" : "",
										"EXPERT_GENDERATION" : 0,
										"EXPERT_ID" : 0,
										"EXPERT_JOB_EXPECTATIONS" : [ {
											"EXPERT_ID" : 0,
											"LOCATION" : "",
											"MAX_SALARY" : 0,
											"MIN_SALARY" : 0,
											"POSITION_ID" : 0,
											"POSITION_NAME" : ""
										} ],
										"EXPERT_LAST_NAME" : "",
										"EXPERT_PHONE1" : "",
										"EXPERT_PHONE2" : "",
										"EXPERT_PHOTO" : "",
										"EXPERT_STATUS" : "",
										"KA_ID" : 0,
										"LANGUAGES" : [ {
											"LANGUAGE_DESCRIPTION" : "",
											"LANGUAGE_ID" : 0,
											"LANGUAGE_NAME" : ""
										} ],
										"PLACE_OF_BIRTH" : {
											"CITY_OR_PROVINCE_ID" : 0,
											"CITY_OR_PROVINCE_NAME" : "",
											"COMMUNE_ID" : 0,
											"COMMUNE_NAME" : "",
											"COUNTRY_ID" : 0,
											"COUNTRY_NAME" : "",
											"DISTRICT_ID" : 0,
											"DISTRICT_NAME" : "",
											"EXPERT_ID" : 0
										},
										"PROJECT_LINK_DEMO" : "",
										"SUBJECTS" : $scope.myDataOfSubjects
									}
								}).then(function(response) {
							console.log(response.data);
							$scope.locations = response.data;
						}, function(response) {

						});

						console.log("After: ");

						console.log($scope.subjectString);
					}

					// Searching Block

				});
