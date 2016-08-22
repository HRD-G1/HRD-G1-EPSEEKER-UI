var app = angular.module('expertApplication', []);

app
		.controller(
				'expertController',
				function($scope, $http) {

					$scope.whenInsert = function() {
						alert(2);
						$scope.insertBOOL = true;
					}

					$scope.filter = {
						page : 1
					}

					// Start of Sub Skill block
					$scope.insertDataOfMainSkill = function() {
						console.log("Main Skill: ");
						console.log($scope.mainSkillName);
						$http({
							url : 'http://localhost:3333/rest/subjectcategory',
							method : "POST",
							data : {
								"SUBJECT_CATEGORY" : 0,
								"SUBJECT_CATEGORY_NAME" : $scope.mainSkillName
							}
						}).then(function(response) {
							$scope.getDataOfMainSkill();
							$scope.mainSkillName = "";
							swal({
								title : "Inserted",
								text : "Inserted Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Insert",
								text : "Inserted Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};

					$scope.subjectCategoryID;
					$scope.changeMainSkillID = function(OBJECT) {
						$scope.subjectCategoryID = OBJECT.SUBJECT_CATEOGRY_ID;
					}

					$scope.getUpdateMainSkill = function(mainSkill) {

						$scope.insertBOOL = false;

						$scope.mainSkillID = mainSkill.mks.SUBJECT_CATEOGRY_ID;
						$scope.mainSkillName = mainSkill.mks.SUBJECT_CATEGORY_NAME;

						console.log(mainSkill.mks.SUBJECT_CATEOGRY_ID);
					}

					$scope.updateMainSkill = function() {
						console.log("Main Skill: ");
						console.log($scope.mainSkillID);
						$http({
							url : 'http://localhost:3333/rest/subjectcategory',
							method : "PUT",
							data : {
								"SUBJECT_CATEGORY_NAME" : $scope.mainSkillName,
								"SUBJECT_CATEOGRY_ID" : $scope.mainSkillID,
								"subjectCategory" : $scope.mainSkillID
							}
						}).then(function(response) {
							$scope.getDataOfMainSkill();
							$scope.mainSkillName = "";
							swal({
								title : "Updated",
								text : "Updated Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Updated",
								text : "Updated Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};

					$scope.removeMainSkill = function(id) {
						swal(
								{
									title : "Are you sure?",
									text : "You will not be able to recover this imaginary file!",
									type : "warning",
									showCancelButton : true,
									confirmButtonColor : "#DD6B55",
									confirmButtonText : "Yes, delete it!",
									cancelButtonText : "No, cancel plx!",
									closeOnConfirm : false,
									closeOnCancel : false
								},
								function(isConfirm) {
									if (isConfirm) {
										$http(
												{
													url : 'http://localhost:3333/rest/subjectcategory/'
															+ id,
													method : "DELETE"
												})
												.then(
														function(response) {
															$scope
																	.getDataOfMainSkill();
															swal({
																title : "Deleted",
																text : "Deleted Successfully",
																timer : 500,
																showConfirmButton : false
															})
														},
														function(response) {
															swal({
																title : "Failed To Deleted",
																text : "Deleted Unsuccessfully",
																timer : 500,
																showConfirmButton : false
															});
														});
									} else {
										swal(
												"Cancelled",
												"Your imaginary file is safe :)",
												"error");
									}
								});

					}

					$scope.getDataOfMainSkill = function() {
						$http({
							url : 'http://localhost:3333/rest/subjectcategory',
							method : 'GET'
						}).then(function(response) {
							console.log(response)
							$scope.mainSkillSet = response.data.DATA; // array
						}, function(response) {

						});
					};
					$scope.getDataOfMainSkill();

					$scope.getDataOfSkill = function() {
						$http({
							url : 'http://localhost:3333/rest/subject',
							method : 'GET'
						}).then(function(response) {
							console.log("Main SKill DATA");
							console.log(response)
							$scope.skillSet = response.data.DATA; // array
						}, function(response) {

						});
					};
					$scope.getDataOfSkill();

					$scope.skillChange = function(skill) {
						console.log(skill);
					}
					$scope.insertDataOfSubSkill = function() {
						console.log($scope.mainSkillObject);
						$http(
								{
									url : 'http://localhost:3333/rest/subject',
									method : "POST",
									data : {
										"NUMBER_OF_EXPERT_EACH_SKILL" : 0,
										"NUM_OF_SKILLS" : 0,
										"SUBJECT_CATEGORY_ID" : $scope.subjectCategoryID,
										"SUBJECT_CATEGORY_NAME" : "string",
										"SUBJECT_ID" : 0,
										"SUBJECT_NAME" : $scope.subjectName
									}

								}).then(function(response) {
							$scope.subjectName = "";
							$scope.getDataOfSkill();
							swal({
								title : "Inserted",
								text : "Inserted Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Insert",
								text : "Inserted Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};

					$scope.getUpdateSkill = function(subject) {
						console.log(subject);

						$scope.insertBOOL = false;

						$scope.subjectID = subject.sub.SUBJECT_ID;
						$scope.subjectName = subject.sub.SUBJECT_NAME;
						$scope.subjectCategory = subject.sub.SUBJECT_CATEGORY_ID;
					}

					$scope.updateSkill = function() {
						$http(
								{
									url : 'http://localhost:3333/rest/subject',
									method : "PUT",
									data : {
										"NUMBER_OF_EXPERT_EACH_SKILL" : 0,
										"NUM_OF_SKILLS" : 0,
										"SUBJECT_CATEGORY_ID" : $scope.subjectCategoryID,
										"SUBJECT_CATEGORY_NAME" : "string",
										"SUBJECT_ID" : $scope.subjectID,
										"SUBJECT_NAME" : $scope.subjectName
									}
								}).then(function(response) {
							$scope.subjectName = "";
							$scope.getDataOfSkill();
							swal({
								title : "Updated",
								text : "Updated Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Updated",
								text : "Updated Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					}

					$scope.removeSkill = function(id) {
						swal(
								{
									title : "Are you sure?",
									text : "You will not be able to recover this imaginary Skill!",
									type : "warning",
									showCancelButton : true,
									confirmButtonColor : "#DD6B55",
									confirmButtonText : "Yes, delete it!",
									cancelButtonText : "No, cancel plx!",
									closeOnConfirm : false,
									closeOnCancel : false
								},
								function(isConfirm) {
									if (isConfirm) {
										$http(
												{
													url : 'http://localhost:3333/rest/subject/'
															+ id,
													method : "DELETE"
												})
												.then(
														function(response) {
															console
																	.log(response);
															if (response.data.CODE == 200) {
																$scope
																		.getDataOfMainSkill();
																swal({
																	title : "Deleted",
																	text : "Deleted Successfully",
																	timer : 500,
																	showConfirmButton : false
																})
															} else {
																swal({
																	title : "Failed To Deleted",
																	text : "Deleted Unsuccessfully",
																	timer : 500,
																	showConfirmButton : false
																});
															}

														}, function(response) {

														});
									} else {
										swal(
												"Cancelled",
												"Your imaginary file is safe :)",
												"error");
									}
								});

					}

					/* End of Sub Skill Block */

					/* Starting of University */

					$scope.getDataOfUniversity = function() {
						$http({
							url : 'http://localhost:3333/rest/university',
							method : 'GET'
						}).then(function(response) {
							console.log("this is university");
							console.log(response);
							$scope.universityObject = response.data.DATA; // array
							/*
							 * $('#PAGINATION_UNIVERSITY').bootpag({ total : 10,
							 * page : $scope.filter.page, // CURRENT // PAGE
							 * leaps : true, firstLastUse : true, first : '←',
							 * last : '→', next : 'Next', prev : 'Prev',
							 * maxVisible : 10 });
							 */
						}, function(response) {

						});
					};

					$scope.getDataOfUniversity();

					$scope.insertUniverty = function() {
						$http({
							url : 'http://localhost:3333/rest/university',
							method : "POST",
							data : {
								"UNIVERSITY_DESCRIPTION" : "",
								"UNIVERSITY_ID" : 0,
								"UNIVERSITY_NAME" : $scope.universityName
							}
						}).then(function(response) {
							$scope.universityName = "";
							$scope.getDataOfUniversity();
							swal({
								title : "Inserted",
								text : "Inserted Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Insert",
								text : "Inserted Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};

					$scope.getUpdateUniversity = function(uni) {

						$scope.insertBOOL = false;

						$scope.universityID = uni.uni.UNIVERSITY_ID;
						$scope.universityName = uni.uni.UNIVERSITY_NAME;
					}

					$scope.updateUniversity = function() {
						$http({
							url : 'http://localhost:3333/rest/university',
							method : "PUT",
							data : {
								"UNIVERSITY_DESCRIPTION" : "",
								"UNIVERSITY_ID" : $scope.universityID,
								"UNIVERSITY_NAME" : $scope.universityName
							}
						}).then(function(response) {
							$scope.universityName = "";
							$scope.getDataOfUniversity();
							swal({
								title : "Updated",
								text : "Updated Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Updated",
								text : "Updated Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					}

					$scope.removeUniversity = function(id) {
						swal(
								{
									title : "Are you sure?",
									text : "You will not be able to recover this imaginary file!",
									type : "warning",
									showCancelButton : true,
									confirmButtonColor : "#DD6B55",
									confirmButtonText : "Yes, delete it!",
									cancelButtonText : "No, cancel plx!",
									closeOnConfirm : false,
									closeOnCancel : false
								},
								function(isConfirm) {
									if (isConfirm) {
										$http(
												{
													url : 'http://localhost:3333/rest/university/'
															+ id,
													method : "DELETE"
												})
												.then(
														function(response) {
															$scope
																	.getDataOfUniversity();
															swal({
																title : "Deleted",
																text : "Deleted Successfully",
																timer : 500,
																showConfirmButton : false
															})
														},
														function(response) {
															swal({
																title : "Failed To Deleted",
																text : "Deleted Unsuccessfully",
																timer : 500,
																showConfirmButton : false
															});
														});
									} else {
										swal(
												"Cancelled",
												"Your imaginary file is safe :)",
												"error");
									}
								});

					}

					/* End of university */

					/* Starting of Major */
					$scope.insertMajor = function() {
						$http({
							url : 'http://localhost:3333/rest/major',
							method : "POST",
							data : {
								"MAJOR_ID" : 0,
								"MAJOR_NAME" : $scope.majorName
							}
						}).then(function(response) {
							$scope.majorName = "";
							$scope.getDataOfMajor();
							swal({
								title : "Inserted",
								text : "Inserted Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Insert",
								text : "Inserted Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};

					$scope.getUpdateMajor = function(major) {

						$scope.insertBOOL = false;

						$scope.majorID = major.maj.MAJOR_ID;
						$scope.majorName = major.maj.MAJOR_NAME;
					}

					$scope.updateMajor = function() {
						$http({
							url : 'http://localhost:3333/rest/major',
							method : "PUT",
							data : {
								"MAJOR_ID" : $scope.majorID,
								"MAJOR_NAME" : $scope.majorName
							}
						}).then(function(response) {
							$scope.majorName = "";
							$scope.getDataOfMajor();
							swal({
								title : "Updated",
								text : "Updated Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Updated",
								text : "Updated Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					}

					$scope.getDataOfMajor = function() {
						$http({
							url : 'http://localhost:3333/rest/major',
							method : "GET",
						}).then(function(response) {
							console.log("this is major");
							console.log(response);
							$scope.majorObject = response.data.DATA;
						}, function(response) {

						});
					};
					$scope.getDataOfMajor();

					$scope.removeMajor = function(id) {

						swal(
								{
									title : "Are you sure?",
									text : "You will not be able to recover this imaginary file!",
									type : "warning",
									showCancelButton : true,
									confirmButtonColor : "#DD6B55",
									confirmButtonText : "Yes, delete it!",
									cancelButtonText : "No, cancel plx!",
									closeOnConfirm : false,
									closeOnCancel : false
								},
								function(isConfirm) {
									if (isConfirm) {
										$http(
												{
													url : 'http://localhost:3333/rest/major/'
															+ id,
													method : "DELETE"
												})
												.then(
														function(response) {
															$scope
																	.getDataOfMajor();
															swal({
																title : "Deleted",
																text : "Deleted Successfully",
																timer : 500,
																showConfirmButton : false
															})
														},
														function(response) {
															swal({
																title : "Failed To Deleted",
																text : "Deleted Unsuccessfully",
																timer : 500,
																showConfirmButton : false
															});
														});
									} else {
										swal(
												"Cancelled",
												"Your imaginary file is safe :)",
												"error");
									}
								});

					}
					/* Ending of Major */

					/* Starting of Language */

					$scope.getDataOfLanguage = function() {
						$http({
							url : 'http://localhost:3333/rest/language',
							method : 'GET'
						}).then(function(response) {
							$scope.languageObject = response.data.DATA; // array
						}, function(response) {

						});
					};
					$scope.getDataOfLanguage();

					$scope.getUpdateLanguage = function(lan) {

						$scope.insertBOOL = false;

						$scope.languageID = lan.lan.LANGUAGE_ID;
						$scope.languageName = lan.lan.LANGUAGE_NAME;
					}

					$scope.updateLanguage = function() {
						$http({
							url : 'http://localhost:3333/rest/language',
							method : "PUT",
							data : {
								"LANGUAGE_DESCRIPTION" : "",
								"LANGUAGE_ID" : $scope.languageID,
								"LANGUAGE_NAME" : $scope.languageName
							}
						}).then(function(response) {
							$scope.languageName = "";
							$scope.getDataOfLanguage();
							swal({
								title : "Updated",
								text : "Updated Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Updated",
								text : "Updated Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					}

					$scope.removeLanguage = function(id) {
						swal(
								{
									title : "Are you sure?",
									text : "You will not be able to recover this imaginary file!",
									type : "warning",
									showCancelButton : true,
									confirmButtonColor : "#DD6B55",
									confirmButtonText : "Yes, delete it!",
									cancelButtonText : "No, cancel plx!",
									closeOnConfirm : false,
									closeOnCancel : false
								},
								function(isConfirm) {
									if (isConfirm) {
										$http(
												{
													url : 'http://localhost:3333/rest/language/'
															+ id,
													method : "DELETE"
												})
												.then(
														function(response) {
															$scope
																	.getDataOfLanguage();
															swal({
																title : "Deleted",
																text : "Deleted Successfully",
																timer : 500,
																showConfirmButton : false
															})
														},
														function(response) {
															swal({
																title : "Failed To Deleted",
																text : "Deleted Unsuccessfully",
																timer : 500,
																showConfirmButton : false
															});
														});
									} else {
										swal(
												"Cancelled",
												"Your imaginary file is safe :)",
												"error");
									}
								});

					}

					$scope.insertLanguage = function() {
						$http({
							url : 'http://localhost:3333/rest/language',
							method : "POST",
							data : {
								"LANGUAGE_DESCRIPTION" : "",
								"LANGUAGE_ID" : 0,
								"LANGUAGE_NAME" : $scope.languageName
							}
						}).then(function(response) {
							$scope.languageName = "";
							$scope.getDataOfLanguage();
							swal({
								title : "Inserted",
								text : "Inserted Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Insert",
								text : "Inserted Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};
					/* Ending of Language */

					// Country Block
					$scope.getDataOfCountry = function() {
						$http({
							url : 'http://localhost:3333/rest/country',
							method : 'GET'
						}).then(function(response) {
							console.log("country: ")
							console.log(response)
							$scope.countryObject = response.data.DATA; // array
						}, function(response) {

						});
					};

					$scope.getDataOfCountry();

					$scope.insertCountry = function() {
						$http({
							url : 'http://localhost:3333/rest/country',
							method : "POST",
							data : {
								"COUNTRY_ID" : 0,
								"COUNTRY_NAME" : $scope.countryName
							}
						}).then(function(response) {
							$scope.countryName = "";
							$scope.getDataOfCountry(); // refresh country
							swal({
								title : "Inserted",
								text : "Inserted Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Insert",
								text : "Inserted Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};

					$scope.getUpdateCountry = function(country) {

						$scope.insertBOOL = false;

						$scope.countryID = country.cou.COUNTRY_ID;
						$scope.countryName = country.cou.COUNTRY_NAME;

					}

					$scope.updateLanguage = function() {
						$http({
							url : 'http://localhost:3333/rest/country',
							method : "PUT",
							data : {
								"COUNTRY_ID" : $scope.countryID,
								"COUNTRY_NAME" : $scope.countryName
							}
						}).then(function(response) {
							$scope.countryName = "";
							$scope.getDataOfCountry();
							swal({
								title : "Updated",
								text : "Updated Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Updated",
								text : "Updated Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					}

					$scope.removeCountry = function(id) {
						swal(
								{
									title : "Are you sure?",
									text : "You will not be able to recover this imaginary file!",
									type : "warning",
									showCancelButton : true,
									confirmButtonColor : "#DD6B55",
									confirmButtonText : "Yes, delete it!",
									cancelButtonText : "No, cancel plx!",
									closeOnConfirm : false,
									closeOnCancel : false
								},
								function(isConfirm) {
									if (isConfirm) {
										$http(
												{
													url : 'http://localhost:3333/rest/country/'
															+ id,
													method : "DELETE"
												})
												.then(
														function(response) {
															$scope
																	.getDataOfCountry();
															swal({
																title : "Deleted",
																text : "Deleted Successfully",
																timer : 500,
																showConfirmButton : false
															})
														},
														function(response) {
															swal({
																title : "Failed To Deleted",
																text : "Deleted Unsuccessfully",
																timer : 500,
																showConfirmButton : false
															});
														});
									} else {
										swal(
												"Cancelled",
												"Your imaginary file is safe :)",
												"error");
									}
								});

					}

					// Country Block

					// Province Block

					$scope.getDataOfProvinceOrCity = function() {
						$http({
							url : 'http://localhost:3333/rest/cityorprovince',
							method : 'GET'
						}).then(function(response) {
							console.log("CITY: ")
							console.log(response)
							$scope.provinceOrCity = response.data.DATA; // array
						}, function(response) {

						});
					};

					$scope.getDataOfProvinceOrCity();

					$scope.getDataOfProvinceOrCityByCountryID = function(id) {
						$http(
								{
									url : 'http://localhost:3333/rest/cityorprovince/findAllBy/'
											+ id,
									method : 'GET'
								})
								.then(
										function(response) {
											console.log("CITY: ")
											console.log(response)
											$scope.provinceOrCityByCountryID = response.data.DATA; // array
										}, function(response) {

										});
					};

					$scope.getDataOfDistrictByProvinceID = function(id) {
						$http({
							url : 'http://localhost:3333/rest/district/' + id,
							method : 'GET'
						}).then(function(response) {
							console.log("CITY: ")
							console.log(response)
							$scope.provinceByCountryID = response.data.DATA; // array
						}, function(response) {

						});
					};

					$scope.insertProvince = function() {

						console.log($scope.countryID);

						$http(
								{
									url : 'http://localhost:3333/rest/cityorprovince',
									method : "POST",
									data : {
										"CITY_OR_PROVINCE_ID" : 0,
										"CITY_OR_PROVINCE_NAME" : $scope.provinceOrCityName,
										"COUNTRY_ID" : $scope.countryID
									}
								}).then(function(response) {
							$scope.provinceOrCityName = "";
							$scope.getDataOfProvinceOrCity();
							// Province Or
							// City
							swal({
								title : "Inserted",
								text : "Inserted Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Insert",
								text : "Inserted Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};

					$scope.getUpdateCityOrProvince = function(pro) {

						console.log(pro);

						$scope.insertBOOL = false;

						$scope.cityOrProvinceID = pro.pro.CITY_OR_PROVINCE_ID;
						$scope.provinceOrCityName = pro.pro.CITY_OR_PROVINCE_NAME;
						$scope.countryID = pro.pro.COUNTRY_ID;

					}

					$scope.updateCityOrProvince = function() {
						$http(
								{
									url : 'http://localhost:3333/rest/cityorprovince',
									method : "PUT",
									data : {
										"CITY_OR_PROVINCE_ID" : $scope.cityOrProvinceID,
										"CITY_OR_PROVINCE_NAME" : $scope.provinceOrCityName,
										"COUNTRY_ID" : $scope.countryID
									}
								}).then(function(response) {
							$scope.provinceOrCityName = "";
							$scope.getDataOfProvinceOrCity();
							swal({
								title : "Updated",
								text : "Updated Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Updated",
								text : "Updated Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					}

					$scope.removeCityOrProvince = function(id) {
						swal(
								{
									title : "Are you sure?",
									text : "You will not be able to recover this imaginary file!",
									type : "warning",
									showCancelButton : true,
									confirmButtonColor : "#DD6B55",
									confirmButtonText : "Yes, delete it!",
									cancelButtonText : "No, cancel plx!",
									closeOnConfirm : false,
									closeOnCancel : false
								},
								function(isConfirm) {
									if (isConfirm) {
										$http(
												{
													url : 'http://localhost:3333/rest/cityorprovince/'
															+ id,
													method : "DELETE"
												})
												.then(
														function(response) {
															$scope
																	.getDataOfProvinceOrCity();
															swal({
																title : "Deleted",
																text : "Deleted Successfully",
																timer : 500,
																showConfirmButton : false
															})
														},
														function(response) {
															swal({
																title : "Failed To Delete",
																text : "Deleted Unsuccessfully",
																timer : 500,
																showConfirmButton : false
															});
														});
									} else {
										swal(
												"Cancelled",
												"Your imaginary file is safe :)",
												"error");
									}
								});

					}

					// Province Block

					// District Block

					$scope.getDataOfDistrict = function() {
						$http({
							url : 'http://localhost:3333/rest/district',
							method : 'GET'
						}).then(function(response) {
							console.log("This is district");
							console.log(response);
							$scope.districtObject = response.data.DATA; // array
						}, function(response) {

						});
					};
					$scope.getDataOfDistrict();

					$scope.insertDistrict = function() {
						$http(
								{
									url : 'http://localhost:3333/rest/district',
									method : "POST",
									data : {
										"CITY_OR_PROVINCE_ID" : $scope.cityOrProvinceID,
										"CITY_OR_PROVINCE_NAME" : "",
										"COUNTRY_NAME" : "",
										"DISTRICT_ID" : 0,
										"DISTRICT_NAME" : $scope.districtName
									}

								}).then(function(response) {
							$scope.districtName = "";
							$scope.getDataOfDistrict();
							swal({
								title : "Inserted",
								text : "Inserted Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Insert",
								text : "Inserted Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};

					$scope.getUpdateDitrict = function(dis) {
						console.log("this id district: ")
						console.log(dis);

						$scope.insertBOOL = false;

						$scope.districtID = dis.dis.DISTRICT_ID;
						$scope.countryID = dis.dis.COUNTRY_ID
						$scope
								.getDataOfProvinceOrCityByCountryID($scope.countryID);
						$scope.cityOrProvinceID = dis.dis.CITY_OR_PROVINCE_ID;
						$scope.districtName = dis.dis.DISTRICT_NAME;
					}

					$scope.updateDistrict = function() {
						$http(
								{
									url : 'http://localhost:3333/rest/district',
									method : "PUT",
									data : {
										"CITY_OR_PROVINCE_ID" : $scope.cityOrProvinceID,
										"CITY_OR_PROVINCE_NAME" : "",
										"COUNTRY_NAME" : "",
										"DISTRICT_ID" : $scope.districtID,
										"DISTRICT_NAME" : $scope.districtName
									}

								}).then(function(response) {
							$scope.districtName = "";
							$scope.getDataOfDistrict();
							swal({
								title : "Updated",
								text : "Updated Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Update",
								text : "Updated Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};

					$scope.removeDistrict = function(id) {
						console.log(id);
						swal(
								{
									title : "Are you sure?",
									text : "You will not be able to recover this imaginary file!",
									type : "warning",
									showCancelButton : true,
									confirmButtonColor : "#DD6B55",
									confirmButtonText : "Yes, delete it!",
									cancelButtonText : "No, cancel plx!",
									closeOnConfirm : false,
									closeOnCancel : false
								},
								function(isConfirm) {
									if (isConfirm) {
										$http(
												{
													url : 'http://localhost:3333/rest/district/'
															+ id,
													method : "DELETE"
												})
												.then(
														function(response) {
															$scope
																	.getDataOfDistrict();
															swal({
																title : "Deleted",
																text : "Deleted Successfully",
																timer : 500,
																showConfirmButton : false
															})
														},
														function(response) {
															swal({
																title : "Failed To Delete",
																text : "Deleted Unsuccessfully",
																timer : 500,
																showConfirmButton : false
															});
														});
									} else {
										swal({
											title : "Delete Cancel",
											text : "Delete Cancel",
											timer : 500,
											showConfirmButton : false
										});
									}
								});

					}

					// District Block

					// Commune Block

					$scope.insertCommune = function() {
						$http({
							url : 'http://localhost:3333/rest/commune',
							method : "POST",
							data : {
								"CITY_OR_PROVINCE_ID" : 0,
								"CITY_OR_PROVINCE_NAME" : "",
								"COMMUNE_ID" : 0,
								"COMMUNE_NAME" : $scope.communeName,
								"COUNTRY_ID" : 0,
								"COUNTRY_NAME" : "",
								"DISTRICT_ID" : $scope.districtID,
								"DISTRICT_NAME" : ""
							}

						}).then(function(response) {
							$scope.communeName = "";
							$scope.getDataOfCommune();
							swal({
								title : "Inserted",
								text : "Inserted Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Insert",
								text : "Inserted Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};

					$scope.getDataOfCommune = function() {
						$http({
							url : 'http://localhost:3333/rest/commune',
							method : 'GET'
						}).then(function(response) {
							console.log("this is commune");
							console.log(response);
							$scope.communeObject = response.data.DATA; // array
						}, function(response) {

						});
					};

					$scope.getUpdateCommune = function(com) {
						$scope.insertBOOL = false;
						console.log(com);

						$scope.countryID = com.com.COUNTRY_ID;
						$scope
								.getDataOfProvinceOrCityByCountryID($scope.countryID);
						$scope.cityOrProvinceID = com.com.CITY_OR_PROVINCE_ID;
						$scope
								.getDataOfDistrictByProvinceID($scope.cityOrProvinceID);
						$scope.districtID = com.com.DISTRICT_ID;

						$scope.communeID = com.com.COMMUNE_ID;
						$scope.communeName = com.com.COMMUNE_NAME;
					}

					$scope.getDataOfCommune();

					$scope.updateCommune = function() {
						$http({
							url : 'http://localhost:3333/rest/commune',
							method : "PUT",
							data : {
								"CITY_OR_PROVINCE_ID" : 0,
								"CITY_OR_PROVINCE_NAME" : "",
								"COMMUNE_ID" : $scope.communeID,
								"COMMUNE_NAME" : $scope.communeName,
								"COUNTRY_ID" : 0,
								"COUNTRY_NAME" : "",
								"DISTRICT_ID" : $scope.districtID,
								"DISTRICT_NAME" : ""
							}

						}).then(function(response) {
							$scope.communeName = "";
							$scope.getDataOfCommune();
							swal({
								title : "Updated",
								text : "Updated Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Update",
								text : "Updated Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};

					$scope.removeCommune = function(id) {
						console.log(id);
						swal(
								{
									title : "Are you sure?",
									text : "You will not be able to recover this imaginary file!",
									type : "warning",
									showCancelButton : true,
									confirmButtonColor : "#DD6B55",
									confirmButtonText : "Yes, delete it!",
									cancelButtonText : "No, cancel plx!",
									closeOnConfirm : false,
									closeOnCancel : false
								},
								function(isConfirm) {
									if (isConfirm) {
										$http(
												{
													url : 'http://localhost:3333/rest/commune/'
															+ id,
													method : "DELETE"
												})
												.then(
														function(response) {
															$scope
																	.getDataOfCommune();
															swal({
																title : "Deleted",
																text : "Deleted Successfully",
																timer : 500,
																showConfirmButton : false
															})
														},
														function(response) {
															swal({
																title : "Failed To Delete",
																text : "Deleted Unsuccessfully",
																timer : 500,
																showConfirmButton : false
															});
														});
									} else {
										swal({
											title : "Delete Cancel",
											text : "Delete Cancel",
											timer : 500,
											showConfirmButton : false
										});
									}
								});

					}

					// Commune Block

					/* Starting of File */
					$scope.insertFileType = function() {
						$http({
							url : 'http://localhost:3333/rest/filedocument',
							method : "POST",
							data : {
								"FILE_DESCRIPTION" : "",
								"FILE_ID" : 0,
								"FILE_NAME" : $scope.fileTypeName
							}
						}).then(function(response) {
							$scope.fileTypeName = "";
							$scope.getDataOfFileType();
							swal({
								title : "Inserted",
								text : "Inserted Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Insert",
								text : "Inserted Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					};

					$scope.getUpdateFileType = function(file) {

						console.log("This is File UPdate");
						console.log(file);

						$scope.insertBOOL = false;

						$scope.fileTypeID = file.ft.FILE_ID;
						$scope.fileTypeName = file.ft.FILE_NAME;

					}

					$scope.getDataOfFileType = function() {
						$http({
							url : 'http://localhost:3333/rest/filedocument',
							method : 'GET'
						}).then(function(response) {
							console.log("this is file");
							console.log(response)
							$scope.fileType = response.data.DATA; // array
						}, function(response) {

						});
					};

					$scope.updateFileType = function() {
						console.log("Main Skill: ");
						console.log($scope.fileTypeID);
						$http({
							url : 'http://localhost:3333/rest/filedocument',
							method : "PUT",
							data : {
								"FILE_DESCRIPTION" : "",
								"FILE_ID" : $scope.fileTypeID,
								"FILE_NAME" : $scope.fileTypeName
							}
						}).then(function(response) {
							$scope.getDataOfFileType();
							$scope.mainSkillName = "";
							swal({
								title : "Updated",
								text : "Updated Successfully",
								timer : 500,
								showConfirmButton : false
							})
						}, function(response) {
							swal({
								title : "Failed To Updated",
								text : "Updated Unsuccessfully",
								timer : 500,
								showConfirmButton : false
							});
						});
					}

					$scope.removeFileType = function(id) {
						swal(
								{
									title : "Are you sure?",
									text : "You will not be able to recover this imaginary file!",
									type : "warning",
									showCancelButton : true,
									confirmButtonColor : "#DD6B55",
									confirmButtonText : "Yes, delete it!",
									cancelButtonText : "No, cancel plx!",
									closeOnConfirm : false,
									closeOnCancel : false
								},
								function(isConfirm) {
									if (isConfirm) {
										$http(
												{
													url : 'http://localhost:3333/rest/filedocument/'
															+ id,
													method : "DELETE"
												})
												.then(
														function(response) {
															$scope
																	.getDataOfFileType();
															swal({
																title : "Deleted",
																text : "Deleted Successfully",
																timer : 500,
																showConfirmButton : false
															})
														},
														function(response) {
															swal({
																title : "Failed To Delete",
																text : "Deleted Unsuccessfully",
																timer : 500,
																showConfirmButton : false
															});
														});
									} else {
										swal(
												"Cancelled",
												"Your imaginary file is safe :)",
												"error");
									}
								});

					}

					$scope.getDataOfFileType();
					/* Ending of File */

					// Add Expert
					// start personal information
					$scope.getDataOfCommuneByDistrictID = function(id) {
						$http({
							url : 'http://localhost:3333/rest/commune/' + id,
							method : 'GET'
						})
								.then(
										function(response) {
											console.log("this is commune");
											console.log(response);
											$scope.communeObjectByDistrictID = response.data.DATA; // array
										}, function(response) {

										});
					}

					$scope.getDataOfCommuneByDistrictIDOfCurrentAddress = function(
							id) {
						$http({
							url : 'http://localhost:3333/rest/commune/' + id,
							method : 'GET'
						})
								.then(
										function(response) {
											console.log("this is commune");
											console.log(response);
											$scope.communeObjectByDistrictIDOfCurrentAddress = response.data.DATA; // array
										}, function(response) {

										});
					}

					$scope.getDataOfProvinceOrCityByCountryIDOfCurrentAddress = function(
							id) {
						$http(
								{
									url : 'http://localhost:3333/rest/cityorprovince/findAllBy/'
											+ id,
									method : 'GET'
								})
								.then(
										function(response) {
											console.log("CITY: ")
											console.log(response)
											$scope.provinceOrCityByCountryIDOfCurrentAddress = response.data.DATA; // array
										}, function(response) {

										});
					};

					$scope.getDataOfDistrictByProvinceIDOfCurrentAddress = function(
							id) {
						$http({
							url : 'http://localhost:3333/rest/district/' + id,
							method : 'GET'
						})
								.then(
										function(response) {
											console.log("CITY: ")
											console.log(response)
											$scope.provinceByCountryIDOfCurrentAddress = response.data.DATA; // array
										}, function(response) {

										});
					};

					// end personal information

					// education

					$scope.eduOfExpert = [ {
						EDUCATION_END_YEAR : "",
						EDUCATION_START_YEAR : "",
						EXPERT_ID : 0,
						MAJOR_ID : 0,
						MAJOR_NAME : "",
						UNIVERSITY_ID : 0,
						UNIVERSITY_NAME : ""
					} ];

					$scope.numOfEdu = 0;

					$scope.addTempEduOfExpert = function() {
						$scope.eduOfExpert.push({
							EDUCATION_END_YEAR : "",
							EDUCATION_START_YEAR : "",
							EXPERT_ID : 0,
							MAJOR_ID : 0,
							MAJOR_NAME : "",
							UNIVERSITY_ID : 0,
							UNIVERSITY_NAME : ""
						})
					}

					// education

					// experience

					$scope.expOfExpert = [ {
						EXPERIENCE_END_YEAR : "",
						EXPERIENCE_START_YEAR : "",
						EXPERT_ID : 0,
						INSTITUTION_ADDRESS : "",
						INSTITUTION_ID : 0,
						INSTITUTION_NAME : "",
						PERIOD : "",
						POSITION_ID : "",
						POSITION_NAME : "",
						PROJECT_EXPERIENCE : ""
					} ];

					$scope.addTempExpOfExpert = function() {
						$scope.expOfExpert.push({
							EXPERIENCE_END_YEAR : "",
							EXPERIENCE_START_YEAR : "",
							EXPERT_ID : 0,
							INSTITUTION_ADDRESS : "",
							INSTITUTION_ID : 0,
							INSTITUTION_NAME : "",
							PERIOD : "",
							POSITION_ID : "",
							POSITION_NAME : "",
							PROJECT_EXPERIENCE : ""
						})
					}

					// experience

					$scope.showEduTest = function() {
						console.log("this is testing of language");
						console.log($scope.langOfExpert);
					}

					// call institution
					$scope.getDataOfInstitution = function() {
						$http({
							url : 'http://localhost:3333/rest/institution',
							method : 'GET'
						}).then(function(response) {
							console.log("this is intitution");
							console.log(response)
							$scope.institutionObject = response.data.DATA; // array
						}, function(response) {

						});
					};

					$scope.getDataOfInstitution();

					$scope.getDataOfPosition = function() {
						$http({
							url : 'http://localhost:3333/rest/position',
							method : 'GET'
						}).then(function(response) {
							console.log("this is position");
							console.log(response)
							$scope.positionObject = response.data.DATA; // array
						}, function(response) {

						});
					};

					$scope.getDataOfPosition();

					$scope.getDataOfInstitution();

					// current Job

					$scope.currentJobOfExpert = [ {
						EXPERT_ID : 0,
						INSTITUTIOIN_NAME : "",
						INSTITUTION_ADDRESS : "",
						INSTITUTION_EMAIL : "",
						INSTITUTION_ID : 0,
						INSTITUTION_PHONE : "",
						POSITION_ID : 0,
						POSITION_NAME : "",
						SALARY : 0
					} ];

					$scope.addTempCurrentJobOfExpert = function() {
						$scope.currentJobOfExpert.push({
							EXPERT_ID : 0,
							INSTITUTIOIN_NAME : "",
							INSTITUTION_ADDRESS : "",
							INSTITUTION_EMAIL : "",
							INSTITUTION_ID : 0,
							INSTITUTION_PHONE : "",
							POSITION_ID : 0,
							POSITION_NAME : "",
							SALARY : 0
						})
					}

					// current job

					// language

					$scope.langOfExpert = [ {
						EXPERT_ID : 0,
						LANGUAGE_ID : 0,
						LANGUAGE_NAME : "",
						MENTION : ""
					} ];

					$scope.addTempLanguageOfExpert = function() {
						$scope.langOfExpert.push({
							EXPERT_ID : 0,
							LANGUAGE_ID : 0,
							LANGUAGE_NAME : "",
							MENTION : ""
						});
					}

					// language

					// job expectation
					$scope.jobExpectationOfExpert = [ {
						EXPERT_ID : 0,
						LOCATION : "",
						MAX_SALARY : 0,
						MIN_SALARY : 0,
						POSITION_ID : 0,
						POSITION_NAME : ""
					} ];

					$scope.addTempjobExpectationOfExpert = function() {
						$scope.jobExpectationOfExpert.push({
							EXPERT_ID : 0,
							LOCATION : "",
							MAX_SALARY : 0,
							MIN_SALARY : 0,
							POSITION_ID : 0,
							POSITION_NAME : ""
						});
					}
					// job expectation

					// Add Expert

				});

app.controller('mainSkillAndSubSkillController', function($scope, $http) {

});

app.controller('universityController', function($scope, $http) {

});

app.controller('majorController', function($scope, $http) {

});

app.controller('languageController', function($scope, $http) {

});

app.controller('locationController', function($scope, $http) {

});

app.controller('fileTypeController', function($scope, $http) {

});
