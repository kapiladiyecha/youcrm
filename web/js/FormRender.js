/**
 * Created by mindarray on 15/7/15.
 */
var formRender={


    init:function(){

        $('#content').load('/login.jsp');
        global.bindClickEvent({selector: '#dashboards'}, formRender.menuCallBack)
        global.bindClickEvent({selector: '#calander'}, formRender.menuCallBack)
        global.bindClickEvent({selector: '#meeting'}, formRender.menuCallBack)
        global.bindClickEvent({selector: '#designation'}, formRender.menuCallBack)
        global.bindClickEvent({selector: '#registration'}, formRender.menuCallBack)
        global.bindClickEvent({selector: '#city'}, formRender.menuCallBack)
        global.bindClickEvent({selector: '#country'}, formRender.menuCallBack)
        global.bindClickEvent({selector: '#state'}, formRender.menuCallBack)
        global.bindClickEvent({selector: '#status'}, formRender.menuCallBack)
        global.bindClickEvent({selector: '#manageRole'}, formRender.menuCallBack)
        global.bindClickEvent({selector: '#leads'}, formRender.menuCallBack)
        global.bindClickEvent({selector: '#addCustomer'}, formRender.menuCallBack)
    },
    menuCallBack: function () {

        alert(this.id)

        if(this.id=="dashboards")
            $('#content').load('/dashboard.jsp');
        else if(this.id=="calander")
            $('#content').load('/calendar_1.jsp');
        else if(this.id=="meeting")
            $('#content').load('/meetings.jsp');
        else if(this.id=="designation")
            $('#content').load('/designation.jsp');
        else if(this.id=="registration")
            $('#content').load('/user_registration.jsp');
        else if(this.id=="city")
            $('#content').load('/city.jsp');
        else if(this.id=="country")
            $('#content').load('/country.jsp');
        else if(this.id=="state")
            $('#content').load('/state.jsp');
        else if(this.id=="status")
            $('#content').load('/status.jsp');
        else if(this.id=="manageRole")
            $('#content').load('/manageRoles.jsp');
        else if(this.id=="leads")
            $('#content').load('/viewLeads.jsp');
        else if(this.id=="addCustomer")
            $('#content').load('/customer.jsp');
        else
            $('#content').load('/login.jsp');
    }


}