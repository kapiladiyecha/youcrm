



      <div class="separator"></div>
      <div class="heading-buttons">
        <h3><i></i> User Registration</h3>

      </div>

      <!--alert content--->
      <div class="innerLR">
        <button type="button" id="newUser" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">New User</button>

        <!-- Modal Code ->

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
          <div class="modal-dialog modal-lg" >

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal Header</h4>
              </div>
              <div class="modal-body">

                <form class="form-horizontal" id="userRegistration" action="javascript:void(0);">
                  <div class="well">
                    <h4>Enter User registration details</h4>

                    <div class="control-group" id="userIdControl" style="display: none;">
                      <label class="control-label">User ID</label>

                      <div class="controls">
                        <input type="text" name="userId" id="userId" disabled/>
                      </div>
                    </div>

                    <div class="separator"></div>
                    <div class="row-fluid">
                      <div>
                        <div class="control-group">
                          <label class="control-label">Select Role</label>
                          <div class="controls">
                            <select name="userRole" id="role">
                              <option value="1">Manager</option>
                              <option value="2">Team Leader</option>
                            </select>
                          </div>
                        </div>
                        <div class="separator"></div>

                        <div class="control-group">
                          <label class="control-label">Login Id</label>

                          <div class="controls">
                            <input type="text" name="userName" id="loginId" placeholder="Enter Login id" />
                          </div>
                        </div>
                        <div class="control-group">
                          <label class="control-label">Password</label>
                          <div class="controls">
                            <input type="password" name="userPassword" id="password" placeholder="Enter password" />
                          </div>
                        </div>

                      </div>
                      <div >
                        <div class="control-group">
                          <label class="control-label">Select Designation</label>
                          <div class="controls">
                            <select name="userDesignation" id="designationList">

                            </select>
                          </div>
                        </div>
                        <div class="control-group">
                          <label class="control-label">Phone</label>

                          <div class="controls">
                            <div class="input-prepend">
                              <span class="add-on glyphicons phone"><i></i></span>
                              <input type="text" name="userContact" id="phone" class="input-large"
                                     placeholder="e.g. 9835678345">
                            </div>
                          </div>
                        </div>
                        <div class="control-group">
                          <label class="control-label">E-mail</label>

                          <div class="controls">
                            <div class="input-prepend">
                              <span class="add-on glyphicons phone"><i></i></span>
                              <input type="text" name="userEmail" id="email" class="input-large"
                                     placeholder="contact@mosaicpro.biz">
                            </div>
                          </div>
                        </div>
                      </div>

                    </div>
                  </div>
                  <hr class="separator bottom"/>
                  <div class="form-actions" style="margin: 0;">
                    <button type="submit" name="submit" id="addUser" class="btn btn-icon btn-primary glyphicons circle_ok" data-dismiss="modal" style="float: left; margin-right: 5px;"><i></i>Save</button>
                    <button type="button" class="btn btn-icon btn-default glyphicons circle_remove" id="cancel"><i></i>Cancel
                    </button>
                    <button type="submit" name="submit" id="updateUser" class="btn btn-icon btn-primary glyphicons circle_ok" data-dismiss="modal" style="display: none; float: left; margin-right: 5px; "><i></i>Update</button>
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
        <div class="innerLR data-table">

          <table id="UserTable" class="dynamicTable table table-striped table-bordered table-primary table-condensed">
            <h4>User Details</h4>
            <hr class="separator-bottom">
          </table>
        </div>

      </div>



<script>

  $(document).ready(function(){

    UserEntry.init();
    UserEntry.fetchUserRecord();
//    UserEntry.fetchRecord();


  })

</script>

