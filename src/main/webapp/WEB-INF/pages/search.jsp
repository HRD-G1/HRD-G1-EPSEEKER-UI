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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/experts/ui/ui.min.css">
    <!--custom-->
    <link href="${pageContext.request.contextPath}/resources/experts/css/custom.css" rel="stylesheet" type="text/css">
    <!-- font-awesome-4.6.3 -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/expert/font-awesome-4.6.3/css/font-awesome.min.css">
    <script>
      $.noConflict();
        jQuery(document).ready(function($){
        $('select').material_select();
        $('.slider').slider({full_width: true});
        $('.tooltipped').tooltip({delay: 50});                                     	
        });
    </script>
     </head><body>
  <!-- start navbar -->
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header ">
          <button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#navbar-ex-collapse">
            <span class="sr-only ">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand"><i class="fa -retro fa-crosshairs"></i></a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li>
              <a href="/index" class="waves-effect waves-light ">HOME</a>
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
              <a href="signup" class="waves-effect waves-light ">SIGN UP</a>
            </li>
            <li class="active">
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
          <div class="panel panel-default text-justify">
            <div class="panel-body">
              <p>This page help you a lot to find how qualify of workers you want. The
                two sections below will be very important for you. You only need to know
                how to use it. The left section is where you can filter the IT experts
                by choosing some of requirements you need and click the search button to
                see the results in the right section. Good luck...</p>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-5">
          <div class="panel panel-primary text-left">
            <div class="panel-heading ">SEARCH TOOLS</div>
            <div class="panel-body">
              <!--start panel search body-->
              <form>
                <div>
                  <div class="input-field col s6">
                    <select>
                      <option value="1">Any Degree</option>
                      <option value="2">Bachelor</option>
                      <option value="3">Master</option>
                      <option value="4">PHD</option>
                    </select>
                    <label>Education</label>
                  </div>
                  <div class="input-field col s6">
                    <select multiple="">
                      
                      <option value="2">IT</option>
                      <option value="3">English</option>
                      <option value="4">Korean</option>
                    </select>
                    <label>Major</label>
                  </div>
                   <div class="input-field col s6">
                    <select>
                      <option value="Both">Both</option>
                      <option value="Male">Male</option>
                      <option value="Female">Female</option>
                    </select>
                    <label>Gender</label>
                  </div>
                  <div class="input-field col s6">
                    <select>
                      <option value="1">Any</option>
                      <option value="2">18-25</option>
                      <option value="3">25-30</option>
                      <option value="4">30-35</option>
                      <option value="5">35-40</option>
                      <option value="6">40+</option>
                    </select>
                    <label>Age</label>
                  </div>
                </div>
                <div>
                  <div class="input-field col s6">
                    <select>
                      <option value="1">Any Skill</option>
                      <option value="2">Graphic Design</option>
                      <option value="3">Mobile</option>
                      <option value="4">Database</option>
                    </select>
                    <label>Skills</label>
                  </div>
                  <div class="input-field col s6">
                    <select multiple="">
                      <option value="1">Android</option>
                      <option value="2">IOS</option>
                    </select>
                    <label>Sub Skill</label>
                  </div>
                </div>
                <div>
                  <div class="input-field col s6">
                    <select>
                      <option value="1">Any Position</option>
                      <option value="2">Project Manager</option>
                      <option value="3">HR</option>
                      <option value="4">Admin</option>
                    </select>
                    <label>Experience Position</label>
                  </div>
                  <div class="input-field col s6">
                    <select>
                      <option value="1">Not Required</option>
                      <option value="2">1-2</option>
                      <option value="3">2-3</option>
                      <option value="4">3-4</option>
                      <option value="5">4-5</option>
                      <option value="6">More Than 5</option>
                    </select>
                    <label>Experience (year)</label>
                  </div>
                </div>
                <div>
                  <div class="input-field col s12">
                    <select>
                      <option value="1">Any Salary</option>
                      <option value="2">$100-$200</option>
                      <option value="3">$200-$300</option>
                      <option value="4">$300-$400</option>
                      <option value="5">$400-$400</option>
                      <option value="6">$500-$600</option>
                      <option value="7">More Than $600</option>
                    </select>
                    <label>Expected Salary</label>
                  </div>
                </div>
                <div>
                  <div class="input-field col s12">
                    <select multiple="">
                      <option value="1">Khmer</option>
                      <option value="2">Korean</option>
                      <option value="3">Loa</option>
                      <option value="4">English</option>
                      <option value="5">Thai</option>
                    </select>
                    <label>Language</label>
                  </div>
                </div>
                <div>
                  <div class="input-field col s12">
                    <select>
                      <option value="">Any Location</option>
                      <option value="1">Prey Veng</option>
                      <option value="2">Kampong Cham</option>
                      <option value="3">Siem Reap</option>
                      <option value="4">Kandal</option>
                      <option value="5">Phnom Penh</option>
                    </select>
                    <label>Location</label>
                  </div>
                </div>
                <button class="btn waves-effect waves-light" type="submit" name="action">SEARCH</button>
                <button class="btn waves-effect waves-light" type="reset" name="action">RESET</button>
              </form>
            </div>
            <!--end panel search body-->
          </div>
        </div>
        <div class="col-md-7">
          <!--start panel result-->
          <div class="panel panel-primary text-left">
            <div class="panel-heading ">SEARCH RESULTS</div>
            <div class="panel-body">
            
            <!-- ly  -->
            
            		<table class="table table-striped table-hover table-condensed table-responsive">
            			<thead>
							<tr>
								<th>PROFILE</th>
								<th>NAME</th>
								<th>SKILL</th>
								<th>SALARY</th>
								<th>VIEW</th>
            				</tr>            			
            			</thead>
            			<tbody>
            				            				<tr>
	            				<td style="width: 120px; text-align: center;">
	            					<div >
	            						 <img src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG" width="100px" height="100px" alt="" class="circle">
	            					</div>
	            				</td>
	            				<td><br><br>Srun Vannary</td>
	            				<td><em><i><br><br>Java Developer</i></em></td>
	            				<td><br><br>$250-$400</td>
	            				<td style="float: left;"><br><br>
	            					 <a href="/rest/expert/content" class="secondary-content  tooltipped" data-position="bottom" data-delay="50" data-tooltip="View More Details"><i class="material-icons">visibility</i></a>
	            				</td>
            				</tr>
            				
            				
            				<tr>
	            				<td style="width: 120px; text-align: center;">
	            					<div >
	            						 <img src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG" width="100px" height="100px" alt="" class="circle">
	            					</div>
	            				</td>
	            				<td><br><br>Srun Vannary</td>
	            				<td><em><i><br><br>Java Developer</i></em></td>
	            				<td><br><br>$250-$400</td>
	            				<td style="float: left;"><br><br>
	            					 <a href="/rest/expert/content" class="secondary-content  tooltipped" data-position="bottom" data-delay="50" data-tooltip="View More Details"><i class="material-icons">visibility</i></a>
	            				</td>
            				</tr>
            				<tr>
	            				<td style="width: 120px; text-align: center;">
	            					<div >
	            						 <img src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG" width="100px" height="100px" alt="" class="circle">
	            					</div>
	            				</td>
	            				<td><br><br>Srun Vannary</td>
	            				<td><em><i><br><br>Java Developer</i></em></td>
	            				<td><br><br>$250-$400</td>
	            				<td style="float: left;"><br><br>
	            					 <a href="/rest/expert/content" class="secondary-content  tooltipped" data-position="bottom" data-delay="50" data-tooltip="View More Details"><i class="material-icons">visibility</i></a>
	            				</td>
            				</tr>
            				<tr>
	            				<td style="width: 120px; text-align: center;">
	            					<div >
	            						 <img src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG" width="100px" height="100px" alt="" class="circle">
	            					</div>
	            				</td>
	            				<td><br><br>Srun Vannary</td>
	            				<td><em><i><br><br>Java Developer</i></em></td>
	            				<td><br><br>$250-$400</td>
	            				<td style="float: left;"><br><br>
	            					 <a href="/rest/expert/content" class="secondary-content  tooltipped" data-position="bottom" data-delay="50" data-tooltip="View More Details"><i class="material-icons">visibility</i></a>
	            				</td>
            				</tr>
            				<tr>
	            				<td style="width: 120px; text-align: center;">
	            					<div >
	            						 <img src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG" width="100px" height="100px" alt="" class="circle">
	            					</div>
	            				</td>
	            				<td><br><br>Srun Vannary</td>
	            				<td><em><i><br><br>Java Developer</i></em></td>
	            				<td><br><br>$250-$400</td>
	            				<td style="float: left;"><br><br>
	            					 <a href="/rest/expert/content" class="secondary-content  tooltipped" data-position="bottom" data-delay="50" data-tooltip="View More Details"><i class="material-icons">visibility</i></a>
	            				</td>
            				</tr>
            				<tr>
	            				<td style="width: 120px; text-align: center;">
	            					<div >
	            						 <img src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG" width="100px" height="100px" alt="" class="circle">
	            					</div>
	            				</td>
	            				<td><br><br>Srun Vannary</td>
	            				<td><em><i><br><br>Java Developer</i></em></td>
	            				<td><br><br>$250-$400</td>
	            				<td style="float: left;"><br><br>
	            					 <a href="/rest/expert/content" class="secondary-content  tooltipped" data-position="bottom" data-delay="50" data-tooltip="View More Details"><i class="material-icons">visibility</i></a>
	            				</td>
            				</tr>
            				
            				
            				<tr>
	            				<td style="width: 120px; text-align: center;">
	            					<div >
	            						 <img src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG" width="100px" height="100px" alt="" class="circle">
	            					</div>
	            				</td>
	            				<td><br><br>Srun Vannary</td>
	            				<td><em><i><br><br>Java Developer</i></em></td>
	            				<td><br><br>$250-$400</td>
	            				<td style="float: left;"><br><br>
	            					 <a href="/rest/expert/content" class="secondary-content  tooltipped" data-position="bottom" data-delay="50" data-tooltip="View More Details"><i class="material-icons">visibility</i></a>
	            				</td>
            				</tr>
            				<tr>
	            				<td style="width: 120px; text-align: center;">
	            					<div >
	            						 <img src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG" width="100px" height="100px" alt="" class="circle">
	            					</div>
	            				</td>
	            				<td><br><br>Srun Vannary</td>
	            				<td><em><i><br><br>Java Developer</i></em></td>
	            				<td><br><br>$250-$400</td>
	            				<td style="float: left;"><br><br>
	            					 <a href="/rest/expert/content" class="secondary-content  tooltipped" data-position="bottom" data-delay="50" data-tooltip="View More Details"><i class="material-icons">visibility</i></a>
	            				</td>
            				</tr>
            				<tr>
	            				<td style="width: 120px; text-align: center;">
	            					<div >
	            						 <img src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG" width="100px" height="100px" alt="" class="circle">
	            					</div>
	            				</td>
	            				<td><br><br>Srun Vannary</td>
	            				<td><em><i><br><br>Java Developer</i></em></td>
	            				<td><br><br>$250-$400</td>
	            				<td style="float: left;"><br><br>
	            					 <a href="/rest/expert/content" class="secondary-content  tooltipped" data-position="bottom" data-delay="50" data-tooltip="View More Details"><i class="material-icons">visibility</i></a>
	            				</td>
            				</tr>
            				<tr>
	            				<td style="width: 120px; text-align: center;">
	            					<div >
	            						 <img src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG" width="100px" height="100px" alt="" class="circle">
	            					</div>
	            				</td>
	            				<td><br><br>Srun Vannary</td>
	            				<td><em><i><br><br>Java Developer</i></em></td>
	            				<td><br><br>$250-$400</td>
	            				<td style="float: left;"><br><br>
	            					 <a href="/rest/expert/content" class="secondary-content  tooltipped" data-position="bottom" data-delay="50" data-tooltip="View More Details"><i class="material-icons">visibility</i></a>
	            				</td>
            				</tr>
            			</tbody>
            			
            		</table>
            		
            <!-- ly -->
              <ul class="pagination pagination-sm ">
                <li>
                  <a href="#">Prev</a>
                </li>
                <li class="active disabled">
                  <a href="#">1</a>
                </li>
                <li>
                  <a href="#">2</a>
                </li>
                <li>
                  <a href="#">3</a>
                </li>
                <li>
                  <a href="#">Next</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!--end panel result-->
      </div>
    </div>
 <jsp:include page="expert/fragements/footer/footer.jsp"></jsp:include>
</body></html>