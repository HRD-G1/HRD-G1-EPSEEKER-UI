<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<!--bootstrap css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/expert/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>
        <!--font awesome-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/expert/font-awesome-4.6.3/css/font-awesome.min.css"/>

        <!--bootstrap modal-->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <!--bootstrap modal-->

        <!--AngularJS-->
        <script src="${pageContext.request.contextPath }/resources/expert/angularjs/angular.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/expert/angularjs/myapplication.js"></script>
        <!--AngularJS-->

        <!--Progress Bar-->
        <script src="${pageContext.request.contextPath }/resources/expert/js/progressbar.js"/>

        <!--Date Picker-->
        <!--formden.js communicates with FormDen server to validate fields and submit via AJAX -->
        <script type="text/javascript" src="https://formden.com/static/cdn/formden.js"></script>
        


        <!-- Inline CSS based on choices in "Settings" tab -->
        <style>
            .bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form{
                font-family: Arial, Helvetica, sans-serif; color: black
            }
            .bootstrap-iso form button, .bootstrap-iso form button:hover
            {color: white !important;
            } 
            .asteriskField{
                color: red;
            }
            .navbar-default .navbar-collapse, .navbar-default .navbar-form {
 			  width: 1094px;
			}
        </style>
        
        <!-- footer -->
        <link href="${pageContext.request.contextPath}/resources/experts/css/custom.css" rel="stylesheet" type="text/css">
</head>
<body>
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
        <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="menu">
              <a href="/" class="waves-effect waves-light "><i class="fa fa-home "></i> HOME</a>
            </li>
            <li class="menu">
              <a href="/contact" class="waves-effect waves-light "><i class="fa fa-phone " ></i> CONTACT</a>
            </li>
            <li class="menu">
              <a href="/about" class="waves-effect waves-light"><i class="fa fa-user-secret" ></i> ABOUT</a>
            </li>
            <li class="menu">
              <a href="/login" class="waves-effect waves-light "><i class="fa fa-sign-in " ></i> LOGIN</a>
            </li>
            <li class="menu">
              <a href="/signup" class="waves-effect waves-light "> <i class="fa fa-user-plus"></i> SIGN UP</a>
            </li>
            <li  style="opacity: 0">
              <!-- <a href="/search" class="waves-effect waves-light">SEARCH</a> -->
              SEARCHF
            </li>
          </ul>
        </div>
        </div>
      </div>
    </div>
    <!--end bavbar-->
	<br><br><br><br>
	<%-- <jsp:include page="fragements/nav/header-navigation.jsp"></jsp:include> --%>
	
	<jsp:include page="fragements/detail/EpDetail.jsp"></jsp:include>
	
	<!-- Include Date Range Picker -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
	<!-- footer -->
	
	 <jsp:include page="fragements/footer/footer.jsp"></jsp:include>

</body>
</html>