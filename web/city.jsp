



      <div class = "separator"></div>
      <div class="heading-buttons">
        <h3 class ="glyphicons display"><i></i>City</h3>

        <div class="button pull-right">
          <button type="button" class="btn btn-icon btn-default glyphicons circle_plus" data-toggle="modal" data-target="#myModal"><i></i>Add City</button>

        </div>
        <hr class="separator-bottom">
      </div>

      <div class="container">

        <!-- Trigger the modal with a button -->

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
          <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class = "modal-title">Enter City</h4>
              </div>

              <div class="modal-body">
                <form class="form-horizontal" id="cityForm" action="javascript:void(0);">

                  <div class="row-fluid">
                    <div class="span12">
                      <div class="control-group">
                        <div>
                          <label class="control-label">Select Country</label>
                          <div class="controls">
                            <select name="locationId" id="country" onchange="cityManager.fetchCountryId()">
                              <option >Select One</option>

                            </select>
                          </div>
                        </div>
                        <br>

                        <div>
                          <label class="control-label">Select State</label>
                          <div class="controls">
                            <select name="locationId" id="state" >

                            </select>
                          </div>
                        </div>
                        <br>

                        <label class="control-label">
                          City
                        </label>

                        <div class="controls">
                          <input type="text" placeholder="Enter city" class="span8" id="cityName" name="location"/>
                        </div>
                      </div>
                    </div>
                  </div>
              </div>
              <div class="modal-footer">
                <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok" id="submitCity" ><i></i>Save</button>
                <button type="button" class="btn btn-icon btn-default glyphicons circle_remove" data-dismiss="modal"><i></i>Cancel</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="innerLR data-table">

        <table class="dynamicTable table table-striped table-bordered table-primary table-condensed" id="cityTable">

        </table>
      </div>


  <script type="text/javascript">
    $(document).ready(function() {
      cityManager.init();
      cityManager.fetchRecord();
      cityManager.fetchCity();
    });
  </script>

