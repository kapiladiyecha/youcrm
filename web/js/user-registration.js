/**
 * Created by Mayank on 6/27/2015.
 */

var UserEntry= {

    init: function ()
    {


        global.bindClickEvent({selector:'#addUser'},UserEntry.add)
        global.bindClickEvent({selector:'#userDetail'},UserEntry.getDetail)
        global.bindClickEvent({selector:'#newUser'},UserEntry.fetchRecord)
        // global.bindClickEvent({selector:'#delete'},global.delete)
    },




        add:function () {
            formManager.initForm({
                url: 'addUsers',
                container:$("#userRegistration"),
                callback: UserEntry.initCallback
            })
        },


    getDetail:function(backContext)
    {

        $('#UserTable').DataTable(
            {

                "data": backContext.json.result,

                "columns": [
                    { "title": "User Id" },
                    { "title": "Role" },
                    { "title": "User Name" },
                    { "title": "Designation" },
                    { "title": "Contact"},
                    { "title": "Email"},
                    { "title": "Actions"}
                ]
            });

        global.bindClickEvent({container:'#UserTable',selector:'.delete'},UserEntry.delete)
        global.bindClickEvent({container:'#UserTable',selector:'.update'},UserEntry.updateFetch)
        global.bindClickEvent({selector:'#updateUser'},UserEntry.update)
    } ,


    getDesignationDropDown:function(callContext)
    {

        $.each(callContext.json.designationList, function(key,value)
        {
            $('#designationList').append($('<option/>').attr("value", value["userDesignation"]).text(value["designation"]));
        });

    } ,


    fetchRecord: function () {
            if(this.id=="newUser"){
                $('#userRegistration').find('input:not(#addUser)').val('');
                $('#updateUser').css({"display":"none"});
                $('#addUser').css({"display":"block"});
                $('#userIdControl').css({"display":"none"});
            }

        global.executePOSTRequest({
            url: 'DesignationList',
            callback: UserEntry.getDesignationDropDown

        })

    },

    fetchUserRecord: function () {


        global.executePOSTRequest({
            url: 'UserList',
            // params: $("#userRegistration").serialize(),
            callback: UserEntry.getDetail

        })

    },

    initCallback: function (callbackContext) {

        alert("addd")
        $('#userRegistration').find('input:not(#addUser)').val('');
        $('#content').load('/user_registration.jsp');

    },

    delete: function(){
        var userId=this.id;
        global.executePOSTRequest({
            url: 'deleteUser',
            params: {userId:this.id},
            callback: UserEntry.deleteCallback
        })

    },

    deleteCallback: function (deleteContextCallback) {
        $('#content').load('/user_registration.jsp');
    },

    updateFetch: function(){

        global.executePOSTRequest({
            url: 'updateUser',
            params: {userId:this.id},
            callback: UserEntry.updateFetchCallback
        })

    },

    updateFetchCallback: function(callContext) {
        var value=callContext.json.result;
        $('#userId').val(value.userId);
        $('#loginId').val(value.userName);
        $('#phone').val(value.userContact);
        $('#email').val(value.userEmail);
        $('#designationList').val(value.userDesignation).attr('selected', true);
        $('#updateUser').css({"display":"block"});
        $('#addUser').css({"display":"none"});
        $('#userIdControl').css({"display":"block"});


    },

    update:function(){
        $('#userId').removeAttr('disabled',false);
        formManager.initForm({
            url: 'update',
            container:$("#userRegistration"),
            callback: UserEntry.updateCallback
        })


    },

    updateCallback:function(){
        $('#updateUser').css({"display":"none"});
        $('#addUser').css({"display":"block"});
        $('#userIdControl').css({"display":"none"});
        $('#content').load('/user_registration.jsp');
    }
}




