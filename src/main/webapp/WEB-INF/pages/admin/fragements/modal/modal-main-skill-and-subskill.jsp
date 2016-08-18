	<!-- line modal of main skill -->
		<div class="modal fade" id="addMainSkill" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
		  <div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
					<h3 class="modal-title" id="lineModalLabel">Main Skill</h3>
				</div>
				<div class="modal-body">
					
		            <!-- content goes here -->
					<form>			  
		              <div class="form-group">
		                <label for="MainSkill">Add New Main Skill</label>
		                <input type="text" class="form-control" id="mainSkill" placeholder="Add New Main Skill" ng-model="mainSkillName">
		              </div>              
		            </form>
		
				</div>
				<div class="modal-footer">
					<div class="btn-group btn-group-justified" role="group" aria-label="group button">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">Close</button>
						</div>
						<div class="btn-group btn-delete" role="group">
							<button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button" ng-click="updateMainSkill()">Update</button>
						</div>
						<div class="btn-group" role="group">
							<button type="button" id="insertDataOfMainSkill" class="btn btn-default btn-hover-green" data-action="save" role="button" ng-click="insertDataOfMainSkill()">Save</button>
						</div>
					</div>
				</div>
			</div>
		  </div>
		</div>
		<!-- line modal of main skill -->
		
		
		<!-- line modal of Skill -->
		<div class="modal fade" id="addSkill" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
		  <div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
					<h3 class="modal-title" id="lineModalLabel">Sub Skill</h3>
				</div>
				<div class="modal-body">
					
		            <!-- content goes here -->
					<form>
					  <div class="form-group">
				      	<label for="mainSkill">Sub Skill</label>
				        <select class="form-control" id="mainSkill" 
				        	ng-model="subjectCategory" 
				        	data-ng-options="ms.subjectCategoryID as ms.subjectCategoryName for ms in mainSkillSet" >
				        	<option value="">--Select--</option>
				        </select>
			          </div>	
		              <div class="form-group">
		                <label for="country">Add New Sub Skill</label>
		                <input type="text" class="form-control" id="country" placeholder="Add New Skill" ng-model="subjectName">
		              </div>              
		            </form>
		
				</div>
				<div class="modal-footer">
					<div class="btn-group btn-group-justified" role="group" aria-label="group button">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">Close</button>
						</div>
						<div class="btn-group btn-delete" role="group" >
							<button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button" ng-click="updateSkill()">Update</button>
						</div>
						<div class="btn-group" role="group" >
							<button type="button" id="insertDataOfMainSkill" class="btn btn-default btn-hover-green" data-action="save" role="button" ng-click="insertDataOfSubSkill()">Save</button>
						</div>
					</div>
				</div>
			</div>
		  </div>
		</div>
		<!-- line modal of Skill -->