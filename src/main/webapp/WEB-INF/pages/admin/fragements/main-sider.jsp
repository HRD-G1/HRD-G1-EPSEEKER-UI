<!-- All Controll -->
<script src="${pageContext.request.contextPath}/resources/admin/angularJS/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/angularJS/expertskill.js"></script>

<!-- Sweet Alert -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/sweetalert/sweetalert.css">
<script src="${pageContext.request.contextPath }/resources/admin/plugins/sweetalert/sweetalert-dev.js"></script>

<div ng-app="expertApplication">
<!-- Include Modal -->    	
    				<!-- Country -->
    					<jsp:include page="../fragements/modal/modal-country.jsp"></jsp:include>
    				<!-- Country -->
    				<%-- <!-- Province Or City -->
    					<jsp:include page="../fragements/modal/modal-province-or-city.jsp"></jsp:include>
    				<!-- Province Or City --> --%>
    				<!-- District -->
    					<jsp:include page="../fragements/modal/modal-district.jsp"></jsp:include>
    				<!-- District -->
    				<!-- Commune -->
    					<jsp:include page="../fragements/modal/modal-commune.jsp"></jsp:include>
    				<!-- Commune -->
    				
    				<!-- University -->
    					<jsp:include page="../fragements/modal/modal-university.jsp"></jsp:include>
    				<!-- University -->
    				<!-- Major -->
    					<jsp:include page="../fragements/modal/modal-major.jsp"></jsp:include>
    				<!-- Major -->
    				<!-- Institution -->
    					<jsp:include page="../fragements/modal/modal-institution.jsp"></jsp:include>
    				<!-- Institution -->
    				<!-- Position -->
    					<jsp:include page="../fragements/modal/modal-position.jsp"></jsp:include>
    				<!-- Position -->
    				<!-- Language -->
    					<jsp:include page="../fragements/modal/modal-language.jsp"></jsp:include>
    				<!-- Language -->
					<!-- Main Skill -->
    					<jsp:include page="../fragements/modal/modal-main-skill-and-subskill.jsp"></jsp:include>
    				<!-- Main Skill -->
    				<!-- File Type -->
    					<jsp:include page="../fragements/modal/modal-file-type.jsp"></jsp:include>
    				<!-- File Type -->
    				
    			<!-- Include Modal -->


