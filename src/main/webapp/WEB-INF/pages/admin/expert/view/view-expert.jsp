
<!DOCTYPE html>
<html ng-app="expertApplication" ng-controller="expertController">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Expert DB - Admin | User</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/datatables/dataTables.bootstrap.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/dist/css/skins/_all-skins.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<style>
.onoffswitch4 {
	position: relative;
	width: 90px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

.onoffswitch4-label {
	display: block;
	overflow: hidden;
	cursor: pointer;
	border: 2px solid #27A1CA;
	border-radius: 0px;
}

.onoffswitch4-checkbox {
	display: none;
}

.onoffswitch4-inner {
	display: block;
	width: 200%;
	margin-left: -100%;
	-moz-transition: margin 0.3s ease-in 0s;
	-webkit-transition: margin 0.3s ease-in 0s;
	-o-transition: margin 0.3s ease-in 0s;
	transition: margin 0.3s ease-in 0s;
}

.onoffswitch4-switch {
	display: block;
	width: 25px;
	margin: 0px;
	background: #27A1CA;
	position: absolute;
	top: 0;
	bottom: 0;
	right: 65px;
	-moz-transition: all 0.3s ease-in 0s;
	-webkit-transition: all 0.3s ease-in 0s;
	-o-transition: all 0.3s ease-in 0s;
	transition: all 0.3s ease-in 0s;
}
</style>

</head>
<body class="hold-transition skin-blue sidebar-mini"
	ng-init="getDataOfExperts()">
	<div class="wrapper">

		<!-- Include Main Header -->
		<jsp:include page="../../fragements/main-header.jsp"></jsp:include>
		<!-- Include Main Header -->

		<!-- Left side column. contains the logo and sidebar -->

		<!-- Include main Sidebar -->
		<jsp:include page="../../fragements/main-sider.jsp"></jsp:include>
		<!-- Include main Sidebar -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Add User<small>Expert DB User</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">Tables</a></li>
					<li class="active">Data tables</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<div class="box">
									<div class="box-header">
										<h3 class="box-title">Data Table With Full Features</h3>
									</div>
									<!-- /.box-header -->
									<div class="box-body">
										<table class="table table-striped table-bordered table-list">
											<thead>
												<tr>
													<th class="hidden-xs">No.</th>
													<th>Name</th>
													<th>Gender</th>
													<th>Current Address</th>
													<th>Phone</th>
													<th>Generation</th>
													<th>Status</th>
													<th><em class="fa fa-cog"></em> Action</th>
												</tr>
											</thead>
											<tbody>
												<tr ng-repeat="expt in expertObject">
													<td>{{$index+1}}</td>
													<td>{{expt.EXPERT_FIRST_NAME}}
														{{expt.EXPERT_LAST_NANE}}</td>
													<td>{{expt.EXPERT_GENDER}}</td>
													<td></td>
													<td>expt.EXPERT_PHONE1</td>
													<td>expt.EXPERT_GENDERATION</td>
													<td>
														<div class="onoffswitch4">
															<input type="checkbox" name="onoffswitch4"
																class="onoffswitch4-checkbox" id="myonoffswitch4"
																checked> <label class="onoffswitch4-label"
																for="myonoffswitch4"> <span
																class="onoffswitch4-inner"></span> <span
																class="onoffswitch4-switch"></span>
															</label>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- /.box-body -->
								</div>
								<!-- /.box -->
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 2.3.3
			</div>
			<strong>Copyright &copy; 2014-2015 <a
				href="http://almsaeedstudio.com">Almsaeed Studio</a>.
			</strong> All rights reserved.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Tab panes -->

			<!-- Include control sidebar -->
			<jsp:include page="../../fragements/control-sidebar.jsp"></jsp:include>
			<!-- Include control sidebar -->

		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 2.2.0 -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/plugins/jQuery/jQuery-2.2.0.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/bootstrap/js/bootstrap.min.js"></script>
	<!-- DataTables -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script
		src="${pageContext.request.contextPath}/resources/admin/dist/js/demo.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/admin/angularJS/jquery.bootpage.min.js"></script>

	<!-- page script -->

</body>
</html>
