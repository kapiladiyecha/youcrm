/**
 * Created by mindarray on 15/7/15.
 */
var menuManager={


    init:function(){

        //alert("menuManager")
        global.bindClickEvent({selector: '#dashboards'}, menuManager.menuCallBack)
        global.bindClickEvent({selector: '#calander'}, menuManager.menuCallBack)
        global.bindClickEvent({selector: '#meeting'}, menuManager.menuCallBack)
        global.bindClickEvent({selector: '#charts'}, menuManager.menuCallBack)

    },

    menuCallBack: function () {

        //alert("MenuCallBack")
        alert(this.id)

        if(this.id=="dashboards")
            $('#content').load('/dashboard.jsp');
        else if(this.id=="calander")
            $('#content').load('/calendar_1.jsp');




    }


}