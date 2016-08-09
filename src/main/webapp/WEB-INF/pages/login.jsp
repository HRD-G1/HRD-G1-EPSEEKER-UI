<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
    <!--cutom-->
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
            <li>
              <a href="/" class="waves-effect waves-light ">HOME</a>
            </li>
            <li>
              <a href="/contact" class="waves-effect waves-light ">CONTACT</a>
            </li>
            <li>
              <a href="/about" class="waves-effect waves-light">ABOUT</a>
            </li>
            <li class="active">
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
    <br>
    <br>
    <br>
    <br>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-primary text-center">
            <div class="panel-heading ">LOGIN</div>
            <div class="panel-body">
              <div class="row">
                <form class="col s12 text-center" action="" method="POST">
                  <div class="row">
                    <div class="input-field col s12">
                      <i class="material-icons prefix">email</i>
                      <input id="icon_prefix" type="email" required="">
                      <label for="icon_prefix">Email</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12">
                      <i class="material-icons prefix">vpn_key</i>
                      <input id="icon_prefix" type="password">
                      <label for="icon_prefix">Password</label>
                    </div>
                  </div>
                  <button class="btn waves-effect waves-light" type="submit" name="action">Login</button>
                  <button class="btn waves-effect waves-light" type="submit" name="action">Login Via Facebook!</button>
                  <br><br>
                  <a href="/signup">Don't have an account?</a>
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