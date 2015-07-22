package com.youcrm.action.userrole;

import com.opensymphony.xwork2.ActionSupport;
import com.youcrm.executor.userrole.UserRoleService;

import java.util.ArrayList;

/**
 * Created by DELL on 10-07-2015.
 */
public class UserRoleAction extends ActionSupport {


    private int userRoleId;
    private String userRole;
    private String userRoleDiscription;
    private String userRoleClass;
    private Object result;
    private ArrayList<UserRoleAction> userRoleList = new ArrayList<UserRoleAction>();


    public ArrayList<UserRoleAction> getUserRoleList() {
        return userRoleList;
    }

    public void setUserRoleList(ArrayList<UserRoleAction> userRoleList) {
        this.userRoleList = userRoleList;
    }

    public int getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(int userRoleId) {
        this.userRoleId = userRoleId;
    }

    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }

    public String getUserRoleDiscription() {
        return userRoleDiscription;
    }

    public void setUserRoleDiscription(String userRoleDiscription) {
        this.userRoleDiscription = userRoleDiscription;
    }

    public String getUserRoleClass() {
        return userRoleClass;
    }

    public void setUserRoleClass(String userRoleClass) {
        this.userRoleClass = userRoleClass;
    }

    UserRoleService userRoleService = new UserRoleService();


    public String addUserRole()
    {

        if (userRoleService.isUserRoleInserted(userRole, userRoleDiscription, userRoleClass)) {

            System.out.println("Success");
            return SUCCESS;
        } else {
            System.out.println("Error");
            return "success";
        }

    }

    public String userRoleDetailList() {
        result = userRoleService.getUserRoleList();

        return "success";
    }

    public String deleteUserRole() {

        userRoleService.isUserRoleDeleted(userRoleId);
        return "success";
    }

    public String updateFetchUserRole() {

        result = userRoleService.getUserRoleRecord(userRoleId);
        return "success";
    }

    public String updateUserRole() {

        System.out.println("UpdateUser");

        if (userRoleService.isUserRoleUpdated( userRoleId, userRole, userRoleDiscription, userRoleClass) == true) {

            //result=userService.getUserListService();
            System.out.println("Updated");
            return "success";
        }

        return "success";
    }

    public String execute() {
        return "success";

    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }
}
