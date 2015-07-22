var login;

var loginManager = {


    init: function () {

        alert("LoginManager");
        global.bindClickEvent({selector:'#loginAction'},loginManager.login)
        global.bindClickEvent({selector:'#logout'},loginManager.logout)


    },

    login:function(){

        global.executePOSTRequest({
            url: 'login',
            params: $("#loginForm").serialize(),
            callback: loginManager.initCallback
        })
    },

    logout:function(){

        global.executePOSTRequest({
            url: 'logOut',
            params: $("#logoutForm").serialize(),
            callback: loginManager.logoutCallback
        })

    },
    initCallback: function (callbackContext) {

       // alert("UserName: "+callbackContext.json.userName)
        //
        //$('#loginName').text(callbackContext.json.userName)


        if (callbackContext.json.message == '1') {

            var logedin=callbackContext.json.userName;
           // alert("UserName "+logedin);

            //global.logedinManage({name:logedin});

            //location.href = "index.jsp";

            login=callbackContext.json.userName;
            alert("inside login: "+ login)
            $("#content").load('/dashboard.jsp');

            $('#loginName').text(callbackContext.json.userName);

            //loginManager.loginDone();


        }

        if (callbackContext.json.message == '0') {
            //alert("i am in else")
            //location.href = "login.jsp";
            $("#content").load('/login.jsp');
        }

    },

    logoutCallback: function (callbackContext) {

        if (callbackContext.json.message == 1) {

            alert(callbackContext.json.userName);
            login=callbackContext.json.userName;

            location.href = "index.jsp";
        }
        else {

            alert("wrong")
        }

    },

    loginDone:function(){

        alert("Logedin")
        alert("Login: "+ login)

    }

}


