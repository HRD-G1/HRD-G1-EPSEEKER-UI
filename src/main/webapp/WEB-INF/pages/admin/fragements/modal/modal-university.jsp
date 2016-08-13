<!-- line modal -->
<div class="modal fade" id="addUniversity" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">�</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">My Modal</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form>			  
              <div class="form-group">
                <label for="country">Add New University</label>
                <input type="text" class="form-control" id="commune" placeholder="Add New University" ng-model="universityName">
              </div>              
            </form>

		</div>
		<div class="modal-footer">
			<div class="btn-group btn-group-justified" role="group" aria-label="group button">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">Close</button>
				</div>
				<div class="btn-group btn-update" role="group" ng-hide="ifUpdate">
					<button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button" ng-click="updateUniversity()">Update</button>
				</div>
				<div class="btn-group" role="group" ng-hide="ifInsert">
					<button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button" ng-click="insertUniverty()">Save</button>
				</div>
			</div>
		</div>
	</div>
  </div>
</div>