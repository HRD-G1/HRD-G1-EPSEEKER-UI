<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
    <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/experts/css/sui/ui.min.css"> --%>
    <!--custom-->
    <link href="${pageContext.request.contextPath}/resources/experts/css/custom.css" rel="stylesheet" type="text/css">
    <script>
      $.noConflict();
          jQuery(document).ready(function($){
          $('select').material_select();
         $('.slider').slider({full_width: true});
                                                                                 	
        });
    </script>
    <!-- statistic css  -->
    <link href="${pageContext.request.contextPath}/resources/experts/css/statistic.css" rel="stylesheet" type="text/css">
  </head><body>
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header ">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
            <span class="sr-only ">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- <a class="navbar-brand"><i class="-retro fa fa-crosshairs"></i></a> -->
          	<a class="navbar-brand">
          		<img alt="EPSEEKER" class="img-responsive logo" src="${pageContext.request.contextPath}/resources/experts/img/logo11.png">
          	</a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="active">
              <a href="/" class="waves-effect waves-light "><i class="fa fa-home "></i> HOME</a>
            </li>
            <li class="menu">
              <a href="/contact" class="waves-effect waves-light "><i class="fa fa-phone"></i> CONTACT</a>
            </li>
            <li class="menu">
              <a href="/about" class="waves-effect waves-light"><i class="fa fa-user-secret"></i> ABOUT</a>
            </li>
            <li class="menu">
              <a href="/login" class="waves-effect waves-light "><i class="fa fa-sign-in"></i> LOGIN</a>
            </li>
            <li class="menu">
              <a href="/signup" class="waves-effect waves-light "> <i class="fa fa-user-plus"></i> SIGN UP</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!--end bavbar-->
    <!--start carousel-->
    <div class="slider">
      <ul class="slides">      
         <li><br><br>
          <img src="${pageContext.request.contextPath}/resources/experts/img/3rd.jfif">
        </li>
        <li><br><br>
          <img src="${pageContext.request.contextPath}/resources/experts/img/4th.jpg">
        </li>
      </ul>
    </div>
    <!--end carousel-->
    <br>
    <!--container developer-->
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-primary text-justify">
          <div class="panel-heading  text-center">WELCOME TO EPSEEDER</div>
            <div class="panel-body">
              <p class="introduction"><span class="fa fa-info-circle"></span> <a href="/"><em>EPSEEKER</em></a> is the best website that helps employers to find employees by providing a lot of
                search functions. All candidates here are all Korea Software HRD Center
                alumni in every generation start from 1<sup>st</sup> generation. Before you can see all details of candidates
                such as education degrees, majors, skills, certificates, their current address and
                other more as employer need, please create and login to your <a href="/login">account </a> for free.</p>
            </div>   
            </div>
          </div>
        </div>
      </div>
      <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-default text-center">
            <div class="panel-heading white text-center">
              <div class="row">
                <div class="col-xs-12">
                  <ul class="tabs text-center">
                    <li class="tab col-md-6">
                      <a href="#developer">Developers</a>
                    </li>
                    <li class="tab col-md-6">
                      <a class="active" href="#sysengineer">System Engineers</a>
                    </li>
                    <li class="tab col-md-6">
                      <a href="#managers">IT Managers </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="panel-body" >
              <div id="developer" class="col-xs-12 text-left" >
              	
                <div class="col-xs-6 col-md-4">
                  <a href="/search"><h6>Android<span class="badge blue">256</span></h6></a>
                </div>
                <div class="col-xs-6 col-md-4">
                  <a href="/search"><h6>IOS<span class="badge blue">256</span></h6></a>
                  
                </div>
                <div class="col-xs-6 col-md-4">
                  
                  <a href="/search"><h6>Web Design<span class="badge blue">256</span></h6></a>
                </div>
                <div class="col-xs-6 col-md-4">
                  
                  <a href="/search"><h6>Spring<span class="badge blue">256</span></h6></a>
                </div>
                <div class="col-xs-6 col-md-4">
                  <a href="/search"><h6>C#<span class="badge blue">256</span></h6></a>
                </div>
                <div class="col-xs-6 col-md-4">
                  <a href="/search"><h6>VB.NET<span class="badge blue">256</span></h6></a>
                </div>
              
              </div>
              
              <div id="sysengineer" class="col-xs-12 text-left">
                <div class="col-xs-6 col-md-4">
                  <a href="/search"><h6>Network<span class="badge blue">256</span></h6></a>
                </div>
                <div class="col-xs-6 col-md-4">
                  <a href="/search"><h6>Any Skill<span class="badge blue">256</span></h6></a>
                  
                </div>
                <div class="col-xs-6 col-md-4">
                  
                  <a href="/search"><h6>Any Skill<span class="badge blue">256</span></h6></a>
                </div>
                <div class="col-xs-6 col-md-4">
                  
                  <a href="/search"><h6>Any Skill<span class="badge blue">256</span></h6></a>
                </div>
                <div class="col-xs-6 col-md-4">
                  <a href="/search"><h6>Any Skill<span class="badge blue">256</span></h6></a>
                </div>
                <div class="col-xs-6 col-md-4">
                  <a href="/search"><h6>Any Skill<span class="badge blue">256</span></h6></a>
                </div>
              </div>
              <div id="managers" class="col-xs-12 text-left">
                <div class="col-xs-6 col-md-4">
                  <a href="/search"><h6>Any Skill<span class="badge blue">256</span></h6></a>
                </div>
                <div class="col-xs-6 col-md-4">
                  <a href="/search"><h6>Any Skill<span class="badge blue">256</span></h6></a>
                  
                </div>
                <div class="col-xs-6 col-md-4">
                  
                  <a href="/search"><h6>Any Skill<span class="badge blue">256</span></h6></a>
                </div>
                <div class="col-xs-6 col-md-4">
                  
                  <a href="/search"><h6>Any Skill<span class="badge blue">256</span></h6></a>
                </div>
                <div class="col-xs-6 col-md-4">
                  <a href="/search"><h6>Any Skill<span class="badge blue">256</span></h6></a>
                </div>
                <div class="col-xs-6 col-md-4">
                  <a href="/search"><h6>Any Skill<span class="badge blue">256</span></h6></a>
                </div>
              </div>
            </div>
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
            <div class="panel-heading text-center">POPULAR EXPERTS</div>
            <div class="panel-body">
       				 <%-- <jsp:include page="expert/fragements/random/random.jsp"></jsp:include> --%>
       				 <!-- start popular expert  -->
       				 <div class="row">
       				 	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
       				 	<a href="/rest/expert/content" class="expert-top">
      						<div class="profile">
      							<img class="img-thumbnail img-responsive" src="${pageContext.request.contextPath}/resources/experts/img/progammer.jpg" rel="stylesheet" type="text/css">
      						</div>
       				 		<div class="profile-description">
      							<b>Name : Torn Sokly</n><br>
      							<b>Skill: Spring Framework</b>
      						</div>
      						</a>
       				 	</div>      
       				 	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
       				 	<a href="/rest/expert/content" class="expert-top">
      						<div class="profile">
      							<img class="img-thumbnail img-responsive" src="${pageContext.request.contextPath}/resources/experts/img/progammer.jpg" rel="stylesheet" type="text/css">
      						</div>
       				 		<div class="profile-description">
      							<b>Name : Torn Sokly</n><br>
      							<b>Skill: Spring Framework</b>
      						</div>
      						</a>
       				 	</div>      
       				 	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
       				 	<a href="/rest/expert/content" class="expert-top">
      						<div class="profile">
      							<img class="img-thumbnail img-responsive" src="${pageContext.request.contextPath}/resources/experts/img/progammer.jpg" rel="stylesheet" type="text/css">
      						</div>
       				 		<div class="profile-description">
      							<b>Name : Torn Sokly</n><br>
      							<b>Skill: Spring Framework</b>
      						</div>
      						</a>
       				 	</div>      
       				 	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
       				 	<a href="/rest/expert/content" class="expert-top">
      						<div class="profile">
      							<img class="img-thumbnail img-responsive" src="${pageContext.request.contextPath}/resources/experts/img/progammer.jpg" rel="stylesheet" type="text/css">
      						</div>
       				 		<div class="profile-description">
      							<b>Name : Torn Sokly</n><br>
      							<b>Skill: Spring Framework</b>
      						</div>
      						</a>
       				 	</div> 
       				 				 
       				 </div>
       				 <div class="row">
       				 		<div class="col-lg-12 text center">
       				 		<ul class="pagination">
       				 		<li><a href="#"><< Pre</a></li>
							  <li><a href="#">1</a></li>
							  <li class="active"><a href="#">2</a></li>
							  <li><a href="#">3</a></li>
							  <li><a href="#">4</a></li>
							 <li><a href="#">Next>></a></li>
							 </div>
						</ul>    
       				 	</div> 	
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
            <div class="panel-heading  text-center">STATISTICS</div>
            <div class="panel-body">
         
              <!-- ly  -->
              
           <div class="row">
        	<div class="col-md-6 col-sm-6 col-lg-3">
        	<div class="profile-header-container">   
    		<div class="profile-header-img">
                <img class="img-circle" src="${pageContext.request.contextPath}/resources/experts/img/progammer.jpg" rel="stylesheet" type="text/css">
                <!-- badge -->
                <div class="rank-label-container">
                    <span class="label label-default rank-label" style="font-size:15px"><em>Developer(100)</em></span>
                </div>
            </div>
        </div> 
        </div>
        <div class="col-md-6 col-sm-6 col-lg-3">
        	<div class="profile-header-container">   
    		<div class="profile-header-img">
                <img class="img-circle" src="${pageContext.request.contextPath}/resources/experts/img/engineer.jpg" rel="stylesheet" type="text/css">
                <!-- badge -->
                <div class="rank-label-container">
                    <span class="label label-default rank-label" style="font-size:15px"><em>System Engineer (100)</em></span>
                </div>
            </div>
        </div> 
        </div>
        <div class="col-md-6 col-sm-6 col-lg-3">
        	<div class="profile-header-container">   
    		<div class="profile-header-img">
                <img class="img-circle" src="${pageContext.request.contextPath}/resources/experts/img/manager.jpg" rel="stylesheet" type="text/css">
                <!-- badge -->
                <div class="rank-label-container">
                    <span class="label label-default rank-label" style="font-size:15px"><em>IT Manager(100)</em></span>
                </div>
            </div>
       	 </div> 
        </div>
        
         <div class="col-md-6 col-sm-6 col-lg-3">
        	<div class="profile-header-container">   
    		<div class="profile-header-img">
                <img class="img-circle" src="${pageContext.request.contextPath}/resources/experts/img/manager.jpg" rel="stylesheet" type="text/css">
                <!-- badge -->
                <div class="rank-label-container">
                    <span class="label label-default rank-label" style="font-size:15px"><em>Skill Set(100)</em></span>
                </div>
            </div>
       	 </div> 
        </div>
	</div>
              <!-- ly -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <br>
  <jsp:include page="expert/fragements/footer/footer.jsp"></jsp:include>

</body></html>