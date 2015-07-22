var customerEntry = {

    init: function () {

        global.bindClickEvent({selector: '#addCustomer'}, customerEntry.add)

        global.bindClickEvent({selector: '#addFollowUp'}, customerEntry.addFollowUp)

    },

    add: function () {

        formManager.initForm({

            url: 'addCustomerData',

            container: $("#customerForm"),

            callback: customerEntry.initCallback

        })

        $.toast.success("You successfully saved Customer details");

    },

    addFollowUp: function () {

        //alert($('.fullStar').length);

        formManager.initForm({

            url: 'addFollowUpDetail',

            params:{star:$('.fullStar').length},

            container: $("#followUpForm"),

            callback: customerEntry.initCallback
        })
    },

    getDetail: function (backContext) {

        $('#customerTable').DataTable({

            "bDestroy": true,
            "data": backContext.json.result,

            "columns": [
                {"title": "Customer Id"},
                {"title": "Company Name"},
                {"title": "Contact Person"},
                {"title": "Contact No."},
                {"title": "Email"},
                {"title": "Address Line1"},
                {"title": "Address Line2"},
                {"title": "Pincode"},
                {"title": "Status"},
                {"title": "Action"}
            ]
        });



        global.bindClickEvent({container:'#customerTable',selector: '.delete'}, customerEntry.delete)
        global.bindClickEvent({container:'#customerTable',selector: '.update'}, customerEntry.updateFetch)
        global.bindClickEvent({selector: '#updateCustomer'}, customerEntry.update)
    },

    delete: function () {

        var confirmDelete = confirm ("Are you sure want to delete this record????");


        if(confirmDelete == true){


            var customerId = this.id;

            global.executePOSTRequest({
                url: 'deleteCustomerData',
                params: {customerId: this.id},
                callback: customerEntry.deleteCallback
            })
        }
    },

    deleteCallback: function (deleteContextCallback) {

        location.href = "../customer.jsp";

    },

    fetchCustomerRecords: function () {

        global.executePOSTRequest({

            url: 'viewCustomerData',

            callback: customerEntry.getDetail

        })

    },

    initCallback: function (callbackContext) {

        $('#customerForm').find('input:not(#addCustomer)').val('');

        $('#followUpForm').find('input:not(#addFollowUp)').val('');

        location.href = "../customer.jsp";
    },


    updateFetch: function () {

        $("#exampleModal1").modal("show");


        global.executePOSTRequest({

            url: 'updateFetchCustomerData',

            params: {customerId: this.id},

            callback: customerEntry.updateFetchCallback

        })

    },

    updateFetchCallback: function (callContext) {

       // alert(callContext.json.result)

        var value = callContext.json.result;

        $('#customerId').val(value.customerId);

        $('#companyName').val(value.companyName);

        $('#contactPerson').val(value.contactPerson);

        $('#contactNumber').val(value.contactNumber);

        $('#emailId').val(value.emailId);

        $('#addressLineOne').val(value.addressLineOne);

        $('#addressLineTwo').val(value.addressLineTwo);

        $('#pinCode').val(value.pinCode);

        $('#updateCustomer').css({"display": "block"});

        $('#addCustomer').css({"display": "none"});

        $('#customerIdControl').css({"display": "block"});


    },

    update: function () {

        $('#customerId').removeAttr('disabled', false);

        formManager.initForm({

            url: 'updateCustomerData',

            container: $("#customerForm"),

            callback: customerEntry.updateCallback

        })


    },

    updateCallback: function () {

        $('#customerForm').find('input:not(#addCustomer)').val('');

        $('#updateCustomer').css({"display": "none"});

        $('#addCustomer').css({"display": "block"});

        $('#customerIdControl').css({"display": "none"});

        location.href = "../customer.jsp";


    },

    getCompanyDropDown: function (callContext) {

        $.each(callContext.json.companyNameList, function (key, value) {

            $('#companyNameList').append($('<option/>').attr("value", value["customerId"]).text(value["companyName"]));

        });

    },

    fetchRecord: function () {

        global.executePOSTRequest({

            url: 'addComapnyDrowpDown',

            callback: customerEntry.getCompanyDropDown

        })
    }

}




