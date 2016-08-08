
<!-- line modal -->
<div class="modal fade" id="addCommune" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
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
		      	<label for="gender">Country</label>
		        <select class="form-control" id="gedner">
		        	<option>Cambodia</option>
		            <option>Korea</option>
		      	</select>
	          </div>	
	          <div class="form-group">
		      	<label for="gender">Province Or City</label>
		        <select class="form-control" id="gedner">
		        	<option>Kandal</option>
		            <option>Phnom Penh</option>
		      	</select>
	          </div>
	          <div class="form-group">
		      	<label for="gender">District</label>
		        <select class="form-control" id="gedner">
		        	<option>Kean Svay</option>
		            <option>Lvea Aem</option>
		      	</select>
	          </div>
              <div class="form-group">
                <label for="country">Add New Commune</label>
                <input type="text" class="form-control" id="commune" placeholder="Add New Commune">
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
					<button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button">Save</button>
				</div>
			</div>
		</div>
	</div>
  </div>
</div>