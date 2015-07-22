




  <div id="wrapper">

      <div class="separator"></div>
      <div class="heading-buttons">

        <h3 class="glyphicons display"><i></i> User Role</h3>

        <div class="buttons pull-right">
          <a href="" class="btn btn-default" id="userRoleClick" data-toggle="modal" data-target="#manageRoleModal"><i></i> Add User Role</a>

        </div>
      </div>
      <!-- MODAL BOX CONTENT HERE--->
      <div class="modal fade" id="manageRoleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button"  class="close" data-dismiss="modal" aria-label="Close"><span
                      aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="exampleModalLabel">Add user Roloe</h4>
            </div>
            <form class="form-horizontal" id="userRoleForm" action="javascript:void(0);">
            <div class="modal-body">

              <%--<!-- FORM FOR MODAL BOX --->--%>


                  <div class="row-fluid">
                    <div class="span6">


                      <div class="control-group" id="userRoleIdControl" style="display: none;">
                        <label class="control-label">UserRole ID</label>

                        <div class="controls">
                          <input type="text" name="userRoleId" id="roleId"  disabled/>
                        </div>
                      </div>


                      <div class="control-group">
                        <label class="control-label">Enter Role</label>
                        <div class="controls">
                          <input type="text" id="userRole" name="userRole"/>
                        </div>
                      </div>
                      <div class="separator"></div>
                      <div class="control-group">
                        <label class="control-label">Description</label>
                        <div class="controls">
                          <textarea name="userRoleDiscription" id="userRoleDiscription" rows="5" ></textarea>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="separator"></div>
                  <div id="roleClass">
                    <table class=" userRoleTable table table-condensed" >
                      <thead>
                      <tr>
                        <th id="SelectAll" class="center">Select All</th>
                        <th class="center">Pages</th>
                        <th class="center">View</th>
                        <th class="center">Create</th>
                        <th class="center">Edit</th>
                        <th class="center">Delete</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <td class="center"><input type="checkbox" id="checkDesh" data-value="1" value="1" name="checkRole"></td>
                        <td>Dashboard</td>
                        <td class="center"><input type="checkbox" id="checkDesh1" data-value="1_1" value="1_1" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkDesh2" data-value="1_2" value="1_2" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkDesh3" data-value="1_3" value="1_3" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkDesh4" data-value="1_4" value="1_4" name="checkRole"></td>
                      </tr>
                      <tr>
                        <td class="center"><input type="checkbox" id="checkLead" data-value="2" value="2" name="checkRole" ></td>
                        <td>Leads</td>
                        <td class="center"><input type="checkbox" id="checkLead1" data-value="2_1" value="2_1" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkLead2" data-value="2_2" value="2_2" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkLead3" data-value="2_3" value="2_3" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkLead4" data-value="2_4" value="2_4" name="checkRole"></td>
                      </tr>
                      <tr>
                        <td class="center"><input type="checkbox" id="checkMeeting" data-value="3" value="3" name="checkRole"></td>
                        <td>Meetings</td>
                        <td class="center"><input type="checkbox" id="checkMeeting1" data-value="3_1" value="3_1" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkMeeting2" data-value="3_2" value="3_2" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkMeeting3" data-value="3_3" value="3_3" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkMeeting4" data-value="3_4" value="3_4" name="checkRole"></td>
                      </tr>
                      <tr>
                        <td class="center"><input type="checkbox" id="checkReport" data-value="4" value="4" name="checkRole"></td>
                        <td>Reports</td>
                        <td class="center"><input type="checkbox"  id="checkReport1" data-value="4_1" value="4_1" name="checkRole"></td>
                        <td class="center"><input type="checkbox"  id="checkReport2" data-value="4_2" value="4_2" name="checkRole"></td>
                        <td class="center"><input type="checkbox"  id="checkReport3" data-value="4_3" value="4_3" name="checkRole"></td>
                        <td class="center"><input type="checkbox"  id="checkReport4" data-value="4_4" value="4_4" name="checkRole"></td>
                      </tr>
                      <tr>
                        <td class="center"><input type="checkbox" id="checkChart" data-value="5" value="5" name="checkRole"></td>
                        <td>Charts</td>
                        <td class="center"><input type="checkbox" id="checkChart1" data-value="5_1" value="5_1" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkChart2" data-value="5_2" value="5_2" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkChart3" data-value="5_3" value="5_3" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkChart4" data-value="5_4" value="5_4" name="checkRole"></td>
                      </tr>
                      <tr>
                        <td class="center"><input type="checkbox" id="checkCalendar" data-value="6" value="6" name="checkRole"></td>
                        <td>Calendar</td>
                        <td class="center"><input type="checkbox" id="checkCalendar1" data-value="6_1" value="6_1" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkCalendar2" data-value="6_2" value="6_2" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkCalendar3" data-value="6_3" value="6_3" name="checkRole"></td>
                        <td class="center"><input type="checkbox" id="checkCalendar4" data-value="6_4" value="6_4" name="checkRole"></td>
                      </tr>
                      </tbody>
                    </table>
                  </div>
                  <div class="separator"></div>


                <div class="modal-footer">
                  <%--<div class="form-actions" style="margin: 0;">--%>
                    <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok" id="addUserRole" data-dismiss="modal"><i></i>Save</button>
                    <button type="button" class="btn btn-icon btn-default glyphicons circle_remove"  data-dismiss="modal"><i></i>Cancel</button>
                    <button type="submit" id="updateUserRole" class="btn btn-icon btn-primary glyphicons circle_ok" data-dismiss="modal"  style="display: none; margin-right: 5px;"><i></i>Update</button>
                  <%--</div>--%>
                </div>

              </form>

            </div>


          </div>
        </div>
      </div>

      <!-- MODAL BOX END CONTENT --->
      <div class="separator"></div>
      <div class="innerLR data-table">
        <table id="userRoleTable" class="dynamicTable table table-striped table-bordered table-primary table-condensed">
        </table>
      </div>
      <br/>

<%--<%@include file="lnc/bottomjs.jsp" %>--%>
<script>
  $(document).ready(function(){


    userRole.init();
      userRole.fetchUserRoleRecord();
    $('#manageRoleModal').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget)
      var recipient = button.data('whatever')
      var modal = $(this)
      //modal.find('.modal-title').text('New message to ' + recipient)
      modal.find('.modal-body input').val(recipient)
    })
  })
</script>

