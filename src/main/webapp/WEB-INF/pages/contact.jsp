<%@ page
language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
%>

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
         <!--  <a class="navbar-brand"><i class="-retro fa fa-crosshairs"></i></a> -->
         <a class="navbar-brand">
          		<img alt="EPSEEKER" class="logo" src="${pageContext.request.contextPath}/resources/experts/img/logo11.png">
          	</a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
          <ul class="nav navbar-nav navbar-right">
           <li class="menu">
              <a href="/" class="waves-effect waves-light " ><i class="fa fa-home " ></i> ទំព័រដើម</a>
            </li>
            <li class="active menu">
              <a href="/contact" class="waves-effect waves-light " "><i class="fa fa-phone " ></i>ទំនាក់ទំនង</a>
            </li>
            <li class=" menu">
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
        <div class="col-md-6">
          <div class="panel panel-primary text-center">
            <div class="panel-heading ">ទីតាំង</div>
            <div class="panel-body" >
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3908.6661823004565!2d104.88697831432277!3d11.575771247096458!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3109519cfc0bdfb1%3A0x2c2974b77cdaff4b!2sKorea+Software+HRD+Center!5e0!3m2!1sen!2skh!4v1470056846184" width="360" height="300" frameborder="0" style="border:0" allowfullscreen=""></iframe>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="panel panel-primary text-center">
            <div class="panel-heading ">ទំនាក់ទំនង</div>
            <div class="panel-body">
              <div class="text-left">
						<ul>
							<li>អាសយដ្ឋាន: #12, ផ្លូវ 323, សង្កាត់បឹងកក់ II, ខណ្ឌទួលគោក
								, ភ្នំពេញ, កម្ពុជា.</li>
							<li>ទូរស័ព្ទ:&nbsp;&nbsp; (855)23 99 13 14</li>
							<li>&nbsp; &nbsp; &nbsp;(855)77 77 12 36 (ខ្មែរ, English)</li>
							<li>&nbsp; &nbsp; &nbsp;(855)15 4 5555 2 (ខ្មែរ, English)</li>
							<li>&nbsp; &nbsp; &nbsp;(855)17 52 81 69(Korean, English)</li>
							<li>អ៊ីម៉ែល: <a href="mailto:info.kshrd@gmail.com">info.kshrd@gmail.com</a>
								<a href="mailto:phirum.gm@gmail.com">phirum.gm@gmail.com</a></li>
						</ul>

					</div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-primary text-center">
            <div class="panel-heading ">ផ្ញើសារ</div>
            <div class="panel-body">
              <div class="row">
                <form class="col s12 text-center">
                  <div class="row">
                    <div class="input-field col s12">
                      <i class="material-icons prefix">person_pin</i>
                      <input id="icon_prefix" type="text" required="សកក">
                      <label for="icon_prefix">ឈ្មោះ</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12">
                      <i class="material-icons prefix">phone</i>
                      <input id="icon_prefix" type="text" required>
                      <label for="icon_prefix">ទូរស័ព្ទ</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12">
                      <i class="material-icons prefix">email</i>
                      <input id="icon_prefix" type="email" required="">
                      <label for="icon_prefix">អ៊ីម៉ែល</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="control-group form-group">
                      <div class="controls">
                        <label>សារ</label>
                        <textarea rows="10" cols="100" class="form-control" id="message" required="" data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
                      </div>
                    </div>
                  </div>
                  <button class="btn waves-effect waves-light" type="submit" name="action">ផ្ញើ</button>
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