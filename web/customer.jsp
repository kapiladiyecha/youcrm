

            <div class="separator"></div>

            <div class="heading-buttons">
                <h3 class="glyphicons display"><i></i> Customer Detail</h3>

                <div class="buttons pull-right">
                    <a href="" class="btn btn-default btn-icon glyphicons circle_plus" data-toggle="modal"
                       data-target="#exampleModal"><i></i> Follow Up</a>
                </div>
                <div class="buttons pull-right">
                    <a href="" class="btn btn-default btn-icon glyphicons circle_plus" data-toggle="modal"
                       data-target="#exampleModal1"><i></i> Add New Cusotmer</a>
                </div>
            </div>

            <div class="separator"></div>

            <!-- MODAL BOX FOR FOLLOWUP CONTENT HERE-->

            <div class="modal fade" id="exampleModal"  tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="exampleModalLabel">Follow Up</h4>
                        </div>
                        <div class="modal-body">


                            <!-- FORM FOR MODAL BOX --->
                            <form action="javascript:void(0);" name="followForm" id="followUpForm"
                                  class="form-horizontal" onload="$('#companyNameList').focus();">
                                <div class="control-group">
                                    <label class="control-label">Select Company Name</label>

                                    <div class="controls">
                                        <select id="companyNameList" name="companyList" required="required"></select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Description</label>

                                    <div class="controls">
                                     <textarea id="description" name="description"
                                               required="required"></textarea>
                                    </div>

                                </div>
                                <div class="control-group">
                                    <label class="control-label">Rating</label>

                                    <div class="controls">
                                        <div id="starRating">
                                            <input type="radio" name="example" class="rating" value="1"/>
                                            <input type="radio" name="example" class="rating" value="2"/>
                                            <input type="radio" name="example" class="rating" value="3"/>
                                            <input type="radio" name="example" class="rating" value="4"/>
                                            <input type="radio" name="example" class="rating" value="5"/>

                                        </div>

                                    </div>

                                </div>
                                <div class="control-group">
                                    <label class="control-label">Next Call Date</label>

                                    <div class="controls">
                                        <input type="text" id="nextCallDate" name="nextCallDate" required="required">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Comments / Review</label>

                                    <div class="controls">
                                         <textarea id="review" name="review"
                                                   required="required"></textarea>
                                    </div>
                                </div>


                                <div class="right">

                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary" name="submit" id="addFollowUp">Save
                                    </button>

                                </div>
                            </form>


                        </div>

                    </div>
                </div>
            </div>

            <!-- MODAL BOX FOR CUSTOMER ENTRY PAGE GOES HERE -->

            <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="exampleModalLabel1">Enter customer Details</h4>


                        </div>
                        <div class="modal-body">

                            <!-- FORM FOR MODAL BOX --->

                            <form class="form-horizontal" id="customerForm" name="customerForm"
                                  action="javascript:void(0);">


                                <div class="row-fluid">


                                    <div class="control-group" id="customerIdControl"
                                         style="display: none;">
                                        <label class="control-label">Customer ID</label>

                                        <div class="controls">
                                            <input type="text" name="customerId" id="customerId"
                                                   class="span2"
                                                   disabled/>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Company Name</label>

                                        <div class="controls">
                                            <input type="text" placeholder="Enter Company name" class="span10"
                                                   name="companyName" id="companyName" required="required"/>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Contact Person</label>

                                        <div class="controls">
                                            <input type="text" placeholder="Enter Contact Person name"
                                                   class="span10"
                                                   name="contactPerson" id="contactPerson" required="required"/>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Address Line1</label>

                                        <div class="controls">
                                            <input type="text" placeholder="Address Line1" class="span10"
                                                   name="addressLineOne" id="addressLineOne"
                                                   required="required"/>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Address Line2</label>

                                        <div class="controls">
                                            <input type="text" placeholder="Address Line2" class="span10"
                                                   name="addressLineTwo" id="addressLineTwo"
                                                   required="required"/>
                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label">Zip/Pin Code</label>

                                        <div class="controls">
                                            <div class="input-prepend">
                                                <span class="add-on glyphicons phone"><i></i></span>
                                                <input type="text" class="input-large" placeholder="e.g.380001"
                                                       name="pinCode" id="pinCode" required="required"/>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Phone</label>

                                        <div class="controls">
                                            <div class="input-prepend">
                                                <span class="add-on glyphicons phone"><i></i></span>
                                                <input type="text" class="input-large"
                                                       placeholder="e.g. 0123456789"
                                                       name="contactNumber" id="contactNumber"/>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">E-mail</label>

                                        <div class="controls">
                                            <div class="input-prepend">
                                                <span class="add-on glyphicons envelope"><i></i></span>
                                                <input type="text" class="input-large"
                                                       placeholder="name@example.com"
                                                       name="emailId" id="emailId" required="required"/>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="control-group">

                                        <label class="control-label">Location</label>

                                        <div class="controls">

                                            <div class="row-fluid">
                                                <select multiple="multiple" style="width: 100%;" id="select2_2">
                                                    <optgroup label="Alaskan/Hawaiian Time Zone">
                                                        <option value="AK">Alaska</option>
                                                        <option value="HI">Hawaii</option>
                                                    </optgroup>
                                                    <optgroup label="Pacific Time Zone">
                                                        <option value="CA">California</option>
                                                        <option value="NV">Nevada</option>
                                                        <option value="OR">Oregon</option>
                                                        <option value="WA">Washington</option>
                                                    </optgroup>
                                                    <optgroup label="Mountain Time Zone">
                                                        <option value="AZ">Arizona</option>
                                                        <option value="CO">Colorado</option>
                                                        <option value="ID">Idaho</option>
                                                        <option value="MT">Montana</option>
                                                        <option value="NE">Nebraska</option>
                                                        <option value="NM">New Mexico</option>
                                                        <option value="ND">North Dakota</option>
                                                        <option value="UT">Utah</option>
                                                        <option value="WY">Wyoming</option>
                                                    </optgroup>
                                                    <optgroup label="Central Time Zone">
                                                        <option value="AL">Alabama</option>
                                                        <option value="AR">Arkansas</option>
                                                        <option value="IL">Illinois</option>
                                                        <option value="IA">Iowa</option>
                                                        <option value="KS">Kansas</option>
                                                        <option value="KY">Kentucky</option>
                                                        <option value="LA">Louisiana</option>
                                                        <option value="MN">Minnesota</option>
                                                        <option value="MS">Mississippi</option>
                                                        <option value="MO">Missouri</option>
                                                        <option value="OK">Oklahoma</option>
                                                        <option value="SD">South Dakota</option>
                                                        <option value="TX">Texas</option>
                                                        <option value="TN">Tennessee</option>
                                                        <option value="WI">Wisconsin</option>
                                                    </optgroup>
                                                    <optgroup label="Eastern Time Zone">
                                                        <option value="CT">Connecticut</option>
                                                        <option value="DE">Delaware</option>
                                                        <option value="FL">Florida</option>
                                                        <option value="GA">Georgia</option>
                                                        <option value="IN">Indiana</option>
                                                        <option value="ME">Maine</option>
                                                        <option value="MD">Maryland</option>
                                                        <option value="MA">Massachusetts</option>
                                                        <option value="MI">Michigan</option>
                                                        <option value="NH">New Hampshire</option>
                                                        <option value="NJ">New Jersey</option>
                                                        <option value="NY">New York</option>
                                                        <option value="NC">North Carolina</option>
                                                        <option value="OH">Ohio</option>
                                                        <option value="PA">Pennsylvania</option>
                                                        <option value="RI">Rhode Island</option>
                                                        <option value="SC">South Carolina</option>
                                                        <option value="VT">Vermont</option>
                                                        <option value="VA">Virginia</option>
                                                        <option value="WV">West Virginia</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>

                                    </div>

                                </div>


                                <div class="right" style="margin: 0;">
                                    <button type="submit" name="submit" id="addCustomer"
                                            class="btn btn-icon btn-primary glyphicons circle_ok"
                                            style="float: left; margin-right: 5px;"><i></i>Save
                                    </button>
                                    <button type="button" class="btn btn-icon btn-default glyphicons circle_remove"
                                            id="cancel">
                                        <i></i>Cancel
                                    </button>
                                    <button type="submit" name="submit" id="updateCustomer"
                                            class="btn btn-icon btn-primary glyphicons circle_ok"
                                            style="display: none; float: left; margin-right: 5px;"><i></i>Update
                                    </button>
                                </div>

                            </form>



                        </div>

                    </div>
                </div>
            </div>

            <!-- MODAL BOX END CONTENT -->



            <!-- SUCCESS / WARNING MESSAGE ALERT-->
            <div class="innerLR">
                <!--<div class="alert alert-error" id="warningAlert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Ooops!</strong> Change a few things up and try save
                    again.
                </div>
                <div class="alert alert-success" id="successAlert">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Well done!</strong> You successfully saved Customer details.
                </div>
                -->

                <!-- CUSTOEMR DETAIL ENTERY FORM CONTENT -->


            </div>


            <div class="separator"></div>
            <div class="innerLR">
                <div class="well">
                    <table id="customerTable"
                           class="dynamicTable table table-striped table-bordered table-primary table-condensed">


                    </table>
                </div>
            </div>




<script langauge="javascript">
    $(document).ready(function () {


        customerEntry.init();
        customerEntry.fetchCustomerRecords();
        customerEntry.fetchRecord();

        $("#nextCallDate").datepicker({
            showOtherMonths: true,

            dateFormat: "yy-mm-dd"

        });

        var starRatings = $('#starRating');

        starRatings.rating();


        $('#exampleModal').on('show.bs.modal', function (event) {

        });

        $('.modal').on('hidden.bs.modal', function (event) {

            $("form")[0].reset();
            $("form")[1].reset();
            $("#customerIdControl").css("display", "none");

        });


    });


</script>
