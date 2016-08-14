<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- font for navbar -->
 	<link href='https://fonts.googleapis.com/css?family=Angkor' rel='stylesheet' type='text/css'> 
 	<!-- font for body -->
 	<link href='https://fonts.googleapis.com/css?family=Odor+Mean+Chey' rel='stylesheet' type='text/css'>
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/experts/ui/ui.min.css">
<!--custom-->
<link
	href="${pageContext.request.contextPath}/resources/experts/css/custom.css"
	rel="stylesheet" type="text/css">
<!-- font-awesome-4.6.3 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/expert/font-awesome-4.6.3/css/font-awesome.min.css">

<script>
	
	$.noConflict();
	jQuery(document).ready(function($) {
		$('select').material_select();
		$('.slider').slider({
			full_width : true
		});
		$('.tooltipped').tooltip({
			delay : 50
		});
		
	});
</script>
</head>
<body>
	<!-- start navbar -->
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header ">
				<button type="button" class="navbar-toggle " data-toggle="collapse"
					data-target="#navbar-ex-collapse">
					<span class="sr-only ">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!--  <a class="navbar-brand"><i class="fa -retro fa-crosshairs"></i></a> -->
				<a class="navbar-brand"> <img alt="EPSEEKER" class="logo"
					src="${pageContext.request.contextPath}/resources/experts/img/logo11.png">
				</a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-ex-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="menu"><a href="/" class="waves-effect waves-light "><i
							class="fa fa-home "></i> ទំព័រដើម</a></li>
					<li class="menu"><a href="/contact"
						class="waves-effect waves-light "><i class="fa fa-phone "></i>ទំនាក់ទំនង</a>
					</li>
					<li class=" menu"><a href="/about"
						class="waves-effect waves-light"><i class="fa fa-user-secret"></i>
							អំពី</a></li>
					<li class="menu"><a href="/login"
						class="waves-effect waves-light "><i class="fa fa-sign-in "></i>
							ចូល</a></li>
					<li class="menu"><a href="/signup"
						class="waves-effect waves-light "> <i class="fa fa-user-plus"></i>ចុះឈ្មោះ
					</a></li>
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
				<div class="panel panel-default text-justify">
					<div class="panel-body">
						<div style="word-wrap: break-word;" class="text-left;">
							<p​​ >ទំព័រនេះជួយអ្នកក្នុងការស្វែងរកអ្នកជំនាញIT​ទៅតាមអ្វីដែលអ្នកចង់បាន។​ផ្នែកទាំងពីរខាងក្រោមពិតជាសំខាន់សម្រាប់អ្នក។​អ្នកគ្រាន់តែដឹង
								ពីររបៀបប្រើប្រាស់វាគឺគ្រប់គ្រាន់។ផ្នែកខាងឆ្វេងជាកន្លែងសម្រាប់កំណត់តម្រូវការរបស់អ្នក
								បន្ទាប់មកចុចលើប៊ូតុងស្វែងរក។​ ផ្នែកខាងស្ដាំជា
								កន្លែងសម្រាប់បង្ហាញលទ្ធផល។</p>
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				
			</div>
		</div>
		<div class="row">
			<div class="col-md-5">
				<div class="panel panel-primary text-left">
					<div class="panel-heading ">ឧបករណ៍ស្វែងរក</div>
					<div class="panel-body">
						<!--start panel search body-->
						<form>
							<div>
								<div class="input-field col s6">
									<select>
										<option value="1">ផ្សេងៗ</option>
										<option value="2">បរិញ្ញាបត្រ</option>
										<option value="3">អនុបណ្ឌិត</option>
										<option value="4">បណ្ឌិត</option>
									</select> <label>កំរិតអប់រំ</label>
								</div>
								<div class="input-field col s6">
									<select multiple="">

										<option value="2">IT</option>
										<option value="3">English</option>
										<option value="4">Korean</option>
									</select> <label>ផ្នែក</label>
								</div>
								<div class="input-field col s6">
									<select>
										<option value="Both">ទាំងពីរភេទ</option>
										<option value="Male">ប្រុស</option>
										<option value="Female">ស្រី</option>
									</select> <label>ភេទ</label>
								</div>
								<div class="input-field col s6">
									<select>
										<option value="1">ផ្សេងៗ</option>
										<option value="2">18-25</option>
										<option value="3">25-30</option>
										<option value="4">30-35</option>
										<option value="5">35-40</option>
										<option value="6">40+</option>
									</select> <label>អាយុ</label>
								</div>
							</div>
							<div>
								<div class="input-field col s6">
									<select>
										<option value="1">ជំនាញផ្សេងៗ</option>
										<option value="2">Graphic Design</option>
										<option value="3">Mobile</option>
										<option value="4">Database</option>
									</select> <label>ជំនាញ</label>
								</div>
								<div class="input-field col s6">
									<select multiple="">
										<option value="1">Android</option>
										<option value="2">IOS</option>
									</select> <label>ជំនាញរង</label>
								</div>
							</div>
							<div>
								<div class="input-field col s6">
									<select>
										<option value="1">មុខតំណែងផ្សេងៗ</option>
										<option value="2">Project Manager</option>
										<option value="3">HR</option>
										<option value="4">Admin</option>
									</select> <label>បទពិសោធន៍ជំនាញ</label>
								</div>
								<div class="input-field col s6">
									<select>
										<option value="1">មិនទាមទារ</option>
										<option value="2">1-2</option>
										<option value="3">2-3</option>
										<option value="4">3-4</option>
										<option value="5">4-5</option>
										<option value="6">More Than 5</option>
									</select> <label>បទពិសោធន៍</label>
								</div>
							</div>
							<div>
								<div class="input-field col s12">
									<select>
										<option value="1">ប្រាក់ខែមិនបានកំណត់</option>
										<option value="2">$100-$200</option>
										<option value="3">$200-$300</option>
										<option value="4">$300-$400</option>
										<option value="5">$400-$400</option>
										<option value="6">$500-$600</option>
										<option value="7">More Than $600</option>
									</select> <label>ប្រាក់ខែរំពឹង</label>
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
									</select> <label>ភាសា</label>
								</div>
							</div>
							<div>
								<div class="input-field col s12">
									<select>
										<option value="">ទីតាំងផ្សេងៗ</option>
										<option value="1">Prey Veng</option>
										<option value="2">Kampong Cham</option>
										<option value="3">Siem Reap</option>
										<option value="4">Kandal</option>
										<option value="5">Phnom Penh</option>
									</select> <label>ទីតាំង</label>
								</div>
							</div>
							<button class="btn waves-effect waves-light" type="submit"
								name="action">ស្វែងរក</button>
							<button class="btn waves-effect waves-light" type="reset"
								name="action">កំណត់ឡើងវិញ</button>
						</form>
					</div>
					<!--end panel search body-->
				</div>
			</div>
			<div class="col-md-7">
				<!--start panel result-->
				<div class="panel panel-primary text-left">
					<div class="panel-heading ">លទ្ធផលស្វែងរក</div>
					<div class="panel-body">

						<!-- ly  -->

						<table
							class="table table-striped table-hover table-condensed table-responsive">
							<thead>
								<tr>
									<th>រូបថត</th>
									<th>ឈ្មោះ</th>
									<th>ជំនាញ</th>
									<th>ប្រាក់ខែ</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<td style="width: 120px; text-align: center;">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG"
												width="100px" height="100px" alt="" class="circle">
										</div>
									</td>
									<td><br> <br>Srun Vannary</td>
									<td><em><i><br> <br>Java Developer</i></em></td>
									<td><br> <br>$250-$400</td>
									<td style="float: left;"><br> <br> <a
										href="/rest/expert/content"
										class="secondary-content  tooltipped" data-position="bottom"
										data-delay="50" data-tooltip="មើលលំអិតបន្ថែម"><i
											class="material-icons">visibility</i></a></td>
								</tr>


								<tr>
									<td style="width: 120px; text-align: center;">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG"
												width="100px" height="100px" alt="" class="circle">
										</div>
									</td>
									<td><br> <br>Srun Vannary</td>
									<td><em><i><br> <br>Java Developer</i></em></td>
									<td><br> <br>$250-$400</td>
									<td style="float: left;"><br> <br> <a
										href="/rest/expert/content"
										class="secondary-content  tooltipped" data-position="bottom"
										data-delay="50" data-tooltip="View More Details"><i
											class="material-icons">visibility</i></a></td>
								</tr>
								<tr>
									<td style="width: 120px; text-align: center;">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG"
												width="100px" height="100px" alt="" class="circle">
										</div>
									</td>
									<td><br> <br>Srun Vannary</td>
									<td><em><i><br> <br>Java Developer</i></em></td>
									<td><br> <br>$250-$400</td>
									<td style="float: left;"><br> <br> <a
										href="/rest/expert/content"
										class="secondary-content  tooltipped" data-position="bottom"
										data-delay="50" data-tooltip="View More Details"><i
											class="material-icons">visibility</i></a></td>
								</tr>
								<tr>
									<td style="width: 120px; text-align: center;">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG"
												width="100px" height="100px" alt="" class="circle">
										</div>
									</td>
									<td><br> <br>Srun Vannary</td>
									<td><em><i><br> <br>Java Developer</i></em></td>
									<td><br> <br>$250-$400</td>
									<td style="float: left;"><br> <br> <a
										href="/rest/expert/content"
										class="secondary-content  tooltipped" data-position="bottom"
										data-delay="50" data-tooltip="View More Details"><i
											class="material-icons">visibility</i></a></td>
								</tr>
								<tr>
									<td style="width: 120px; text-align: center;">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/experts/img/vannara.JPG"
												width="100px" height="100px" alt="" class="circle">
										</div>
									</td>
									<td><br> <br>Srun Vannary</td>
									<td><em><i><br> <br>Java Developer</i></em></td>
									<td><br> <br>$250-$400</td>
									<td style="float: left;"><br> <br> <a
										href="/rest/expert/content"
										class="secondary-content  tooltipped" data-position="bottom"
										data-delay="50" data-tooltip="View More Details"><i
											class="material-icons">visibility</i></a></td>
								</tr>


							</tbody>

						</table>

						<!-- ly -->
						<ul class="pagination pagination-sm ">
							<li><a href="#">ថយ</a></li>
							<li class="active disabled"><a href="#">១</a></li>
							<li><a href="#">២</a></li>
							<li><a href="#">៣</a></li>
							<li><a href="#">ទៅមុខ</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--end panel result-->
		</div>
	</div>
	
	<jsp:include page="expert/fragements/footer/footer.jsp"></jsp:include>
	

</body>
</html>