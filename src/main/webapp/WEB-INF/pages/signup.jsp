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
          <!-- <a class="navbar-brand"><i class="-retro fa fa-crosshairs"></i></a> -->
          <a class="navbar-brand">
          		<img alt="EPSEEKER" src="${pageContext.request.contextPath}/resources/experts/img/logo.gif">
          	</a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li>
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
            <li class="active">
              <a href="/signup" class="waves-effect waves-light ">SIGN UP</a>
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
            <div class="panel-heading ">SIGN UP</div>
            <div class="panel-body">
              <div class="row">
                <form class="col s12 text-center">
                  <div class="row">
                    <div class="input-field col s12">
                      <i class="material-icons prefix">email</i>
                      <input id="icon_prefix" type="email" class="validate" required>
                      <label for="icon_prefix">Email</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12">
                      <i class="material-icons prefix">email</i>
                      <input id="icon_prefix" type="email" class="validate" required>
                      <label for="icon_prefix">Re-Type Email</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12">
                      <i class="material-icons prefix">perm_identity</i>
                      <input id="icon_prefix" type="text" required>
                      <label for="icon_prefix">Username</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12">
                      <i class="material-icons prefix">vpn_key</i>
                      <input id="icon_prefix" type="password" required>
                      <label for="icon_prefix">Password</label>
                    </div>
                  </div>
                  <div class="row text-left">
                    <div class="input-field col s10 push-s1">
                      <select>
                        <option value="" disabled="" selected="">Please select your gender</option>
                        <option value="1">Male</option>
                        <option value="2">Female</option>
                      </select>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s10 push-s1">
                      <select>
                        <option value="" disabled="" selected="">Please choose your department</option>
                        <option>Computer Science Department</option>
                        <option>Business And Economic Department</option>
                        <option>Law and Public Affairs Department</option>
                        <option>Art, Letter and Humanities Department</option>
                        <option>Communication and Media Art Department</option>
                        <option>Architecture and Design Department</option>
                        <option>Management and Economic Department</option>
                        <option>Social Sciences and International Relations Department</option>
                        <option>Department of Science</option>
                        <option>Other</option>
                      </select>
                    </div>
                  </div>
                  <button class="btn waves-effect waves-light" type="submit" name="action">sign up</button>
                  <button class="btn waves-effect waves-light" type="reset" name="action">Reset</button>
                  <br><br>
                  <a href="/login">Already have an account?</a>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <br>
  <jsp:include page="expert/fragements/footer/footer.jsp"></jsp:include>
</body></html>