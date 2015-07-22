package com.youcrm.action.customer;

import com.opensymphony.xwork2.ActionSupport;
import com.youcrm.executor.customer.ViewLeadsService;

import java.util.ArrayList;

/**
 * Created by DELL on 09-07-2015.
 */
public class ViewLeadsAction extends ActionSupport {

    //------------------CUSTOMER INFORMATION GOES HERE

    private int customerId;

    private String contactPerson;

    private String companyName;

    private Long contactNumber;

    private String emailId;

    private Object result;

    private ArrayList<ViewLeadsAction> viewLeadList = new ArrayList<ViewLeadsAction>();

    //------------------SCHEDULING INFORMATION GOES HERE

    private String meetingDate;

    private String meetingTime;

    private int userId;

    //----------------------------GETTER / SETTER GOES HERE


    public String getMeetingDate() {
        return meetingDate;
    }

    public void setMeetingDate(String meetingDate) {
        this.meetingDate = meetingDate;
    }

    public String getMeetingTime() {
        return meetingTime;
    }

    public void setMeetingTime(String meetingTime) {
        this.meetingTime = meetingTime;
    }


    public int getUserId() {

        return userId;

    }

    public void setUserId(int userId) {

        this.userId = userId;

    }


    public ArrayList<ViewLeadsAction> getViewLeadList() {

        return viewLeadList;

    }

    public void setViewLeadList(ArrayList<ViewLeadsAction> viewLeadList) {

        this.viewLeadList = viewLeadList;

    }

    public Object getResult() {

        return result;

    }

    public void setResult(Object result) {

        this.result = result;

    }

    public int getCustomerId() {

        return customerId;

    }

    public void setCustomerId(int customerId) {

        this.customerId = customerId;

    }

    public String getContactPerson() {

        return contactPerson;

    }

    public void setContactPerson(String contactPerson) {

        this.contactPerson = contactPerson;

    }

    public String getCompanyName() {

        return companyName;

    }

    public void setCompanyName(String companyName) {

        this.companyName = companyName;

    }

    public Long getContactNumber() {

        return contactNumber;

    }

    public void setContactNumber(Long contactNumber) {

        this.contactNumber = contactNumber;

    }

    public String getEmailId() {

        return emailId;

    }

    public void setEmailId(String emailId) {

        this.emailId = emailId;

    }

    //-----------------------SERVICE OBJECT GOES HERE

    ViewLeadsService viewLeadsService = new ViewLeadsService();

    public String viewLeadDetailList() {

        result = viewLeadsService.getViewLeadService();

        return "success";
    }

    public String execute() {

        System.out.println("success");

        return "success";

    }

    public String addLead() {


        System.out.println("Add lead invoke");

        System.out.println("Customer is :" + customerId);

        if (viewLeadsService.isLeadInserted(customerId, meetingDate, meetingTime, userId) == true) {

            System.out.println("Success");

            return SUCCESS;

        } else {

            System.out.println("Error");

            return "success";
        }

    }

    public String deleteLead(){

        if (viewLeadsService.isLeadDeleted(customerId) == true) {

            return "success";
        }
        return "success";

    }

    public String updateFetchLead() {

        System.out.println("customerId: " + customerId);

        result = viewLeadsService.getLeadRecord(customerId);

        return "success";
    }


}
