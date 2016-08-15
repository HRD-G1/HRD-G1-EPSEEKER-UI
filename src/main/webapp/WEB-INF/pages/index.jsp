<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="expertFrontEndApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
<!-- Angular -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.6/angular.min.js"></script>

<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/experts/css/sui/ui.min.css"> --%>
<!--custom-->
<link
	href="${pageContext.request.contextPath}/resources/experts/css/custom.css"
	rel="stylesheet" type="text/css">

<!-- Exucuse Me can i put my cdn here? - Recommend Expert -->

<style>
.paging-nav a {
	background-color: teal;
	padding: 5px;
	margin: 2px;
	color: #FFF;
	border-radius: 3px;
}
</style>

<!-- Exucuse Me can i put my cdn here? - Recommend Expert -->

<script>
	$.noConflict();
	jQuery(document).ready(function($) {
		$('select').material_select();
		$('.slider').slider({
			full_width : true
		});

	});
</script>
<!-- statistic css  -->
<link
	href="${pageContext.request.contextPath}/resources/experts/css/statistic.css"
	rel="stylesheet" type="text/css">
<!-- js index  -->
<script
	src="${pageContext.request.contextPath}/resources/experts/js/index.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

</head>
<body ng-controller="expertController">

	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header ">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-ex-collapse">
					<span class="sr-only ">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- <a class="navbar-brand"><i class="-retro fa fa-crosshairs"></i></a> -->
				<a class="navbar-brand"> <img alt="EPSEEKER"
					class="img-responsive logo"
					src="${pageContext.request.contextPath}/resources/experts/img/logo11.png">
				</a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-ex-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class=" active menu"><a href="/"
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
	<!--start carousel-->
	<div class="slider">
		<ul class="slides">
			<li><img
				src="${pageContext.request.contextPath}/resources/experts/img/3rd.jfif">
			</li>
			<li><br> <br> <img
				src="${pageContext.request.contextPath}/resources/experts/img/4th.jpg">
			</li>
		</ul>
	</div>
	<!--end carousel-->
	<br>
	<!--container developer-->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-primary ">
					<div class="panel-heading  text-center">សូមស្វាគមន៍</div>
					<div class="panel-body ">
						<p ​ style="word-wrap: break-word;" class="text-justify;">
							<span>នេះគឺជាគេហទំព័រមួយដែលជួយដល់និយោជកឬអ្នកដែលមានបំណងចង់ស្វែងរក​បុគ្គលិកសម្រាប់បម្រើការនៅក្រុមហ៊ុនរបស់ខ្លួនបានដោយ
								ផ្ដល់នូវមុខងារស្វែង​រកជាច្រើន។
								បេក្ខភាពទាំងអស់​នៅគេហទំព័រនេះសុទ្ធ​តែជាអតីតនិស្សិតរបស់មជ្ឈមណ្ឌលកូរ៉េសហ្វវែរ
								អេច អ ឌី គ្រប់ជំនាន់ទាំងអស់។ មុននឹងអាចប្រើប្រាស់គ្រប់មុខងារ
								ជាពិសេស
								ការបង្ហាញផ្នែកលំអិតរប​ស់បេក្ខជនដែលអ្នកចាប់អារម្មណ៍ដូ​ចជាកម្រិតនៃការសិក្សា
								មុខជំនាញ ​សញ្ញាបត្រ អាសយដ្ឋាន និង ព័ត៌មានជាច្រើនទៀតសូមធ្វើការ<a
								href="#">ចុះឈ្មោះ</a> និង<a href="#">ចូលក្នុងគណនី</a>របស់អ្នក
								ដោយឥតគិតថ្លៃ។
							</span>
						</p>




					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				
				<div class="panel panel-primary text-justify">
					<div class="panel-heading  text-center">LIST OF EXPERT SKILLS</div>

					<div class="container-fluid">
						<!-- start skill tab list -->
						<ul class="nav nav-tabs">
							<li class="active subject_category"
								ng-click="getAllSubjectByCategoryID(1)"><a
								data-toggle="tab" href="#skills">Framework</a></li>
							<li class="subject_category"
								ng-click="getAllSubjectByCategoryID(2)"><a
								data-toggle="tab" href="#skills">Front-End</a></li>
							<li class="subject_category"
								ng-click="getAllSubjectByCategoryID(3)"><a
								data-toggle="tab" href="#skills">Back-End</a></li>
							<li class="subject_category"
								ng-click="getAllSubjectByCategoryID(4)"><a
								data-toggle="tab" href="#skills">Mobile Development</a></li>
							<li class="subject_category"
								ng-click="getAllSubjectByCategoryID(5)"><a
								data-toggle="tab" href="#skills">Database</a></li>
							<li class="subject_category"
								ng-click="getAllSubjectByCategoryID(6)"><a
								data-toggle="tab" href="#skills">Network</a></li>
							<li class="subject_category"
								ng-click="getAllSubjectByCategoryID(7)"><a
								data-toggle="tab" href="#skills">Server Operating System</a></li>
							<li class="subject_category"
								ng-click="getAllSubjectByCategoryID(8)"><a
								data-toggle="tab" href="#skills">Graphic Design</a></li>
							<li class="subject_category"
								ng-click="getAllSubjectByCategoryID(9)"><a
								data-toggle="tab" href="#skills">Microsoft Office</a></li>
						</ul>

						<div class="tab-content">
							<div id="skills" class="tab-pane fade in active">
								<div class="row">
									<div class="col-md-4 col-sm-6 col-xs-6 text-left skill-list"
										ng-repeat="category in categories">
										<a ng-click="goToSearchBySubjectID(category.SUBJECT_ID)"> <!-- we need inner join exp_expert_subject_detail and get count_EXP -->
											{{category.SUBJECT_NAME}}<span class="badge">{{category.NUMBER_OF_EXPERT_EACH_SKILL}}</span>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end skill tab list -->

				</div>
			</div>
		</div>
	</div>
	<!--end container developer-->
	<div class="container">
		<div class="row">
			<!-- ly -->
			<div class="col-md-12">
				<div class="panel panel-primary">
					<div class="panel-heading text-center">អ្នកជំនាញល្បីៗ</div>
					<div class="panel-body">
						<!-- start popular expert  -->
						<%-- <div class="row">
							<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12" ng-repeat="e in experts">
								<a href="/rest/expert/content" class="expert-top">
									<div class="profile">
										<img class="img-thumbnail img-responsive"
											src="${pageContext.request.contextPath}/resources/experts/img/progammer.jpg"
											rel="stylesheet" type="text/css">
									</div>
									<div class="profile-description">
										<b>Name:{{e.expertFirstName}}</n><br> <b>Skill:
												{{e.expertAdvanceCourse}}</b>
									</div>
								</a>
							</div>

						</div>
						<div class="row">
							<div class="col-lg-12 text center">
								<ul class="pagination pagination-sm ">
									<li><a href="#">Previous</a></li>
									<li class="active disabled"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">Next</a></li>
									<li><a href="#">Last</a></li>
								</ul>
							</div>
						</div> --%>

						<table id="tableData" class="table">
							<thead>
								<tr>
									<th style="font-family: 'Khmer OS Siemreap'">រូបភាព</th>
									<th style="font-family: 'Khmer OS Siemreap'">ឈ្មោះ</th>
									<th style="font-family: 'Khmer OS Siemreap'">ជំនាញ</th>
									<th style="font-family: 'Khmer OS Siemreap'">អស័យដ្ដាន</th>
									<th style="font-family: 'Khmer OS Siemreap'"><i
										class="fa fa-search" style="color: teal"></i> ចូលមើល</th>
								</tr>
							</thead>
							<tbody>
								<tr ng-repeat="ep in experts">
									<td><img alt=""
										src="${pageContext.request.contextPath}/resources/experts/img/tempPic.png"
										style="width: 50px; height: 50px"></td>
									<td style="max-width: 100px; vertical-align: initial;">{{ep.EXPERT_LAST_NAME}}
										{{ep.EXPERT_FIRST_NAME}}</td>
									<td style="max-width: 150px;">{{ep.EXPERT_ADVANCE_COURSE}}</td>
									<td style="max-width: 100px;">{{ep.EXPERT_CURRENT_ADDRESS.CITY_OR_PROVINCE_NAME}}</td>
									<td style="max-width: 30px;"><a href="#">View</a></td>
								</tr>
							</tbody>
						</table>

						<button class="fa fa-refresh btn btn-primary"
							ng-click="getExpertsByRandom()">More</button>

						<!-- end popular expert  -->
					</div>
				</div>
			</div>
		</div>
		<!-- ly  -->
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-primary text-center">
					<div class="panel-heading  text-center">ស្ថិតិ</div>
					<div class="panel-body">

						<!-- ly  -->

						<div class="row">
							<div ​ ng-repeat="ss in numOfSkills">
								<div class="col-md-6 col-sm-6 col-lg-3">
									<div class="profile-header-container">
										<div class="profile-header-img">
											<img class="img-circle"
												src="${pageContext.request.contextPath}/resources/experts/img/progammer.jpg">
											<!-- badge -->
											<div class="rank-label-container">
												<span class="label label-default rank-label"
													style="font-size: 15px"><em>{{ss.SUBJECT_CATEGORY_NAME}}({{ss.NUM_OF_SKILLS}})</em></span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%-- <div class="col-md-6 col-sm-6 col-lg-3">
								<div class="profile-header-container">
									<div class="profile-header-img">
										<img class="img-circle"
											src="${pageContext.request.contextPath}/resources/experts/img/engineer.jpg">
										<!-- badge -->
										<div class="rank-label-container">
											<span class="label label-default rank-label"
												style="font-size: 15px"><em>System Engineer
													(100)</em></span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-lg-3">
								<div class="profile-header-container">
									<div class="profile-header-img">
										<img class="img-circle"
											src="${pageContext.request.contextPath}/resources/experts/img/manager.jpg">
										<!-- badge -->
										<div class="rank-label-container">
											<span class="label label-default rank-label"
												style="font-size: 15px"><em>IT Manager(100)</em></span>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-6 col-sm-6 col-lg-3">
								<div class="profile-header-container">
									<div class="profile-header-img">
										<img class="img-circle"
											src="${pageContext.request.contextPath}/resources/experts/img/manager.jpg">
										<!-- badge -->
										<div class="rank-label-container">
											<span class="label label-default rank-label"
												style="font-size: 15px"><em>Skill Set(100)</em></span>
										</div>
									</div>
								</div>
							</div> --%>
						</div>
						<!-- ly -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<jsp:include page="expert/fragements/footer/footer.jsp"></jsp:include>

</body>

</html>