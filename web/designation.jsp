

<div class="innerLR">
  <button type="button" id="newDesignation" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">New Designation</button>

  <!-- Modal Code ->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg" >

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Designationr</h4>
        </div>
        <div class="modal-body">

          <form class="form-horizontal" id="designationForm" action="javascript:void(0);">
            <div class="well">
              <h4>Enter Designation</h4>

              <hr class="separator-bottom">
              <div class="row-fluid">
                <div>
                  <div class="control-group">
                    <label class="control-label">
                      Designation
                    </label>

                    <div class="controls">
                      <input type="text" placeholder="Enter designation name"  id="userDesignation" name="designation"/>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="form-actions" style="margin: 0;">
              <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok" id="submitDesignation" data-dismiss="modal" ><i></i>Save</button>
              <button type="button" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel
              </button>

            </div>
          </form>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>

    </div>
  </div>


  <!-- Modal Ends ->






  <!--user registration entry form content--->


  <div class="separator"></div>
  <div class="innerLR ">

    <table id="UserTable" class="dynamicTable table table-striped table-bordered table-primary table-condensed">
      <h4>User Details</h4>
      <hr class="separator-bottom">
    </table>
  </div>

</div>




      <div class="innerLR data-table">

        <table class="dynamicTable table table-striped table-bordered table-primary table-condensed" id="DesignationTable">

        </table>
      </div>


    <script type="text/javascript">
      $(document).ready(function() {

        designation.init();

        designation.initCallback();
      });
    </script>