<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="/rest/admin/dashboard">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span> 
          </a>
        </li>
        <!-- Expert -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-users"></i> <span>Expert</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="/rest/admin/expert/add"><i class="fa fa-plus"></i> Add Expert</a></li>
            <li><a href="/rest/admin/expert/view"><i class="fa fa-eye"></i> View Expert</a></li>
          </ul>
        </li>
        <!-- Expert -->
        <!-- Main Skill -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-newspaper-o"></i> <span>Main Skill</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a style="cursor:pointer" data-toggle="modal" data-target="#addMainSkill"><i class="fa fa-plus"></i> Add Main Skill</a></li>
            <li><a href="pages/category/viewcategory.html"><i class="fa fa-eye"></i> View Main Skill</a></li>
            <!-- Sub Skill -->
	        <li class="treeview">
	          <a href="#">
	            <i class="fa fa-newspaper-o"></i> <span>Sub Skill</span>
	            <i class="fa fa-angle-left pull-right"></i>
	          </a>
	          <ul class="treeview-menu">
	            <li><a style="cursor:pointer" data-toggle="modal" data-target="#addSkill"><i class="fa fa-plus"></i> Add Sub Skill</a></li>
	            <li><a href="pages/category/viewcategory.html"><i class="fa fa-eye"></i> View Sub Skill</a></li>
	          </ul>
	        </li>
	        <!-- Sub Skill -->
          </ul>
        </li>
        <!-- Main Skill -->
         
        <!-- Education -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-sticky-note"></i> <span>Education</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
          	<!-- University -->
	        <li class="treeview">
	          <a href="#">
	            <i class="fa fa-university"></i> <span>University</span>
	            <i class="fa fa-angle-left pull-right"></i>
	          </a>
	          <ul class="treeview-menu">
	            <li><a style="cursor:pointer" data-toggle="modal" data-target="#addUniversity"><i class="fa fa-plus"></i> Add University</a></li>
	            <li><a href="pages/subject/viewsubject.html"><i class="fa fa-eye"></i> View University</a></li>
	          </ul>
	        </li>
	        <!-- University -->
	        <!-- Major -->
	        <li class="treeview">
	          <a href="#">
	            <i class="fa fa-circle"></i> <span>Major</span>
	            <i class="fa fa-angle-left pull-right"></i>
	          </a>
	          <ul class="treeview-menu">
	            <li><a style="cursor:pointer" data-toggle="modal" data-target="#addMajor"><i class="fa fa-plus"></i> Add Major</a></li>
	            <li><a href="pages/subject/viewsubject.html"><i class="fa fa-eye"></i> View Major</a></li>
	          </ul>
	        </li>
	        <!-- Major -->
          </ul>
        </li>
        <!-- Education -->
        <!-- Location -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-language"></i> <span>Language</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a style="cursor:pointer" data-toggle="modal" data-target="#addLanguage"><i class="fa fa-plus"></i> Add Language</a></li>
            <li><a href="pages/language/viewlanguage.html"><i class="fa fa-eye"></i> View Language</a></li>
          </ul>
        </li>
        <!-- Location -->
        <!-- Language -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-location-arrow"></i> <span>Location</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li class="treeview">
	          <a href="#">
	            <i class="fa fa-dot-circle-o"></i> <span>Country</span>
	            <i class="fa fa-angle-left pull-right"></i>
	          </a>
	          <ul class="treeview-menu">
	            <li><a style="cursor:pointer" data-toggle="modal" data-target="#addCountry"><i class="fa fa-plus"></i> Add Country</a></li>
	            <li><a href="pages/language/viewlanguage.html"><i class="fa fa-eye"></i> View Country</a></li>
	          </ul>
	        </li>
	        <li class="treeview">
	          <a href="#">
	            <i class="fa fa-dot-circle-o"></i> <span>Province</span>
	            <i class="fa fa-angle-left pull-right"></i>
	          </a>
	          <ul class="treeview-menu">
	            <li><a style="cursor:pointer" data-toggle="modal" data-target="#addProvince"><i class="fa fa-plus"></i> Add Province</a></li>
	            <li><a href="pages/language/viewlanguage.html"><i class="fa fa-eye"></i> View Province</a></li>
	          </ul>
	        </li>
	        <li class="treeview">
	          <a href="#">
	            <i class="fa fa-dot-circle-o"></i> <span>District</span>
	            <i class="fa fa-angle-left pull-right"></i>
	          </a>
	          <ul class="treeview-menu">
	            <li><a style="cursor:pointer" data-toggle="modal" data-target="#addDistrict"><i class="fa fa-plus"></i> Add District</a></li>
	            <li><a href="pages/language/viewlanguage.html"><i class="fa fa-eye"></i> View District</a></li>
	          </ul>
	        </li>
	        <li class="treeview">
	          <a href="#">
	            <i class="fa fa-dot-circle-o"></i> <span>Commune</span>
	            <i class="fa fa-angle-left pull-right"></i>
	          </a>
	          <ul class="treeview-menu">
	            <li><a style="cursor:pointer" data-toggle="modal" data-target="#addCommune"><i class="fa fa-plus"></i> Add Commune</a></li>
	            <li><a href="pages/language/viewlanguage.html"><i class="fa fa-eye"></i> View Commune</a></li>
	          </ul>
	        </li>
          </ul>
        </li>
        <!-- language -->
        <!-- File Type -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-file-text"></i> <span>File Type</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a style="cursor:pointer" data-toggle="modal" data-target="#addFileType"><i class="fa fa-plus"></i> Add File Type</a></li>
            <li><a href="pages/language/viewlanguage.html"><i class="fa fa-eye"></i> View File Type</a></li>
          </ul>
        </li>
        <!-- File Type -->
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
  </div>