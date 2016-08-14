<%@ page
language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
%>

<META name="GENERATOR" content="IBM WebSphere Studio">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 	<!-- font for navbar -->
 	<link href='https://fonts.googleapis.com/css?family=Angkor' rel='stylesheet' type='text/css'> 
 	  
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
    <!--custom-->
    <link href="${pageContext.request.contextPath}/resources/experts/css/custom.css" rel="stylesheet" type="text/css">
    <script>
      $.noConflict();
       jQuery(document).ready(function($){
       $('select').material_select();
        $('.slider').slider({full_width: true});
        });
    </script>
  </head><body>
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header ">
          <button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#navbar-ex-collapse">
            <span class="sr-only ">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
         <!--  <a class="navbar-brand"><i class="-retro fa fa-crosshairs"></i></a> -->
         <a class="navbar-brand">
          		<img alt="EPSEEKER" class="logo" src="${pageContext.request.contextPath}/resources/experts/img/logo11.png">
          	</a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
          <ul class="nav navbar-nav navbar-right">
           <li class="menu">
              <a href="/" class="waves-effect waves-light "><i class="fa fa-home "></i> ទំព័រដើម</a>
            </li>
            <li class="menu">
              <a href="/contact" class="waves-effect waves-light "><i class="fa fa-phone " ></i>ទំនាក់ទំនង</a>
            </li>
            <li class="active menu">
              <a href="/about" class="waves-effect waves-light"><i class="fa fa-user-secret" ></i> អំពី</a>
            </li>
            <li class="menu">
              <a href="/login" class="waves-effect waves-light "><i class="fa fa-sign-in " ></i> ចូល</a>
            </li>
            <li class="menu">
              <a href="/signup" class="waves-effect waves-light "> <i class="fa fa-user-plus"></i>ចុះឈ្មោះ</a>
            </li>
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
                    <div class="panel panel-primary text-center">
                        <div class="panel-heading  text-center">អ្វីដែលយើងកំពុងធ្វី</div>
                        <div class="panel-body text-justify">
                           <p style="word-wrap: break-word;">
                           		នេះគឺជាគេហទំព័រមួយដែលជួយដល់និយោជកឬអ្នកដែលមាន​បំណងចង់ស្វែងរក​បុគ្គលិកសម្រាប់បម្រើការនៅក្រុមហ៊ុនរបស់ ខ្លួនបានដោយផ្ដល់នូវមុខងារស្វែង​រកជាច្រើន។បេក្ខភាពទាំង អស់​នៅគេហទំព័រនេះសុទ្ធ​តែជាអតីតនិស្សិតរបស់មជ្ឈមណ្ឌល កូរ៉េសហ្វវែរអេច អ ឌី គ្រប់ជំនាន់ទាំងអស់។ មុននឹងអាចប្រើ ប្រាស់គ្រប់មុខងារជាពិសេសការបង្ហាញផ្នែកលំអិតរប​ស់បេក្ខជន ដែលអ្នកចាប់អារម្មណ៍ដូ​ចជាកម្រិតនៃការសិក្សាមុខជំនាញ ​ សញ្ញាបត្រ អាសយដ្ឋាន និង ព័ត៌មានជាច្រើនទៀតសូម ធ្វើការចុះឈ្មោះ និងចូលក្នុងគណនីរបស់អ្នក ដោយឥតគិតថ្លៃ។ 
                           		
                           </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary text-center">
                        <div class="panel-heading  text-center">អ្វីដែលយើងនឹងធ្វី</div>
                        <div class="panel-body text-justify">
                           <p style="word-wrap: break-word;">
                           		បច្ចុប្បន្នគេហទំព័រនេះបានត្រឹមតែអនុញ្ញាតឲ្យអតីតនិស្សិតរបស់មជ្ឈមណ្ឌល កូរ៉េសហ្វវែរអេច អ ឌី គ្រប់ជំនាន់ទាំងអស់
                           		អាចបង្ហាញព័ត៌មានរបស់ខ្លួទាក់ទងនឹងមុខជំនាញព័ត៌មានវិទ្យាប៉ុណ្ណោះ។ នៅពេលខាងមុខគេហទំព័រនេះអាចនឹងត្រូវបាន
                           		ធ្វើឲ្យប្រើសើរជាងនេះ គឺអនុញ្ញាតឲ្យជនទូទៅអាចបង្ហាញព័ត៌មានរបស់ខ្លួនបានផងដែរ។
                           </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary text-center">
                        <div class="panel-heading  text-center">About Developers</div>
                        <div class="panel-body text-justify">
                          <div class="row">
                          		<div class="col-md-4">
                          			 <img class="img-thumbnail img-responsive" width="200px;" src="${pageContext.request.contextPath}/resources/experts/img/sal.jpg">
                          		</div>
                          		<div class="col-md-7">
                          			<p>
		                           	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
										cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
										proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque dignissimos eaque placeat voluptatum blanditiis inventore esse amet eum. Obcaecati pariatur, possimus odit, dolorum quasi cum asperiores repellat quis fugit repudiandae!
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut nisi qui eius hic, animi minima, nulla facere deleniti praesentium quas inventore fugiat doloribus porro nam unde voluptate blanditiis fuga dignissimos!
                          		 </p>
                          			
                          		</div>
                          </div>
                          
                           <div class="row">
                           <div class="col-md-8">
                          			<p>
		                           	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
										cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
										proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque dignissimos eaque placeat voluptatum blanditiis inventore esse amet eum. Obcaecati pariatur, possimus odit, dolorum quasi cum asperiores repellat quis fugit repudiandae!
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut nisi qui eius hic, animi minima, nulla facere deleniti praesentium quas inventore fugiat doloribus porro nam unde voluptate blanditiis fuga dignissimos!
                          		 </p>
                          			
                          		</div>
                          		<div class="col-md-4">
                          			 <img class="img-thumbnail img-responsive" width="200px;" src="${pageContext.request.contextPath}/resources/experts/img/ly.jpg">
                          		</div>
                          		
                          </div>
                          
                          
                          
                          <div class="row">
                          		<div class="col-md-4">
                          			 <img class="img-thumbnail img-responsive" width="200px;" src="${pageContext.request.contextPath}/resources/experts/img/tey.jpg">
                          		</div>
                          		<div class="col-md-7">
                          			<p>
		                           	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
										cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
										proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque dignissimos eaque placeat voluptatum blanditiis inventore esse amet eum. Obcaecati pariatur, possimus odit, dolorum quasi cum asperiores repellat quis fugit repudiandae!
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut nisi qui eius hic, animi minima, nulla facere deleniti praesentium quas inventore fugiat doloribus porro nam unde voluptate blanditiis fuga dignissimos!
                          		 </p>
                          			
                          		</div>
                          </div>
                          
                           <div class="row">
                           <div class="col-md-8">
                          			<p>
		                           	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
										cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
										proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque dignissimos eaque placeat voluptatum blanditiis inventore esse amet eum. Obcaecati pariatur, possimus odit, dolorum quasi cum asperiores repellat quis fugit repudiandae!
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut nisi qui eius hic, animi minima, nulla facere deleniti praesentium quas inventore fugiat doloribus porro nam unde voluptate blanditiis fuga dignissimos!
                          		 </p>
                          			
                          		</div>
                          		<div class="col-md-4">
                          			 <img class="img-thumbnail img-responsive" width="200px;" src="${pageContext.request.contextPath}/resources/experts/img/ra.jpg">
                          		</div>
                          </div>
                          
                          <div class="row">
                          		<div class="col-md-4">
                          			 <img class="img-thumbnail img-responsive" width="200px;" src="${pageContext.request.contextPath}/resources/experts/img/nang.jpg">
                          		</div>
                          		<div class="col-md-7">
                          			<p>
		                           	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
										cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
										proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque dignissimos eaque placeat voluptatum blanditiis inventore esse amet eum. Obcaecati pariatur, possimus odit, dolorum quasi cum asperiores repellat quis fugit repudiandae!
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut nisi qui eius hic, animi minima, nulla facere deleniti praesentium quas inventore fugiat doloribus porro nam unde voluptate blanditiis fuga dignissimos!
                          		 </p>
                          			
                          		</div>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     <jsp:include page="expert/fragements/footer/footer.jsp"></jsp:include> 

</body></html>