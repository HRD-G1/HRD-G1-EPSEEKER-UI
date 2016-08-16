var app = angular.module('expertFrontEndApp', []);

app
		.controller(
				'expertController',
				function($scope, $http) {

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

					$scope.getSubjectResults = function() {
						var sujectSkills = $(
								'input[name=subjectValues]:checked').map(
								function() {
									return this.value;

								}).get();
						console.log(sujectSkills);
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

					$scope.getLanguageResults = function() {
						var languagesResults = $(
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
					
					$scope.expectedSalarys = [
					                          {MIN_SALARY: 250, MAX_SALARY: 300, SALARY_INFO: "$ 250.00 - $ 300.00"},
					                          {MIN_SALARY: 300, MAX_SALARY: 500, SALARY_INFO: "$ 300.00 - $ 500.00"},
					                          {MIN_SALARY: 500, MAX_SALARY: 1000, SALARY_INFO: "$ 500.00 - $ 1000.00"},
					                          {MIN_SALARY: 1000, MAX_SALARY: 5000, SALARY_INFO: "$ 1000.00 - $ 5000.00"}
					                          ];

					// Searching Block

				});
