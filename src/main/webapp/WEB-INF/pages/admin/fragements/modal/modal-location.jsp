<div ng-controller="locationController">
<!-- line modal -->
<div class="modal fade" id="addCountry" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">My Modal</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form>
              <div class="form-group">
                <label for="country">Add New Country</label>
                <input type="text" class="form-control" id="country" placeholder="Add New Country" ng-model="countryName">
              </div>              
            </form>

		</div>
		<div class="modal-footer">
			<div class="btn-group btn-group-justified" role="group" aria-label="group button">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">Close</button>
				</div>
				<div class="btn-group btn-delete hidden" role="group">
					<button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button">Delete</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button" ng-click="insertCountry()">Save</button>
				</div>
			</div>
		</div>
	</div>
  </div>
</div>


<!-- line modal city or province-->
<div class="modal fade" id="addProvince" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">My Modal</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form>
			  <div class="form-group">
		      	<label for="gender">Country</label>
		        <select class="form-control" id="gedner" ng-model="objectCountry" ng-options="cn.countryName for cn in country"></select>
	          </div>	
              <div class="form-group">
                <label for="country">Add New Province or City</label>
                <input type="text" class="form-control" id="country" placeholder="Add New Province or City" ng-model="provinceOrCityName">
              </div>              
            </form>

		</div>
		<div class="modal-footer">
			<div class="btn-group btn-group-justified" role="group" aria-label="group button">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">Close</button>
				</div>
				<div class="btn-group btn-delete hidden" role="group">
					<button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button">Delete</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button" ng-click="insertProvince()">Save</button>
				</div>
			</div>
		</div>
	</div>
  </div>
</div>
<!-- line modal city or province-->


<!-- line modal of district -->
<div class="modal fade" id="addDistrict" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">My Modal</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form>
			  <div class="form-group">
		      	<label for="gender">Country</label>
		        <select class="form-control" id="gedner" ng-model="objectCountry" ng-options="cn.countryName for cn in country">
		      	</select>
	          </div>	
	          <div class="form-group">
		      	<label for="gender">Province Or City</label>
		        <select class="form-control" id="gedner" ng-model="objectProvince" ng-options="pv.cityOrProvinceName for pv in provinceOrCity | filter: pv.countryID = objectCountry.countryID">
		      	</select>
	          </div>
              <div class="form-group">
                <label for="country">Add New District</label>
                <input type="text" class="form-control" id="country" placeholder="Add New District" ng-model="districtName">
              </div>              
            </form>

		</div>
		<div class="modal-footer">
			<div class="btn-group btn-group-justified" role="group" aria-label="group button">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">Close</button>
				</div>
				<div class="btn-group btn-delete hidden" role="group">
					<button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button">Delete</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button" ng-click="insertDistrict()">Save</button>
				</div>
			</div>
		</div>
	</div>
  </div>
</div>
<!-- line modal of district -->


<!-- line modal of Commune-->
<div class="modal fade" id="addCommune" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">My Modal</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form>
			  <div class="form-group">
		      	<label for="gender">Country</label>
		        <select class="form-control" id="gedner" ng-model="objectCountry" ng-options="cn.countryName for cn in country">
		      	</select>
	          </div>	
	          <div class="form-group">
		      	<label for="gender">Province Or City</label>
		        <select class="form-control" id="gedner" ng-model="objectProvince" ng-options="pv.cityOrProvinceName for pv in provinceOrCity | filter: pv.countryID = objectCountry.countryID">
		      	</select>
	          </div>
	          <div class="form-group">
		      	<label for="gender">District</label>
		        <select class="form-control" id="gedner" ng-model="objectDistrict" ng-options="ds.districtName for ds in district | filter: ds.cityOrProvinceID = objectProvince.cityOrProvinceID">
		      	</select>
	          </div>
              <div class="form-group">
                <label for="country">Add New Commune</label>
                <input type="text" class="form-control" id="commune" placeholder="Add New Commune" ng-model="communeName">
              </div>              
            </form>

		</div>
		<div class="modal-footer">
			<div class="btn-group btn-group-justified" role="group" aria-label="group button">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">Close</button>
				</div>
				<div class="btn-group btn-delete hidden" role="group">
					<button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button">Delete</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button" ng-click="insertCommune()">Save</button>
				</div>
			</div>
		</div>
	</div>
  </div>
</div>
<!-- line modal of Commune-->

</div>