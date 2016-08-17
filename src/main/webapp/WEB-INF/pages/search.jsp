<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="expertFrontEndApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- My APP -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/experts/js/index.js"></script>
<!-- My APP -->

<!-- font for navbar -->
<link href='https://fonts.googleapis.com/css?family=Angkor'
	rel='stylesheet' type='text/css'>

<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css"><!--
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script> -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/experts/ui/ui.min.css">
<!--custom-->
<link
	href="${pageContext.request.contextPath}/resources/experts/css/custom.css"
	rel="stylesheet" type="text/css">

<!-- font-awesome-4.6.3 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/expert/font-awesome-4.6.3/css/font-awesome.min.css">
	
<script src="${pageContext.request.contextPath}/resources/experts/js/jquery.bootpage.min.js"></script>

<script>
	var SUB_ID = '<%=request.getParameter("id")%>';
	
	function pageLoad(){
		goToSearchBySubjectID(SUB_ID);
	}
</script>
</head>
<div >
	<body ng-controller="expertController" ng-init="goToSearchBySubjectID(<%=request.getParameter("id")%>)">
		<!-- start navbar -->
		<div class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<div class="navbar-header ">
					<button type="button" class="navbar-toggle " data-toggle="collapse"
						data-target="#navbar-ex-collapse">
						<span class="sr-only ">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!--  <a class="navbar-brand"><i class="fa -retro fa-crosshairs"></i></a> -->
					<a class="navbar-brand"> <img alt="EPSEEKER" class="logo"
						src="${pageContext.request.contextPath}/resources/experts/img/logo11.png">
					</a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-ex-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="menu"><a href="/"
							class="waves-effect waves-light "><i class="fa fa-home "></i>
								ទំព័រដើម</a></li>
						<li class="menu"><a href="/contact"
							class="waves-effect waves-light "><i class="fa fa-phone "></i>ទំនាក់ទំនង</a>
						</li>
						<li class=" menu"><a href="/about"
							class="waves-effect waves-light"><i class="fa fa-user-secret"></i>
								អំពី</a></li>
						<li class="menu"><a href="/login"
							class="waves-effect waves-light "><i class="fa fa-sign-in "></i>
								ចូល</a></li>
						<li class="menu"><a href="/signup"
							class="waves-effect waves-light "> <i class="fa fa-user-plus"></i>ចុះឈ្មោះ
						</a></li>
						<!-- <li>
              <a href="/search" class="waves-effect waves-light ">SEARCH</a>
            </li> -->
					</ul>
				</div>
			</div>
		</div>
		<!--end bavbar-->
		<br>
		<br>
		<br>
		<br>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default text-justify">
						<div class="panel-body">
							<div style="word-wrap: break-word;" class="text-left;">
								<p​​ >ទំព័រនេះជួយអ្នកក្នុងការស្វែងរកអ្នកជំនាញIT​ទៅតាមអ្វីដែលអ្នកចង់បាន។​ផ្នែកទាំងពីរខាងក្រោមពិតជាសំខាន់សម្រាប់អ្នក។​អ្នកគ្រាន់តែដឹង
									ពីររបៀបប្រើប្រាស់វាគឺគ្រប់គ្រាន់។ផ្នែកខាងឆ្វេងជាកន្លែងសម្រាប់កំណត់តម្រូវការរបស់អ្នក
									បន្ទាប់មកចុចលើប៊ូតុងស្វែងរក។​ ផ្នែកខាងស្ដាំជា
									កន្លែងសម្រាប់បង្ហាញលទ្ធផល។</p>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12"></div>
			</div>
			<div class="row">
				<div class="col-md-5">
					<div class="panel panel-primary text-left">
						<div class="panel-heading ">ឧបករណ៍ស្វែងរក</div>
						<div class="panel-body">
							<!--start panel search body-->
							<div id="accordion">
								<!--   <h3>MAIN SKILL &amp; SUB SKILLS</h3> -->
								  <div>
								  <h4 class="well-sm">CHOOSE EXPERT SKILL</h4>
								  	<h5>MAIN SKILL</h5>
									  		<select class="form-control" ng-model="objSkill" ng-options="sk.SUBJECT_CATEGORY_NAME for sk in skills" >
									  			<option style="display: none" value="">--Select--</option>
									  		</select>
									<h5>SUB SKILLS</h5>
									  		<div class="row" ng-repeat="subskill in objSkill.SUBJECT">
									  			<div class="col-md-12 col-sm-12" >
										  			<input type="checkbox"  class="col-md-6" value="{{subskill.SUBJECT_ID}}" name="subjectValues"/>{{subskill.SUBJECT_NAME}}
										  		</div>
											</div>
											
											<button ng-click="searchAdvance()">Test</button>
											
											<!--  -->
											<br>
											<h4 class="well-sm">WORK EXPERIENCE</h4>
											<h5>POSITION EXPERIENCE</h5>
											  		<select class="form-control" ng-model="objPosition" ng-options="pos.POSITION_NAME for pos in positions">
											  			<option style="display: none" value="">--Select--</option>
											  		</select>
											  		<h4>YEAR OF EXPERIENCE</h4>
											  		<select class="form-control" ng-model="expPeroid" ng-options="ev.EXP_SHOW for ev in experienceValues" >
											  			<option style="display: none" value="">--Select--</option>
											  		</select>
											<!--  -->
											
											<h4 class="well-sm">PERSONAL INFORMATION</h4>
											 <h5>LANGUAGE</h5>
											  		<div class="row">
											  			<div class="col-md-6 col-sm-6" ng-repeat="lang in languages">
												  			<input type="checkbox" class="col-md-6" name="languagesValues" value="{{lang}}"/>{{lang.LANGUAGE_NAME}}
												  		</div>
													</div><br>
												<h5>GENDER</h5>
											  		<select class="form-control">
											  			<option>Both</option>
											  			<option>Male</option>
											  			<option>Female</option>
											  		</select>
											  	<h5>AGE</h5>
											  		<select class="form-control" ng-model="objAge" ng-options="age.AGE_INFO for age in ages">
											  			<option style="display: none" value="">--Select--</option>
											  		</select>
											  <h5>LOCATION</h5>
											  		<select class="form-control" ng-model="objLocation" ng-options="loc.CITY_OR_PROVINCE_NAME for loc in locations">
											  			<option style="display: none" value="">--Select--</option>
											  		</select>
											<!--  -->
											
											<!--  -->
								 <h4 class="well-sm">JOB EXPECTATION</h4>
								  <div>
								  	<h5>EXPECTED SALARY</h5>
								  		<select class="form-control" ng-model="objSalary" ng-options="sa.SALARY_INFO for sa in expectedSalarys">
								  			<option style="display: none" value="">--Select--</option>
								  		</select>
								  </div>
								  </div>
								</div><br>
								<div class="row">
									<div class="col-md-offset-4">
										<button class="btn btn-primary">Search</button>
									</div>
								</div>
						</div>
						<!--end panel search body-->
					</div>
				</div>
				<div class="col-md-7">
					<!--start panel result-->
					<div class="panel panel-primary text-left">
						<div class="panel-heading ">លទ្ធផលស្វែងរក</div>
						<div class="panel-body">
							<!-- ly  -->
							<table	class="table table-striped table-hover table-condensed table-responsive">
								<thead>
									<tr>
										<th>រូបថត</th>
										<th>ឈ្មោះ</th>
										<th>ជំនាញ</th>
										<th>ប្រាក់ខែ</th>
										<th>មើល</th>	
									</tr>
								</thead>
								<tbody>
									<tr ng-repeat="ers in resultExpert">
										<td style="width: 120px; text-align: center;">
											<div>
												<img
													src="${pageContext.request.contextPath}/resources/experts/img/tempPic.png"
													width="85px" height="85px" alt="" class="circle">
											</div>
										</td>
										<td><br> <br>{{ers.EXPERT_FIRST_NAME}}
											{{ers.EXPERT_LAST_NAME}}</td>
										<td><em><i><br> <br>{{ers.EXPERT_ADVANCE_COURSE}}</i></em></td>
										<td><br> <br>{{ers.EXPERT_JOB_EXPECTATIONS[0].MIN_SALARY | currency}}  {{ers.EXPERT_JOB_EXPECTATIONS[0].MAX_SALARY | currency}}</td>
										<td style="float: left;"><br> <br> <a
											style="cursor: pointer;"
											class="secondary-content  tooltipped" data-position="bottom"
											data-delay="50" data-tooltip="មើលលំអិតបន្ថែម"><i
												class="material-icons">visibility</i></a></td>
									</tr>
								</tbody>

							</table>
							<!-- ly -->
							<div id="PAGINATION"></div>
						</div>
					</div>
				</div>
				<!--end panel result-->
			</div>
		</div>
		<script type="text/javascript">
			var searchID = '<%=request.getParameter("id")%>';
		</script>
	</body>
</div>
<jsp:include page="expert/fragements/footer/footer.jsp"></jsp:include>
</html>

