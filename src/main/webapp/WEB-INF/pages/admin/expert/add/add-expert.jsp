<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Data Tables</title>
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

  <!-- File Chooser -->	
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin/plugins/filechooser/bootstrap-filestyle.min.js"></script>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
  <style type="text/css">
  	.container{
	    margin-top:20px;
	}
	.image-preview-input {
	    position: relative;
		overflow: hidden;
		margin: 0px;    
	    color: #333;
	    background-color: #fff;
	    border-color: #ccc;    
	}
	.image-preview-input input[type=file] {
		position: absolute;
		top: 0;
		right: 0;
		margin: 0;
		padding: 0;
		font-size: 20px;
		cursor: pointer;
		opacity: 0;
		filter: alpha(opacity=0);
	}
	.image-preview-input-title {
	    margin-left:2px;
	}
  </style>
  
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

	<!-- Include Main Header -->
	<jsp:include page="../../fragements/main-header.jsp"></jsp:include>
	<!-- Include Main Header -->
  
  <!-- Left side column. contains the logo and sidebar -->
  
  <!-- Include Main Sider -->
  	<jsp:include page="../../fragements/main-sider.jsp"></jsp:include>
  <!-- Include Main Sider -->
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Add User<small>Expert DB User</small>
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
              <!-- add User -->
            <form role="form">
    
    			<!-- Include Modal -->
    				
    				<!-- Country -->
    					<jsp:include page="../../fragements/modal/modal-country.jsp"></jsp:include>
    				<!-- Country -->
    				<%-- <!-- Province Or City -->
    					<jsp:include page="../../fragements/modal/modal-province-or-city.jsp"></jsp:include>
    				<!-- Province Or City --> --%>
    				<!-- District -->
    					<jsp:include page="../../fragements/modal/modal-district.jsp"></jsp:include>
    				<!-- District -->
    				<!-- Commune -->
    					<jsp:include page="../../fragements/modal/modal-commune.jsp"></jsp:include>
    				<!-- Commune -->
    				
    				<!-- University -->
    					<jsp:include page="../../fragements/modal/modal-university.jsp"></jsp:include>
    				<!-- University -->
    				<!-- Major -->
    					<jsp:include page="../../fragements/modal/modal-major.jsp"></jsp:include>
    				<!-- Major -->
    				<!-- Institution -->
    					<jsp:include page="../../fragements/modal/modal-institution.jsp"></jsp:include>
    				<!-- Institution -->
    				<!-- Position -->
    					<jsp:include page="../../fragements/modal/modal-position.jsp"></jsp:include>
    				<!-- Position -->
    				<!-- Language -->
    					<jsp:include page="../../fragements/modal/modal-language.jsp"></jsp:include>
    				<!-- Language -->
					<!-- Main Skill -->
    					<jsp:include page="../../fragements/modal/modal-main-skill-and-subskill.jsp"></jsp:include>
    				<!-- Main Skill -->
    				<%-- <!-- Skill -->
    					<jsp:include page="../../fragements/modal/modal-skill.jsp"></jsp:include>
    				<!-- Skill --> --%>    				
    				<!-- File Type -->
    					<jsp:include page="../../fragements/modal/modal-file-type.jsp"></jsp:include>
    				<!-- File Type -->
    				
    			<!-- Include Modal -->
              
              <!-- First Name and Last Name -->
              <div class="row">
              	<div class="col-sm-6 col-md-6">
              		<div class="form-group">
		                <label for="FirstName">First Name</label>
		                <input type="text" class="form-control" id="FirstName" placeholder="FirstName">
	              	</div>
              	</div>
              	<div class="col-sm-6 col-md-6">
              		<div class="form-group">
		                <label for="LastName">Last Name</label>
		                <input type="text" class="form-control" id="LastName" placeholder="LastName">
	              	</div>
              	</div>
              </div>
              <!-- First Name and Last Name -->
              
              <!-- Gender and Photo -->
              <div class="row">
              	<div class="col-md-6 col-sm-6">
              		<div class="form-group">
		                <label for="gender">Gender</label>
		                <select class="form-control" id="gedner">
		                  <option>Male</option>
		                  <option>Female</option>
		                </select>
	              	</div>
              	</div>
              	<div class="col-md-6 col-sm-6">
              		<!-- image-preview-filename input [CUT FROM HERE]-->
              		<label for="photo">Photo</label>
		            <div class="input-group image-preview">
		            		
		                <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
		                <span class="input-group-btn">
		                    <!-- image-preview-clear button -->
		                    <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
		                        <span class="glyphicon glyphicon-remove"></span> Clear
		                    </button>
		                    <!-- image-preview-input -->
		                    <div class="btn btn-default image-preview-input">
		                        <span class="glyphicon glyphicon-folder-open"></span>
		                        <span class="image-preview-input-title">Browse</span>
		                        <input type="file" accept="image/png, image/jpeg, image/gif" name="input-file-preview"/> <!-- rename it -->
		                    </div>
		                </span>
		            </div><!-- /input-group image-preview [TO HERE]--> 
              	</div>
              </div>
              <!-- Gender and Photo -->
            
             <!-- Phone --> 
				<div class="row">
					<div class="col-md-6">
						 <div class="form-group">
			                <label for="gender">Phone Line 1</label>
			                <input type="number" class="form-control" id="phone1" placeholder="phone1">
			              </div>
					</div>
					<div class="col-md-6">
						 <div class="form-group">
			                <label for="gender">Phone Line 2 <small>Optional</small></label>
			                <input type="number" class="form-control" id="phone2" placeholder="phone2">
			              </div>
					</div>
				</div>							             		
             <!-- Phone -->
             
             <!-- Place of Birth -->
             <div class="row">             	
             	<div class="col-md-12">
					<label for="gender">Place of Birth</label>					             			
             	</div>
             	<div class="col-md-3 col-sm-6">
             		<label for="gender">Country</label>
             		<div class="form-group input-group">
						<select name="country" class="form-control">
							<option value="">Cambodia</option>
							<option value="">Korea</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addCountry">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-3 col-sm-6">
             		<label for="gender">Province or City</label>
             		<div class="form-group input-group">
						<select name="country" class="form-control">
							<option value="">Cambodia</option>
							<option value="">Korea</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addProvince">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-3 col-sm-6">
             		<label for="gender">District</label>
             		<div class="form-group input-group">
						<select name="country" class="form-control">
							<option value="">Cambodia</option>
							<option value="">Korea</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addDistrict">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-3 col-sm-6">
             		<label for="gender">Communce</label>
             		<div class="form-group input-group">
						<select name="country" class="form-control">
							<option value="">Cambodia</option>
							<option value="">Korea</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addCommune">+
							</button></span>
					</div>
             	</div>
             </div>
             <!-- Place of Birth -->

			 <!-- Current Address -->
             <div class="row">             	
             	<div class="col-md-12">
					<label for="gender">Current Address</label>					             			
             	</div>
             	<div class="col-md-3 col-sm-6">
             		<label for="gender">Country</label>
             		<div class="form-group input-group">
						<select name="country" class="form-control">
							<option value="">Cambodia</option>
							<option value="">Korea</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" class="btn btn-default btn-add" data-toggle="modal" data-target="#addCountry">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-3 col-sm-6">
             		<label for="gender">Province or City</label>
             		<div class="form-group input-group">
						<select name="country" class="form-control">
							<option value="">Cambodia</option>
							<option value="">Korea</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addProvince">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-3 col-sm-6">
             		<label for="gender">District</label>
             		<div class="form-group input-group">
						<select name="country" class="form-control">
							<option value="">Cambodia</option>
							<option value="">Korea</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addDistrict">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-3 col-sm-6">
             		<label for="gender">Communce</label>
             		<div class="form-group input-group">
						<select name="country" class="form-control">
							<option value="">Cambodia</option>
							<option value="">Korea</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addCommune">+
							</button></span>
					</div>
             	</div>
             </div>
             <!-- Current Address -->
             
             <!-- Email -->
             <div class="form-group">
                <label for="address">Email</label>
                <input type="email" class="form-control" id="Email" placeholder="Email">
              </div>
             <!-- Email -->
             
             <!-- Generation and Advance Course -->
             <div class="row">
             	<div class="col-md-6">
             		<div class="form-group">
		                <label for="address">Generation</label>
		                <input type=number class="form-control" id="Generation" placeholder="Generation">
		              </div>
             	</div>
             	<div class="col-md-6">
             		<div class="form-group">
		                <label for="address">Advance Course</label>
		                <input type="text" class="form-control" id="AdvanceCourse" placeholder="Advance Course">
		              </div>
             	</div>
             </div>
             <!-- Generation and Advance Course -->
              
              <hr>
              
             <!-- Education -->
             <div class="row">
             	<div class="education">
             	<div class="col-md-12">
             		<h3><span style="color: #e74c3c; cursor: pointer;" id="removeLanguage" class="fa fa-trash-o"></span>  Education 1</h3>
             	</div>
             	<div class="col-md-6">
             		<label for="gender">University</label>
             		<div class="form-group input-group">
						<select name="University" class="form-control">
							<option value="">SETEC Institute</option>
							<option value="">NORTON University</option>
							<option value="">RUPP University</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addUniversity">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-6">
             		<label for="gender">Major</label>
             		<div class="form-group input-group">
						<select name="Major" class="form-control">
							<option value="">MIS</option>
							<option value="">Computer Science</option>
							<option value="">Software Engineer</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addMajor">+
							</button></span>
					</div>
	             	</div>
	             	<div class="col-md-6">
	             		<div class="form-group">
			                <label for="dob">Start Date</label>
			                <input type="date" class="form-control" id="dob" placeholder="Start Date">
			            </div>
	             	</div>
	             	<div class="col-md-6">
		             	<div class="form-group">
				        	<label for="dob">End Date</label>
				            <input type="date" class="form-control" id="dob" placeholder="End Date">
				        </div>
	             	</div>
	             	<div class="col-md-12">
	             		<div class="form-group">
						  <label for="comment">Description:</label>
						  <textarea class="form-control" rows="5" id="comment"></textarea>
						</div>
	             	</div>
	             </div>
	             <div id="placeToAddEducationPattern" class="col-md-12 text-right">
	             	<div class="btn-group">
	             		<button type="button" id="moreEducation" class="btn btn-primary fa fa-plus-circle"> More Education</button>
	             	</div>	             
	             </div>
             </div> 
             <!-- Education -->
             
             <hr>
             
             <!-- Experience  -->
             <div class="row">
             	<div class="experience">
             	<div class="col-md-12">
             		<h3><span style="color: #e74c3c; cursor: pointer;" id="removeLanguage" class="fa fa-trash-o"></span>  Experience 1</h3>
             	</div>
             	<div class="col-md-6">
             		<label for="gender">Institution</label>
             		<div class="form-group input-group">
						<select name="Institution" class="form-control">
							<option value="">ANZ Bank</option>
							<option value="">Blue Technology</option>
							<option value="">World Bank</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addInstitution">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-6">
             		<label for="gender">Major</label>
             		<div class="form-group input-group">
						<select name="Major" class="form-control">
							<option value="">MIS</option>
							<option value="">Computer Science</option>
							<option value="">Software Engineer</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addMajor">+
							</button></span>
					</div>
	             	</div>
	             	<div class="col-md-6">
	             		<div class="form-group">
			                <label for="dob">Start Date</label>
			                <input type="date" class="form-control" id="dob" placeholder="Start Date">
			            </div>
	             	</div>
	             	<div class="col-md-6">
		             	<div class="form-group">
				        	<label for="dob">End Date</label>
				            <input type="date" class="form-control" id="dob" placeholder="End Date">
				        </div>
	             	</div>	             	
	             </div>
	             <div id="placeToAddExperiencePattern" class="col-md-12 text-right">
	             	<div class="btn-group">
	             		<button type="button" id="moreExperience" class="btn btn-primary fa fa-plus-circle"> More Experience</button>
	             	</div>	             
	             </div>
             </div> 
             <!-- Experience -->
             
             <hr>
             
             <!-- Current Job  -->
             <div class="row">
             	<div class="currentJob">
             	<div class="col-md-12">
             		<h3><span style="color: #e74c3c; cursor: pointer;" id="removeLanguage" class="fa fa-trash-o"></span>  Current Job 1</h3>
             	</div>
             	<div class="col-md-6">
             		<label for="gender">Institution</label>
             		<div class="form-group input-group">
						<select name="Institution" class="form-control">
							<option value="">ANZ Bank</option>
							<option value="">Blue Technology</option>
							<option value="">World Bank</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addInstitution">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-3 col-sm-6">
             		<label for="gender">Position</label>
             		<div class="form-group input-group">
						<select name="Position" class="form-control">
							<option value="">Spring Developer</option>
							<option value="">System Analyze</option>
							<option value="">Software Engineer</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addPosition">+
							</button></span>
					</div>
	             </div>
	             <div class="col-md-3  col-sm-6">
             		<div class="form-group">
		                <label for="address">Salary</label>
		                <input type="number" class="form-control" id="Salary" placeholder="Salary">
		              </div>
	             </div>
	             <div class="col-md-6">
             		<div class="form-group">
		                <label for="address">Institution Phone Contact</label>
		                <input type="number" class="form-control" id="inst-phone" placeholder="Contact Phone">
		              </div>
	             </div>
	             <div class="col-md-6">
             		<div class="form-group">
		                <label for="address">Institution Email <small>Optional</small></label>
		                <input type="email" class="form-control" id="ints-email" placeholder="Emial">
		              </div>
	             </div>
	            	             	
	             </div>
	             <div id="placeToAddExperiencePattern" class="col-md-12 text-right">
	             	<div class="btn-group">
	             		<button type="button" id="moreCurrentJob" class="btn btn-primary fa fa-plus-circle"> More Current Job</button>
	             	</div>	             
	             </div>
             </div> 
             <!-- Current Job -->
             
             <hr>
             
             <!-- Language -->
             <div class="row">
             	<div class="language">
             	<div class="col-md-12 col-sm-6">
             		<h3><span style="color: #e74c3c; cursor: pointer;" id="removeLanguage" class="fa fa-trash-o"></span>  Language 1</h3>
             	</div>
             	<div class="col-md-6">
             		<label for="gender">Language</label>
             		<div class="form-group input-group">
						<select name="Institution" class="form-control">
							<option value="">English</option>
							<option value="">Khmer</option>
							<option value="">Korean</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addLanguage">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-6 col-sm-6">
              		<div class="form-group">
		                <label for="level">Level</label>
		                <select class="form-control" id="level">
		                  <option>Low</option>
		                  <option>Medium</option>
		                  <option>High</option>
		                </select>
	              	</div>
	             </div>
	             </div>
	            	             	
	             
	             <div id="placeToAddExperiencePattern" class="col-md-12 text-right">
	             	<div class="btn-group">
	             		<button type="button" id="moreLanguage" class="btn btn-primary fa fa-plus-circle"> More Language</button>
	             	</div>	             
	             </div>
             </div> 
             <!-- Language -->
             
             <hr>
             
             <!-- Job Expectation -->
             <div class="row">
             	<div class="language">
             	<div class="col-md-12 col-sm-6">
             		<h3><span style="color: #e74c3c; cursor: pointer;" id="removeLanguage" class="fa fa-trash-o"></span>  Job Expectation 1</h3>
             	</div>
             	<div class="col-md-6">
             		<label for="jobExpectation">Position</label>
             		<div class="form-group input-group">
						<select name="Institution" class="form-control">
							<option value="">IT Manager</option>
							<option value="">Java Developer</option>
							<option value="">C# Developer</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addLanguage">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-6 col-sm-6">
              		<div class="form-group">
		                <label for="address">Position</label>
		                <input type=number class="form-control" id="position" placeholder="A Place You Wish to Work...">
		              </div>
	             </div>
	             <div class="col-md-6 col-sm-6">
              		<div class="form-group">
		                <label for="address">Minimum Salary</label>
		                <input type=number class="form-control" id="position" placeholder="Minimun Salary">
		              </div>
	             </div>
	             <div class="col-md-6 col-sm-6">
              		<div class="form-group">
		                <label for="address">Maximum Salary</label>
		                <input type=number class="form-control" id="position" placeholder="Maximun Salary">
		              </div>
	             </div>
	             </div>
	            	             	
	             
	             <div id="placeToAddExperiencePattern" class="col-md-12 text-right">
	             	<div class="btn-group">
	             		<button type="button" id="moreLanguage" class="btn btn-primary fa fa-plus-circle"> More Language</button>
	             	</div>	             
	             </div>
             </div> 
             <!-- Job Expectation -->
             
             <hr>
             
             <!-- Skill -->
             <div class="row">
             	<div class="Skill">
             	<div class="col-md-12 col-sm-6">
             		<h3><span style="color: #e74c3c; cursor: pointer;" id="removeLanguage" class="fa fa-trash-o"></span>  Skill 1</h3>
             	</div>
             	<div class="col-md-4 com-sm-6">
             		<label for="gender">Main Skill</label>
             		<div class="form-group input-group">
						<select name="Institution" class="form-control">
							<option value="">Framework</option>
							<option value="">Programming</option>
							<option value="">Web Front End</option>
							<option value="">Web Back End</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addMainSkill">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-4 col-sm-6">
             		<label for="gender">Skill</label>
             		<div class="form-group input-group">
						<select name="level" class="form-control">
							<option value="">Java</option>
							<option value="">C#</option>
							<option value="">ASP.Net</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addSkill">+
							</button></span>
					</div>
	            </div>
	            <div class="col-md-4 col-sm-6">
              		<div class="form-group">
		                <label for="level">Level</label>
		                <select class="form-control" id="level">
		                  <option>Low</option>
		                  <option>Medium</option>
		                  <option>High</option>
		                </select>
	              	</div>
	             </div>
	             </div>
	            	             	
	             <div class="col-md-12 text-right">
	             	<div class="btn-group">
	             		<button type="button" id="moreSkill" class="btn btn-primary fa fa-plus-circle"> More Skill</button>
	             	</div>	             
	             </div>
             </div> 
             <!-- Skill -->
             
             <hr>
             
             <!-- Document -->
             <div class="row">
             	<div class="Document">
             	<div class="col-md-12 col-sm-6">
             		<h3><span style="color: #e74c3c; cursor: pointer;" id="removeLanguage" class="fa fa-trash-o"></span>  Document 1</h3>
             	</div>
             	<div class="col-md-6 com-sm-6">
             		<label for="gender">File Type</label>
             		<div class="form-group input-group">
						<select name="fileType" class="form-control">
							<option value="">Certificate</option>
							<option value="">Transcript</option>
							<option value="">Identity Card</option>
						</select>
							<span class="input-group-btn"><button type="button" class="btn btn-default btn-add" data-toggle="modal" data-target="#addFileType">+
							</button></span>
					</div>
             	</div>
             	<div class="col-md-6 col-sm-6">
             		<!-- image-preview-filename input [CUT FROM HERE]-->
              		<label for="photo">Document</label>
		            <div class="input-group image-preview">
		            		
		                <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
		                <span class="input-group-btn">
		                    <!-- image-preview-clear button -->
		                    <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
		                        <span class="glyphicon glyphicon-remove"></span> Clear
		                    </button>
		                    <!-- image-preview-input -->
		                    <div class="btn btn-default image-preview-input">
		                        <span class="glyphicon glyphicon-folder-open"></span>
		                        <span class="image-preview-input-title">Browse</span>
		                        <input type="file" name="input-file-preview"/> <!-- rename it -->
		                    </div>
		                </span>
		            </div><!-- /input-group image-preview [TO HERE]-->
	            </div>
	             </div>
	            	             	
	             <div class="col-md-12 text-right">
	             	<div class="btn-group">
	             		<button type="button" id="moreSkill" class="btn btn-primary fa fa-plus-circle"> More Skill</button>
	             	</div>	             
	             </div>
             </div> 
             <!-- Skill -->
             
             <hr>
              
              <button type="submit" class="btn btn-primary">Add New User to Be Expert</button>
            </form>
            <!-- End Add User -->
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
    <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">

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
<script>
	$(document).ready(function(){
		$(function () {
		    $("#example1").DataTable();
		    $('#example2').DataTable({
		      "paging": true,
		      "lengthChange": false,
		      "searching": false,
		      "ordering": true,
		      "info": true,
		      "autoWidth": false
		    });
		  });
		  
		  $(document).on('click', '#close-preview', function(){ 
			    $('.image-preview').popover('hide');
			    // Hover befor close the preview
			    $('.image-preview').hover(
			        function () {
			           $('.image-preview').popover('show');
			        }, 
			         function () {
			           $('.image-preview').popover('hide');
			        }
			    );    
			});

			$(function() {
			    // Create the close button
			    var closebtn = $('<button/>', {
			        type:"button",
			        text: 'x',
			        id: 'close-preview',
			        style: 'font-size: initial;',
			    });
			    closebtn.attr("class","close pull-right");
			    // Set the popover default content
			    $('.image-preview').popover({
			        trigger:'manual',
			        html:true,
			        title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
			        content: "There's no image",
			        placement:'bottom'
			    });
			    // Clear event
			    $('.image-preview-clear').click(function(){
			        $('.image-preview').attr("data-content","").popover('hide');
			        $('.image-preview-filename').val("");
			        $('.image-preview-clear').hide();
			        $('.image-preview-input input:file').val("");
			        $(".image-preview-input-title").text("Browse"); 
			    }); 
			    // Create the preview image
			    $(".image-preview-input input:file").change(function (){     
			        var img = $('<img/>', {
			            id: 'dynamic',
			            width:250,
			            height:200
			        });      
			        var file = this.files[0];
			        var reader = new FileReader();
			        // Set preview image into the popover data-content
			        reader.onload = function (e) {
			            $(".image-preview-input-title").text("Change");
			            $(".image-preview-clear").show();
			            $(".image-preview-filename").val(file.name);            
			            img.attr('src', e.target.result);
			            $(".image-preview").attr("data-content",$(img)[0].outerHTML).popover("show");
			        }        
			        reader.readAsDataURL(file);
			    });  
			});
			

			var countNum = 1;
			$("#moreEducation").click(function(){
				
				countNum++;
				
				var text = "<div class=\"education\"> \
	             	<div class=\"col-md-12\"> \
             		<h3>Education " + countNum + "\</h3> \
             	</div> \
             	<div class=\"col-md-6\"> \
             		<label for=\"gender\">University</label> \
             		<div class=\"form-group input-group\"> \
						<select name=\"University\" class=\"form-control\"> \
							<option value=\"\">SETEC Institute</option> \
							<option value=\"\">NORTON University</option> \
							<option value=\"\">RUPP University</option> \
						</select> \
							<span class=\"input-group-btn\"><button type=\"button\" class=\"btn btn-default btn-add\">+ \
							</button></span> \
					</div> \
             	</div> \
             	<div class=\"col-md-6\"> \
             		<label for=\"gender\">Major</label> \
             		<div class=\"form-group input-group\"> \
						<select name=\"Major\" class=\"form-control\"> \
							<option value=\"\">MIS</option> \
							<option value=\"\">Computer Science</option> \
							<option value=\"\">Software Engineer</option> \
						</select> \
							<span class=\"input-group-btn\"><button type=\"button\" class=\"btn btn-default btn-add\">+ \
							</button></span> \
					</div> \
	             	</div> \
	             	<div class=\"col-md-6\"> \
	             		<div class=\"form-group\"> \
			                <label for=\"dob\">Start Date</label> \
			                <input type=\"date\" class=\"form-control\" id=\"dob\" placeholder=\"Start Date\"> \
			            </div> \
	             	</div> \
	             	<div class=\"col-md-6\"> \
		             	<div class=\"form-group\"> \
				        	<label for=\"dob\">End Date</label> \
				            <input type=\"date\" class=\"form-control\" id=\"dob\" placeholder=\"End Date\"> \
				        </div> \
	             	</div> \
	             	<div class=\"col-md-12\"> \
	             		<div class=\"form-group\"> \
						  <label for=\"comment\">Description:</label> \
						  <textarea class=\"form-control\" rows=\"5\" id=\"comment\"></textarea> \
						</div> \
	             	</div> \
	             </div>";
				$("#placeToAddEducationPattern").before(text);
			});
			
			var countExperienceNum = 1;
			$("#moreExperience").click(function(){
				
				countExperienceNum++;
				
				var text = "<div class=\"experience\"> \
				             	<div class=\"col-md-12\"> \
				             		<h3>Experience "+ countExperienceNum +"</h3> \
				             	</div> \
				             	<div class=\"col-md-6\"> \
				             		<label for=\"gender\">Institution</label> \
				             		<div class=\"form-group input-group\"> \
										<select name=\"Institution\" class=\"form-control\"> \
											<option value=\"\">ANZ Bank</option> \
											<option value=\"\">Blue Technology</option> \
											<option value=\"\">World Bank</option> \
										</select> \
											<span class=\"input-group-btn\"><button type=\"button\" class=\"btn btn-default btn-add\">+ \
											</button></span> \
									</div> \
				             	</div> \
				             	<div class=\"col-md-6\"> \
				             		<label for=\"gender\">Major</label> \
				             		<div class=\"form-group input-group\"> \
										<select name=\"Major\" class=\"form-control\"> \
											<option value=\"\">MIS</option> \
											<option value=\"\">Computer Science</option> \
											<option value=\"\">Software Engineer</option> \
										</select> \
											<span class=\"input-group-btn\"><button type=\"button\" class=\"btn btn-default btn-add\">+ \
											</button></span> \
									</div> \
					             	</div> \
					             	<div class=\"col-md-6\"> \
					             		<div class=\"form-group\"> \
							                <label for=\"dob\">Start Date</label> \
							                <input type=\"date\" class=\"form-control\" id=\"dob\" placeholder=\"Start Date\"> \
							            </div> \
					             	</div> \
					             	<div class=\"col-md-6\"> \
						             	<div class=\"form-group\"> \
								        	<label for=\"dob\">End Date</label> \
								            <input type=\"date\" class=\"form-control\" id=\"dob\" placeholder=\"End Date\"> </div> </div> </div>";
				$("#placeToAddExperiencePattern").before(text);
			});	
			
	});
</script>
</body>
</html>
