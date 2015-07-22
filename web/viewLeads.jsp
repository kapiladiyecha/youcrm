
            <div class="heading-buttons">
                <div class="separator"></div>
                <h3><i></i>Leads</h3>
            </div>

            <div class="separator"></div>

            <!-- MODAL BOX FOR SCHEDULES --->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="exampleModalLabel">Meeting Schedule</h4>
                        </div>
                        <div class="modal-body">

                            <!-- FORM FOR MODAL DETAIL GOES HERE --->

                            <form id="leadForm" class="form-horizontal" name="leadForm" action="javascript:void(0);">

                                <div class="control-group">
                                    <label class="control-label">Customer ID</label>

                                    <div class="controls">
                                        <input type="text" class="form-control" id="customerId"
                                               name="customerId" disabled>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Assign To</label>

                                    <div class="controls">
                                        <input type="text" class="form-control" id="userId" value="1"
                                               name="userId">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Select Date</label>

                                    <div class="controls">
                                        <input type="text" class="form-control" id="meetingDate" name="meetingDate">
                                    </div>


                                </div>
                                <div class="control-group">

                                    <label class="control-label">Start Time</label>

                                    <div class="controls">
                                        <input type="text" class="form-control" id="meetingTime" name="meetingTime">
                                    </div>


                                </div>

                                <div class="right">

                                    <button type="submit" class="btn btn-primary" id="addLead" name="addLead">Save
                                    </button>
                                    <button type="submit" class="btn btn-primary" id="updateLead" name="updateLead"
                                            style="display:none; margin-left:5px;float:right;">Update
                                    </button>

                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>

            <!-- VIEW LEADS TABLE -->
            <div class="innerLR">
                <div class="well">
                    <table id="viewLeadTable"
                           class="dynamicTable table table-striped table-bordered table-primary table-condensed">

                    </table>
                </div>
            </div>

<script>

    $(document).ready(function () {

        $('#meetingDate').datepicker({

            showOtherMonths: true,

            dateFormat: "yy-mm-dd"


        });

        viewLead.init();

        viewLead.fetchLeadRecord();


    });
    $('#exampleModal').on('show.bs.modal', function (event) {

        var button = $(event.relatedTarget)

        var recipient = button.data('whatever')

        var modal = $(this)

        modal.find('.modal-title').text('New message to ' + recipient)

        modal.find('.modal-body input').val(recipient)
    });


</script>
