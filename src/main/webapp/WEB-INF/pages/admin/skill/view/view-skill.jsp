<!DOCTYPE html>
<html ng-app="expertApplication">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Expert DB - Admin | User</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/datatables/dataTables.bootstrap.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini" ng-controller="mainSkillAndSubSkillController">
<div class="wrapper">

  <!-- Include Main Header -->
  	<jsp:include page="../../fragements/main-header.jsp"></jsp:include>
  <!-- Include Main Header -->
  
  <!-- <div ng-controller="fileTypeController">  
  <div ng-controller="languageController">
  <div ng-controller="mainSkillAndSubSkillController">    
  <div ng-controller="locationController">  
  <div ng-controller="universityController"> -->
  
  <!-- Include main Sidebar -->
  	<jsp:include page="../../fragements/main-sider.jsp"></jsp:include>
  <!-- Include main Sidebar -->
  
  <!-- </div> University
  </div> Location  	  
  </div> Skill
  </div> Language
  </div> File -->
  
  <!-- Left side column. contains the logo and sidebar -->
  
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    
    <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th class="hidden-xs">No.</th>
                        <th>Subject Name</th>
                        <th>Subject Category Name</th>
                        <th><em class="fa fa-cog"></em> Action</th>
                    </tr> 
                  </thead>
                  <tbody>
                          <tr ng-repeat="sub in skillSet">
                          	<td>{{$index+1}}</td>
                          	<td>{{sub.subjectName}}</td>
                          	<td>{{sub.subjectCategoryName}}</td>
                            <td align="center">
                              <a class="btn btn-default" ng-click="getUpdateSkill(this)" data-toggle="modal" data-target="#addSkill" ><em class="fa fa-pencil"></em></a>
                              <a class="btn btn-danger" ng-click="removeSkill(sub.subjectID)"><em class="fa fa-trash"></em></a>
                            </td>
                          </tr>
                        </tbody>
                </table>
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.3
    </div>
    <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
    reserved.
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
<script src="${pageContext.request.contextPath}/resources/admin/plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${pageContext.request.contextPath}/resources/admin/bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/resources/admin/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/resources/admin/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/resources/admin/dist/js/demo.js"></script>
<!-- page script -->
</body>
</html>
