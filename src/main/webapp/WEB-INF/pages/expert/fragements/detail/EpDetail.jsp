<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--[*my CSS*] for general uses for only detail page-->
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/expert/css/detail.css"/> 

<div ng-app="exApp">
        <!--start row personal data by visal-->
        <div class="container">
            <div ng-controller="personalController">
                <!-- start Modal
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content
                        <div class="modal-content">
                            <div class="modal-header profile-option">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title" style="color: #f0f0f0">Update Profile Information</h4>
                            </div>
                            <div class="modal-body">
                                First Name: <input type="text" id="exFName" name="exFName" placeholder="First Name" class="form-control" ng-model="pFName">
                                Last Name: <input type="text" id="exLName" name="exLName" placeholder="Last Name" class="form-control" ng-model="pLName">
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    Gender: <select id="exGender" name="exGender" class="form-control" ng-model="pGender">
                                        <option>Male</option>
                                        <option>Female</option>
                                    </select>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    Marital Status: <select id="exMS" name="exMS" class="form-control" ng-model="pMS">
                                        <option>Single</option>
                                        <option>Married</option>
                                    </select>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    Nationality:<input type="text" id="exNationality" name="exNationality" placeholder="Nationality" class="form-control" ng-model="pNationality">
                                </div>                                
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    Date of Birth:<input class="form-control" id="exDoB" name="date" placeholder="MM/DD/YYYY" type="text" ng-model="pDoB"/>    
                                </div>                                
                                Place of Birth: <input type="text" id="exPoB" name="exPoB" placeholder="Privince | City, Cambodia" class="form-control" ng-model="pPoB">
                                Current Address: <input type="text" id="exCPoB" name="exCPoB" placeholder="Privince | City, Cambodia" class="form-control"ng-model="pCPoB">
                                Email: <input type="text" id="exEmail" name="exEmail" placeholder="Privince | City, Cambodia" class="form-control"ng-model="pEmail">
                                Phone: <input type="text" id="exPhone" name="exPhone" placeholder="Privince | City, Cambodia" class="form-control"ng-model="pPhone">
                            </div>
                            <div class="modal-footer">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-sm" ng-click="updateInfo()" data-dismiss="modal"><span class="fa fa-save"></span> Save Update</button>
                                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal"><span class="fa fa-close"></span> Close</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                end Modal -->

                <!--Personal Information-->
                <div class="row row1">
                    <div class="profile-option">
                        <center><h2 class="small-heading"> <span class="fa fa-arrow-circle-right"></span> ព័ត៌មានផ្ទាល់ខ្លួន</h2></center>
                    </div>                    
                    <div class="col-md-4 col-xs-12">
						<!--<label class="tag label label-primary">Photo Profile</label>-->
						<div id="border-profile" style="top:">
							<center>
								<img style="margin-top: 10px" id="profile" src="${pageContext.request.contextPath }/resources/expert/img/occupation-32-512.png" class="img-responsive img-circle">
								<p style="margin-top: 30px; font-family: 'Arial'; font-size: 22px; font-weight: 500; text-shadow: -1px 1px 1px #999">{{pFName + " " + pLName}}</p>
							</center>
						</div>
                    </div>
                    <div class="col-md-8 col-xs-12">
                        <div id="border-profile">
                            <!--<label class="tag label label-primary">Personal Profile</label>-->
                            <div style="border: 1px solid lightgray; padding: 10px; box-shadow: -5px 5px 10px grey; background-color: #ecf0f1;">
                                <table class="table">
                                <tr style="border: none; border-bottom: 1px solid lightgray">
                                    <th style="width: 130px; border: none">ភេទ</th>
                                    <th style="width: 10px; border: none">:</th>
                                    <td style="border: none">
                                        {{pGender}}
                                    </td>
                                </tr>

                                <tr style="border: none; border-bottom: 1px solid lightgray">
                                    <th style="border: none">ស្ថានភាពគ្រួសារ</th>
                                    <th style="border: none">:</th>
                                    <td style="border: none">
                                        {{pMS}}
                                    </td>
                                </tr>

                                <tr style="border: none; border-bottom: 1px solid lightgray">
                                    <th style="border: none">សញ្ជាតិ</th>
                                    <th style="border: none">:</th>
                                    <td style="border: none">
                                        {{pNationality}}
                                    </td>
                                </tr>

                                <tr style="border: none; border-bottom: 1px solid lightgray">
                                    <th style="border: none">ថ្ងៃខែឆ្នាំកំណើត</th>
                                    <th style="border: none">:</th>
                                    <td style="border: none">
                                        {{pDoB}}
                                    </td>
                                </tr>

                                <tr style="border: none; border-bottom: 1px solid lightgray">
                                    <th style="border: none">ទីកន្លែងកំណើត</th>
                                    <th style="border: none">:</th>
                                    <td style="border: none"> 
                                        {{pPoB}}
                                    </td>
                                </tr>

                                <tr style="border: none; border-bottom: 1px solid lightgray">
                                    <th style="border: none">អាសយដ្ឋានបច្ចុប្បន្ន</th>
                                    <th style="border: none">:</th>
                                    <td style="border: none">
                                        {{pCPoB}}
                                    </td>
                                </tr>   
                                
                                <tr style="border: none; border-bottom: 1px solid lightgray">
                                    <th style="border: none">អ៊ីម៉ែល</th>
                                    <th style="border: none">:</th>
                                    <td style="border: none">
                                        {{pEmail}}
                                    </td>
                                </tr>
                                
                                <tr style="border: none; border-bottom: 1px solid lightgray">
                                    <th style="border: none">លេខទូរស័ព្ទ</th>
                                    <th style="border: none">:</th>
                                    <td style="border: none">
                                        {{pPhone}}
                                    </td>
                                </tr>
                            </table>
                            </div>
                        </div>
                    </div>

                    <div class="text-right" style="margin: 10px;">

                        <!--pf-opt is option of View Mode and Edit Mode-->
                        <div class="btn-group pf-opt">
                            <button id="pf-edit" class="btn btn-skin fa fa-pencil-square-o" data-toggle="modal" data-target="#myModal" ng-click="getUdpateInfo()"> Edit Profile</button>
                            <button id="pf-upload" class="btn btn-skin fa fa-camera-retro"> Upload</button>                        
                        </div>
                    </div>
                </div>
                <!--end personal data-->
            </div> 
            <!--end row personal data by visal-->

            <hr>

            <!-- start education and experience scope -->
            <div  ng-controller="EduAndExpController">

                <!-- start Modal 
                <div class="modal fade" id="education" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content
                        <div class="modal-content">
                            <div class="modal-header profile-option">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title" style="color: #f0f0f0">Update Profile Information</h4>
                            </div>
                            <div class="modal-body">
                                University Name: <input type="text" id="eduPlace" name="eduPlace" placeholder="School Name" class="form-control" ng-model="uPlace">
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    Start Year:<input class="form-control" id="eduSYear" name="date" placeholder="MM/DD/YYYY" type="text" ng-model="uSYear"/>    
                                </div>                                
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    End Year:<input class="form-control" id="eduEYear" name="date" placeholder="MM/DD/YYYY" type="text" ng-model="uEYear"/>    
                                </div>
                                Description:
                                <textarea class="form-control" rows="5" id="eduDes" ng-model="uDes"></textarea>                                
                            </div>
                            <div class="modal-footer">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-skin btn-sm" ng-show="modeInsert"  ng-click="insertEduAndExp()" data-dismiss="modal"><span class="fa fa-adn"></span> Add New</button>
                                    <button type="button" class="btn btn-skin btn-sm" ng-show="modeUpdate" ng-click="updateEduAndExp()" data-dismiss="modal"><span class="fa fa-save"></span> Save Update</button>
                                    <button type="button" class="btn btn-skin btn-sm" data-dismiss="modal"><span class="fa fa-close"></span> Close</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                end Modal -->

                <!--Start Educatioin-->
                <div class="row row1">
                    <div class="profile-option">
                        <center ><h2 style="font-family: 'Arial'" class="small-heading"> <span class="fa fa-arrow-circle-right"></span> ការអប់រំ</h2></center>
                    </div>
                    <table id="edu-container" class="education-container col-md-12 col-xs-12" style="margin-bottom: 0px">
                        <tr ng-repeat="ed in edu">
                            <td>
                                <div id="{{ed.id}}" style="padding: 0; margin: 10px; border-radius: 0px;">
                                    <form class="fm">
	                                   		<fieldset class="fs">
	                                   			<legend class="lg">{{ed.university}}</legend>
	                                   			<p style="font-size: 18px; font-family: 'Calibri'">
	                                   			<i>Period</i>: {{ed.sYear}} To {{ed.eYear}} <br>
	                                   			<i>Major</i>: {{ed.major}} <br>
	                                   			<br>
	                                   			<i>Description</i>: {{ed.des}} 
	                                   			</p>
	                                   		</fieldset>
	                                   </form>
                                </div>
                            </td>
                        </tr>
                    </table>  
                    <div class="text-right" style="margin: 0px 20px 10px 30px">
                        <button id="exp-add" class="pf-opt btn btn-sm btn-skin" data-toggle="modal" data-target="#education" ng-click="insertMode('edu')"><span class="fa fa-plus"></span> Add New</button>
                    </div>
                </div>
                <!--End Education-->
                
                <hr>
                
                <!--Start Current Job-->
                <div class="row row1">
                    <div class="col-md-6 col-xs-12">
                    	<table id="edu-container" class="education-container col-md-12 col-xs-12" style="margin-bottom: 0px">
	                    <div class="profile-option">
	                        <center><h2 class="small-heading"> <span class="fa fa-arrow-circle-right"></span> មុខរបរបច្ចុប្បន្ន</h2></center>
	                    </div>
	                        <tr ng-repeat="cj in curJob">
	                            <td>
	                                <div id="{{cj.id}}">
	                                   <form class="fm">
	                                   		<fieldset class="fs">
	                                   			<legend class="lg">{{cj.institution}}</legend>
	                                   			<p style="font-size: 18px; font-family: 'Calibri'">
	                                   			<i>Institution Phone</i>: {{cj.contactPhone}} <br>
	                                   			<i>Institution Email</i>: {{cj.email}} <br>
	                                   			<br>
	                                   			<i>Position</i>: {{cj.position}} <br>
	                                   			<i>Salary</i>: {{cj.salary | currency }}
	                                   			</p> 
	                                   		</fieldset>
	                                   </form>
	                                </div>
	                            </td>
	                        </tr>
	                    </table>
                    </div>  
					<!--End Current Job-->
					
					<!-- Start Experience -->                    
					<div class="col-md-6 col-xs-12">
						<table id="edu-container" class="education-container col-md-12 col-xs-12" style="margin-bottom: 0px">
	                    <div class="profile-option">
	                        <center><h2 class="small-heading"> <span class="fa fa-arrow-circle-right"></span> បទពិសោធន៍ការងារ</h2></center>
	                    </div>
	                        <tr ng-repeat="ex in exp">
	                            <td>
	                                <div id="{{ex.id}}">
	                                   <form class="fm">
	                                   		<fieldset class="fs">
	                                   			<legend class="lg">{{ex.institution}}</legend>
												<p style="font-size: 18px; font-family: 'Calibri'">	                                   			 
	                                   			Institution Phone: {{ex.contactPhone}} <br>
	                                   			Institution Email: {{ex.email}} <br>
	                                   			<br>
	                                   			Period: {{ex.startDate}} To {{ex.endDate}} <br>
	                                   			Used To Be: {{ex.position}}
	                                   			</p> 
	                                   		</fieldset>
	                                   </form>
	                                </div>
	                            </td>
	                        </tr>
	                    </table>
					</div>						
					<!-- End Experience -->
                    
                    <!-- <div class="text-right" style="margin: 0px 20px 10px 30px">
                        <button id="exp-add" class="pf-opt btn btn-sm btn-skin data-toggle="modal" data-target="#education" ng-click="insertMode('exp')"><span class="fa fa-plus"></span> Add New</button>
                    </div> -->
                </div>
            </div>
            <!-- end education and experience scope -->
            <hr>       
            <!--Start SKILL Language Contact-->
            <div class="row row1" style="padding-bottom: 20px;">
            	<!-- Start Skill -->
                <div class="b-border col-md-4 col-xs-12" ng-controller="SkillController">
                 
                    <!-- start Modal For Skill
                    <div class="modal fade" id="skill" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content
                            <div class="modal-content">
                                <div class="modal-header profile-option">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="color: #f0f0f0">Update Profile Information</h4>
                                </div>
                                <div class="modal-body">
                                    <label>Main Skill</label>
                                    <select class="form-control" 
                                            style="border: none" 
                                            ng-init="MSID = mainSkills[0]"
                                            ng-options="ms.SCateName for ms in mainSkills" 
                                            ng-model="MSID" 
                                            ng-change="changeMainSkill()">
                                    </select> <br> 
                                    <label>SKILL</label>
                                    <select id="chooseSkill" 
                                            class="form-control" 
                                            style="border: none" 
                                            ng-init="skill=subSkill[0]"
                                            ng-options="sk.SName for sk in subSkill | filter: sk.SCateID= MSID.SCateID" 
                                            ng-model="skill" 
                                            ng-change="changeSkill()">
                                    </select>
                                    Select Choose Your Level: 
                                        <div class="btn-group" data-toggle="buttons">
                                                <input type="radio" name="skillLevel" ng-model="skillLevel" ng-value="20" ng-checked="fair" id="option1"> Fair
                                                <input type="radio" name="skillLevel" ng-model="skillLevel" ng-value="40" ng-checked="average" id="option2"> Average
                                                <input type="radio" name="skillLevel" ng-model="skillLevel" ng-value="60" ng-checked="good" id="option3"> Good
                                                <input type="radio" name="skillLevel" ng-model="skillLevel" ng-value="80" ng-checked="perfect" id="option3"> Perfect
                                        </div>
                                </div>  
                                <div class="modal-footer">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-skin btn-sm" ng-show=true  ng-click="insertSkill()" data-dismiss="modal"><span class="fa fa-adn"></span> Add New</button>
                                        <button type="button" class="btn btn-skin btn-sm" ng-show=true ng-click="update()" data-dismiss="modal"><span class="fa fa-save"></span> Save Update</button>
                                        <button type="button" class="btn btn-skin btn-sm" data-dismiss="modal"><span class="fa fa-close"></span> Close</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    end Modal For Skill-->

                    <table id="skill-block" class="col-md-12 col-xs-12"> 
                        <div class="profile-option">
                        	<center><h2 class="small-heading"> <span class="fa fa-arrow-circle-right"></span> ជំនាញ</h2></center>
                    	</div>
                        <tr ng-repeat="eSkill in expertSkill">
                            <td id="{{eSkill.id}}">

                                <span class="alignleft" style="font-family: 'Arial'; font-weight: 600">{{eSkill.mainSkill}}: {{eSkill.exSkill}}</span>

                                <!-- <span class="alignright">
                                    <span style="color: #3dc9b3" class="btn btn-xs fa fa-minus-circle" ng-click="delete(eSkill.id)"></span>
                                    <span style="color: #3dc9b3" class="btn btn-xs fa fa-pencil" ng-click="getUpdate(this)" data-toggle="modal" data-target="#skill"></span>
                                </span> -->      

                                <div style="clear: both;"></div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-info" role="progressbar" style="width:25%">{{eSkill.mention}}</div>
                                    <div class="progress-bar progress-bar-danger" role="progressbar" style="width:{{eSkill.level}}%; background-color: #666"></div>
                                </div>
                            </td>
                        </tr>
                    </table>

                    <!--button add and delete-->
                    <center>
                        <button id="skill-add" class="pf-opt btn btn-sm btn-skin" data-toggle="modal" data-target="#skill" ><span class="fa fa-plus"></span> Add New</button>
                    </center>
                </div>
                <!-- End Skill -->

				<!-- Start Languange -->                
                <div class="b-border col-md-4 col-xs-12" style="padding-bottom: 10px;" ng-controller="languageController">
                
                <!-- start Language Modal 
                <div class="modal fade" id="language" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content
                        <div class="modal-content">
                            <div class="modal-header profile-option">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title" style="color: #f0f0f0">Expert's Language</h4>
                            </div>
                            <div class="modal-body">
                                <label>Select Language: </label>
                                <select class="form-control" 
                                        ng-init="LANG = language[0]"
                                        ng-options="lang.LName for lang in language" 
                                        ng-model="LANG" 
                                        ng-change="changeMainSkill()">
                                </select>
                                <label style="display: inline-block; width: 80px ">Speaking:</label>
                                <div class="btn-group" style="margin: 5px" data-toggle="buttons">
                                    <input type="radio" name="speakinglevel" ng-model="SL" value="Fair" ng-checked="sFair"> Fair
                                    <input type="radio" name="speakinglevel" ng-model="SL" value="Average" ng-checked="sAverage" > Average
                                    <input type="radio" name="speakinglevel" ng-model="SL" value="Good" ng-checked="sGood" > Good
                                    <input type="radio" name="speakinglevel" ng-model="SL" value="Perfect" ng-checked="sPerfect" > Perfect                                                
                                </div>
                                
                                <br>
                                
                                <label style="display: inline-block; width: 80px ">Listenging:</label> 
                                <div class="btn-group" style="margin: 5px" data-toggle="buttons">
                                    <input type="radio" name="listeninglevel" ng-model="LL" value="Fair" ng-checked="lFair"> Fair
                                    <input type="radio" name="listeninglevel" ng-model="LL" value="Average" ng-checked="lAverage" > Average
                                    <input type="radio" name="listeninglevel" ng-model="LL" value="Good" ng-checked="lGood" > Good
                                    <input type="radio" name="listeninglevel" ng-model="LL" value="Perfect" ng-checked="lPerfect" > Perfect                                                
                                </div>
                                
                               <br>
                                
                                <label style="display: inline-block; width: 80px ">Writing:</label>
                                <div class="btn-group" style="margin: 5px" data-toggle="buttons">
                                    <input type="radio" name="writinglevel" ng-model="WL" value="Fair" ng-checked="wFair"> Fair
                                    <input type="radio" name="writinglevel" ng-model="WL" value="Average" ng-checked="wAverage" > Average
                                    <input type="radio" name="writinglevel" ng-model="WL" value="Good" ng-checked="wGood" > Good
                                    <input type="radio" name="writinglevel" ng-model="WL" value="Perfect" ng-checked="wPerfect""> Perfect                                                
                                </div>
                                
                                <br>
                                
                                <label style="display: inline-block; width: 80px ">Reading:</label>
                                <div class="btn-group" style="margin: 5px" data-toggle="buttons">
                                    <input type="radio" name="readinglevel" ng-model="RL" value="Fair" ng-checked="rFair"> Fair
                                    <input type="radio" name="readinglevel" ng-model="RL" value="Average" ng-checked="rAverage" > Average
                                    <input type="radio" name="readinglevel" ng-model="RL" value="Good" ng-checked="rGood" > Good
                                    <input type="radio" name="readinglevel" ng-model="RL" value="Perfect" ng-checked="rPerfect"> Perfect                                                
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-skin btn-sm" ng-show="true"  ng-click="insertLanguage()" data-dismiss="modal"><span class="fa fa-adn"></span> Add New</button>
                                    <button type="button" class="btn btn-skin btn-sm" ng-show="true" ng-click="updateLanguage()" data-dismiss="modal"><span class="fa fa-save"></span> Save Update</button>
                                    <button type="button" class="btn btn-skin btn-sm" data-dismiss="modal"><span class="fa fa-close"></span> Close</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                End Language Modal -->
                
					<table class="col-md-12 col-xs-12">
						<div class="profile-option">
                        	<center><h2 class="small-heading"> <span class="fa fa-arrow-circle-right"></span> ភាសា</h2></center>
                    	</div>        
						<tr ng-repeat="eLang in expertLanguage">
                            <td id="{{eLang.id}}">

                                <span class="alignleft" style="font-family: 'Arial'; font-weight: 600">{{eLang.exLang}}</span>

                                <!-- <span class="alignright">
                                    <span style="color: #3dc9b3" class="btn btn-xs fa fa-minus-circle" ng-click="delete(eSkill.id)"></span>
                                    <span style="color: #3dc9b3" class="btn btn-xs fa fa-pencil" ng-click="getUpdate(this)" data-toggle="modal" data-target="#skill"></span>
                                </span> -->      

                                <div style="clear: both;"></div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-info" role="progressbar" style="width:25%">{{eLang.mention}}</div>
                                    <div class="progress-bar progress-bar-danger" role="progressbar" style="width:{{eLang.level}}%; background-color: #666"></div>
                                </div>
                            </td>
                        </tr>
					</table>                    	
                    <!--button add
                    <center>
                        <button id="language-add" class="pf-opt btn btn-sm btn-skin" data-toggle="modal" data-target="#language" ><span class="fa fa-plus"></span> Add New</button>
                    </center>
                    button add-->
                </div>
                <div class="b-border col-md-4 col-xs-12" ng-controller="jobExpectaion">
                	<div class="profile-option">
                        	<center><h2 class="small-heading"> <span class="fa fa-arrow-circle-right"></span> ការងាររំពឹង</h2></center>
                    </div>
                    <table>
						<tr ng-repeat="jp in jobExpectation">
							<td style="border-bottom: 1px solid #999; padding: 10px">
									<p style="font-size: 18px; font-family: 'Calibri'">
									Option {{$index+1}} <br>
									Position: {{jp.postion}} <br>
									Salary Range: {{jp.minSalary | currency}} - {{jp.maxSalary | currency}} <br>
									Location: {{jp.location}}
								</p>
							</td>
						</tr>								
					</table>
					<!-- <div style="margin-top: 18px; border-radius: 10px 0px 10px 0px; box-shadow: -3px 3px 3px #999">
						<div style="background-color: #666; height: 20px; width: 100%; border-radius: 10px 0px 0px 0px"></div>
						<div style="border-right: 1px solid lightgray; padding: 5px">
							
						</div>
						<div style="background-color: #666; height: 20px; width: 100%; border-radius: 0px 0px 10px 0px"></div>
					</div> -->															                        	
                </div>
            </div>
            <!--End SKILL Language Contact-->
                        
            <!-- Start Document                For document don't new show to login user
            <div ng-controller="documentController">
                <div class="row">
                    <h2 class="small-heading">DOCUMENT</h2>
               	</div>
            	
            </div>
			 End Document -->
        </div>	
</div>