var userRole = {

    init: function ()
    {
        global.bindClickEvent({container:'#userRoleForm',selector:'#addUserRole'},userRole.add)
       global.bindClickEvent({selector:'#userRoleClick'},userRole.clean)
    },


    add:function () {

        //$('#userRoleIdControl').css({"display":"block"});
        //$('#userRoleForm').find('input:not(#addUserRole)').val('');

        formManager.initForm({
            url: 'userRole',
            params:userRole.serializeRoleParameters(),
            container:$("#userRoleForm"),
            callback: userRole.initCallback
        })
    },

    clean:function(){

        $('#updateUserRole').css({"display":"none"});
        $('#addUserRole').css({"display":"block"});

        $('#userRoleIdControl').css({"display":"none"});
        $('#userRoleForm').find('input:not(#addUserRole)').val('');
        $('#userRoleForm').find('textarea').val('');
        //$('#userRoleForm').find('checkbox'). attr("checked",false);
        //$('#userRoleForm').prop('checked', false);
        //$('input:checkbox').removeAttr('checked');
        //$('input:checkbox').attr('checked', false);

        $("#userRoleForm input[type=checkbox]:checked").each(function(){
            var id=this.id;
            alert(this.id)
            $('#'+this.id).prop('checked',false);
            //$('#checkLead1').prop('checked',false);
        })
    },

    initCallback: function (callbackContext) {

        //alert("Successfully Saved")
        //$('#userRoleForm').find('input:not(#addUserRole)').val('');
        location.href="manageRoles.jsp";
    },

/*
    getCheckboxValue: function() {
        alert("in getchech")
        formManager.roleCheckValue;
        alert(formManager.roleCheckValue);
    }*/
    serializeRoleParameters: function()
    {

        var roleParams = "";

        $("#userRoleForm input[type=checkbox]:checked").each(function(){

            var val=this.id;
            var dataValue=$("#"+val).data('value');

            //alert(dataValue)
                roleParams = roleParams+dataValue+",";
            })

        return roleParams;
    },

    getDetail:function(backContext)
    {
        $('#userRoleTable').DataTable(
            {
                destroy: true,
                "data": backContext.json.result,

                "columns": [
                    { "title": "User Role Id" },
                    { "title": "User Role" },
                    { "title": "Discription" },
                    { "title": "Actions"}
                ]

            });
        global.bindClickEvent({selector:'.delete'},userRole.delete)
        global.bindClickEvent({selector:'.update'},userRole.updateFetch)
        global.bindClickEvent({selector:'#updateUserRole'},userRole.update)

    },
    fetchUserRoleRecord: function () {

        global.executePOSTRequest({
            url: 'userRoleList',
            // params: $("#userRegistration").serialize(),
            callback: userRole.getDetail

        })

    },
    delete: function(){

        var userRoleId=this.id;
         alert(userRoleId);

        global.executePOSTRequest({
            url: 'deleteUserRole',
            params: {userRoleId:this.id},
            callback: userRole.deleteCallback

        })

    },

    deleteCallback: function (deleteContextCallback) {
        location.href="manageRoles.jsp";
    },
    updateFetch: function(){

        global.executePOSTRequest({
            url: 'updateUserRole',
            params: {userRoleId:this.id},
            callback: userRole.updateFetchCallback
        })

    },

    updateFetchCallback: function(callContext) {



        var value=callContext.json.result;
        var userRoleClassId = [];
        $('#roleId').val(value.userRoleId);
        $('#userRole').val(value.userRole);
        $('#userRoleDiscription').val(value.userRoleDiscription);

        userRoleClassId=(value.userRoleClass).split(',');
        //for(var i=0;i<=userRoleClassId.length;i++){
        //  //alert(userRoleClassId[i]);
        //     }
        //var ckeckRole = document.getElementsByName("checkRole").length;
        //var checkRole=document.getElementsByName("checkRole");
        for(var i =0; i<userRoleClassId.length; i++)
        {
            /*for(var j = 0; j <checkRole.length; j++)
            {
                alert("UserRole: "+ userRoleClassId[i] )
                alert("checkRole: "+ checkRole[j].value)
                if(userRoleClassId[i] == checkRole[j].value)
                {
                    //alert("He:"+checkRole[i].value);
                    id=checkRole[j].id;
                    alert ("id is " +id)
                    $('#'+id).attr('checked','true');

                }
            }*/


            $("#userRoleForm input[type=checkbox]").each(function(){
                var val=this.id;
                var dataValue=$("#"+val).data('value');

                if(userRoleClassId[i]==dataValue)
                {
                    //alert("Checked")
                    $('#'+val).prop('checked',true);
                }

            })



        }



        //for(var i =0;i<=checkRole.length; i++)
        //{
        //    checkRole[i].val();
        //    alert( checkRole[i].val());
        //}
        $('#updateUserRole').css({"display":"block"});
        $('#addUserRole').css({"display":"none"});
        $('#userRoleIdControl').css({"display":"block"});


    },

    update:function(){

        $('#roleId').removeAttr('disabled',false);

        formManager.initForm({
            url: 'updateRole',
            params:userRole.serializeRoleParameters(),
            container:$("#userRoleForm"),
            callback: userRole.updateCallback

        })

    },

    updateCallback:function(){

        $('#userRoleForm').find('input:not(#addUserRole)').val('');
        $('#updateUserRole').css({"display":"none"});
        $('#addUserRole').css({"display":"block"});
        //$('#userIdControl').css({"display":"none"});
    }

}