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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/expertsui/ui.min.css">
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
          <a class="navbar-brand"><i class="-retro fa fa-crosshairs"></i></a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="active">
              <a href="/" class="waves-effect waves-light ">HOME</a>
            </li>
            <li>
              <a href="/contact" class="waves-effect waves-light ">CONTACT</a>
            </li>
            <li>
              <a href="/about" class="waves-effect waves-light">ABOUT</a>
            </li>
            <li>
              <a href="/login" class="waves-effect waves-light ">LOGIN</a>
            </li>
            <li>
              <a href="/signup" class="waves-effect waves-light ">SIGN UP</a>
            </li>
            <li>
              <a href="/search" class="waves-effect waves-light ">SEARCH</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!--end bavbar-->
    <!--start carousel-->
    <div class="slider">
      <ul class="slides">
        <li>
          <img src="../../resource/experts/img/slide.jfif">
          <!-- random image -->
          <div class="caption center-align">
            <h2 class="text-"><em><i>Welcome</i></em></h2>
            <h3 class="text-"><em><i>To</i></em>
            <h3 class="text-"><em><i>EPSEEKER .....</i></em> </h3>
          </div>
        </li>
        <li>
          <img src="../../resource/experts/img/HR-2.jpg">
          <!-- random image -->
          <div class="caption right-align">
            <h2 style="color:black"><em><i>The Best Website</i></em></h2>
            <h3 style="color:black;box-shadow:2px;">For Employee Recruitment.....</h3>
          </div>
        </li>
      </ul>
    </div>
    <!--end carousel-->
    <br>
    <!--container developer-->
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-default text-justify">
            <div class="panel-body">
              <p>This website help employers to find their workers by providing a lot of
                search functions. All candidates here are all Korea Software HRD Center
                alumni in every generation. Before you can see all details of candiadates
                like education degrees, majors, skills, certificates, thier location and
                a lot more, please create and login to your
                <a href="#">account</a>for free.</p>
            </div>
          </div>
        </div>
      </div>
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
            <div class="panel-body">
              <div id="developer" class="col-xs-12 text-center">
                <div class="col-xs-4">
                  <a href="#">Android<span class="badge blue">256</span></a>
                </div>
                <div class="col-xs-4">
                  <a href="#">IOS<span class="badge blue">256</span></a>
                </div>
                <div class="col-xs-4">
                  <a href="#">Web Design<span class="badge blue">256</span></a>
                </div>
                <div class="col-xs-4">
                  <a href="#">Spring<span class="badge blue">256</span></a>
                </div>
                <div class="col-xs-4">
                  <a href="#">C#<span class="badge blue">256</span></a>
                </div>
                <div class="col-xs-4">
                  <a href="#">VB.NET<span class="badge blue">256</span></a>
                </div>
              </div>
              <div id="sysengineer" class="col-xs-12 text-center">
                <div class="col-xs-4">
                  <a href="#">Skills<span class="badge blue">256</span></a>
                </div>
                <div class="col-xs-4">
                  <a href="#">Skills<span class="badge blue">256</span></a>
                </div>
                <div class="col-xs-4">
                  <a href="#">Skills<span class="badge blue">256</span></a>
                </div>
              </div>
              <div id="managers" class="col-xs-12 text-center">
                <div class="col-xs-4">
                  <a href="#">Skills<span class="badge blue">256</span></a>
                </div>
                <div class="col-xs-4 text-center">
                  <a href="#">Skills<span class="badge blue">256</span></a>
                </div>
                <div class="col-xs-4">
                  <a href="#">Skills<span class="badge blue">256</span></a>
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
        <div class="col-md-12">
          <div class="panel panel-primary text-left">
            <div class="panel-heading  text-center">POPULAR DEVELOPERS</div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-xs-6">
                  <a href="#"><img src="../../resource/experts/img/stevie.jpg" class="img-fluid img-thumbnail m-y">
          			Full Name
          			<br>
          			Subject
          			</a>
                </div>
                <div class="col-md-3 col-xs-6">
                  <a href="#"><img src="../../resource/experts/img/stevie.jpg" class="img-fluid img-thumbnail m-y">
          			Full Name
          			<br>
          			Subject
          			</a>
                </div>
                <div class="col-md-3 col-xs-6">
                  <a href="#"><img src="../../resource/experts/img/stevie.jpg" class="img-fluid img-thumbnail m-y">
          			Full Name
          			<br>
          			Subject
          			</a>
                </div>
                <div class="col-md-3 col-xs-6">
                  <a href="#"><img src="../../resource/experts/img/stevie.jpg" class="img-fluid img-thumbnail m-y">
          			Full Name
          			<br>
          			Subject
          			</a>
                </div>
              </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-primary text-center">
            <div class="panel-heading  text-center">STATISTICS</div>
            <div class="panel-body">
              <div class="col-sm-6">
                <div class="text-center">
                  <h5>Developers
                    <span class="badge blue">256</span>
                  </h5>
                </div>
              </div>
              <div class="col-sm-6">
                <div class=" text-center">
                  <h5>System Engineers
                    <span class="badge blue">128</span>
                  </h5>
                </div>
              </div>
              <div class="col-sm-6">
                <div class=" text-center">
                  <h5>IT Managers
                    <span class="badge blue">64</span>
                  </h5>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <br>
  <jsp:include page="expert/fragements/footer/footer.jsp"></jsp:include>

</body></html>