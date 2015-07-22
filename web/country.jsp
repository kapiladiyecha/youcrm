
      <div class = "separator"></div>
      <div class="heading-buttons">
        <h3 class ="glyphicons display"><i></i>Country</h3>

        <div class="button pull-right">
          <%--<button type="button" class="btn btn-default btn-lg glyphicons circle_plus" data-toggle="modal" data-target="#myModal"><i></i>Add New Status</button>--%>
          <button type="button" class="btn btn-icon btn-default glyphicons circle_plus" data-toggle="modal" data-target="#myModal"><i></i>Add Country</button>

        </div>
        <%--<button type="button" class="btn btn-icon btn-default glyphicons circle_remove" data-dismiss="modal"><i></i>Cancel</button>--%>

        <hr class="separator-bottom">
      </div>

      <div class="container">

        <!-- Trigger the modal with a button -->
        <%--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
          <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <%--<h4 class="modal-title">Enter Status</h4>--%>


                <h4 class = "modal-title">Enter Country</h4>




              </div>
              <div class="modal-body">
                <form class="form-horizontal" id="countryForm" action="javascript:void(0);">

                  <div class="row-fluid">
                    <div class="span12">
                      <div class="control-group">
                        <label class="control-label">
                          Country
                        </label>

                        <div class="controls">
                          <input type="text" placeholder="Enter Country" class="span8" id="countryName" name="location"/>
                        </div>
                      </div>
                    </div>
                  </div>


                  <%--<div class="form-actions" style="margin: 0;">--%>
                  <%--<button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok" id="submitStatus" ><i></i>Save</button>--%>
                  <%--<button type="button" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel</button>--%>

                  <%--</div>--%>
                  <%--</form>--%>
              </div>
              <div class="modal-footer">

                <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok" id="submitCountry" ><i></i>Save</button>
                <button type="button" class="btn btn-icon btn-default glyphicons circle_remove" data-dismiss="modal"><i></i>Cancel</button>
                </form>
                <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
              </div>
            </div>

          </div>
        </div>

      </div>


      <div class="innerLR data-table">

        <table class="dynamicTable table table-striped table-bordered table-primary table-condensed" id="countryTable">

        </table>
      </div>


  <script type="text/javascript">
    $(document).ready(function() {

      countryManager.init();

      countryManager.fetchCountry();
    });
  </script>

