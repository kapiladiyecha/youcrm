var viewLead = {

    init: function () {

        global.bindClickEvent({selector: '#addLead'}, viewLead.add)
        //global.bindClickEvent({selector:'#userDetail'},UserEntry.getDetail)

    },

    add: function () {

        alert("Adding")
        $("#customerId").attr("disabled", false);

        formManager.initForm({
            url: 'addLeadData',
            container: $("#leadForm"),
            callback: viewLead.initCallback
        })


    },

    getDetail: function (backContext) {


        $('#viewLeadTable').DataTable(
            {
                destroy: true,

                "data": backContext.json.result,

                "columns": [

                    {"title": "Contact Person"},

                    {"title": "Company Name"},

                    {"title": "Contact no."},

                    {"title": "Email"},

                    {"title": "Add Meeting"},

                    {"title": "Actions"}

                ]

            });

        global.bindClickEvent({selector: '.schedule'}, viewLead.schedule)

        global.bindClickEvent({selector: '.reSchedule'}, viewLead.updateFetch)

        global.bindClickEvent({selector: '.delete'}, viewLead.delete)

    },
    delete: function () {

        var confirmCancel = confirm("Please confirm deal cancellation!!!!!");

        if (confirmCancel == true) {

            var customerId = this.id;

            global.executePOSTRequest({
                url: 'deleteLeadData',
                params: {customerId: this.id},
                callback: viewLead.deleteCallback
            })
        }


    },

    deleteCallback: function (deleteContextCallback) {
        location.href = "viewLeads.jsp";
    }
    ,

    schedule: function () {
        var customerId = this.id;
        console.log(customerId);
        $("#customerId").val(customerId);
    }
    ,

    fetchLeadRecord: function () {

        global.executePOSTRequest({
            url: 'viewLeadData',
            callback: viewLead.getDetail

        })

    }
    ,

    initCallback: function (callbackContext) {

        alert("addd")
        $('#leadForm').find('input:not(#addLead)').val('');

        location.href = "viewLeads.jsp";
    },

    updateFetch: function () {



        global.executePOSTRequest({

            url: 'updateFetchLeadData',

            params: {customerId: this.id},

            callback: viewLead.updateFetchCallback

        })

    },

    updateFetchCallback: function (callContext) {

        var value = callContext.json.result;

        $("#customerId").val(value.customerId);

        $('#meetingDate').val(value.meetingDate);

        $('#meetingTime').val(value.meetingTime);

        $('#updateLead').css({"display": "block"});

        $('#addLead').css({"display": "none"});

    }

}