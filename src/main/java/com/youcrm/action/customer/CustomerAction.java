package com.youcrm.action.customer;

import com.youcrm.executor.customer.CustomerService;

import java.util.ArrayList;

/**
 * Created by Mausam on 7/8/2015.
 */


public class CustomerAction {

    private int customerId;

    private String companyName;

    private String contactPerson;

    private Long contactNumber;

    private String emailId;

    private String addressLineOne;

    private String addressLineTwo;

    private Long pinCode;

    private int locationId;
    private int statusId;
    private String statusType;


    private Object result;

    CustomerService customerService = new CustomerService();

    private ArrayList<CustomerAction> companyNameList = new ArrayList<CustomerAction>();

    public ArrayList<CustomerAction> getCompanyNameList() {
        return companyNameList;
    }

    public void setCompanyNameList(ArrayList<CustomerAction> companyNameList) {
        this.companyNameList = companyNameList;
    }

    private ArrayList<CustomerAction> customerList = new ArrayList<CustomerAction>();

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }

    public ArrayList<CustomerAction> getCustomerList() {
        return customerList;
    }

    public void setCustomerList(ArrayList<CustomerAction> customerList) {
        this.customerList = customerList;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public Long getContactNumber() {
        return contactNumber;
    }

    public Long getPinCode() {
        return pinCode;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getContactPerson() {
        return contactPerson;
    }

    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getAddressLineTwo() {
        return addressLineTwo;
    }

    public void setAddressLineTwo(String addressLineTwo) {
        this.addressLineTwo = addressLineTwo;
    }

    public String getAddressLineOne() {
        return addressLineOne;
    }

    public void setAddressLineOne(String addressLineOne) {
        this.addressLineOne = addressLineOne;
    }

    public int getLocationId() {
        return locationId;
    }

    public void setLocationId(int locationId) {
        this.locationId = locationId;
    }

    public void setContactNumber(Long contactNumber) {
        this.contactNumber = contactNumber;
    }

    public void setPinCode(Long pinCode) {
        this.pinCode = pinCode;
    }



    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public String getStatusType() {
        return statusType;
    }

    public void setStatusType(String statusType) {
        this.statusType = statusType;
    }

    public String addStatus()
    {
        if(customerService.isStatusInserted(statusType))
        {
            return "success";
        }
        return "error";
    }

    public String getStatus()
    {

        result = customerService.getStatusListService();
        return "success";
    }

    public String deleteStatus()
    {
        if(customerService.isStatusDeleted(statusId))
        {
            return "success";
        }
        return "error";
    }

    public String addCustomer() {

        if (customerService.isCustomerInserted( companyName, contactPerson, contactNumber, emailId, addressLineOne, addressLineTwo, pinCode)) {

            System.out.println("Success");

            return "success";

        } else {

            System.out.println("Success");

            return "error";
        }
    }

    public String deleteCustomer() {

        System.out.println("CustomerId" + customerId);

        customerService.isCustomerDeleted(customerId);

        return "success";
    }

    public String updateFetchCustomer() {

        System.out.println("UserId: " + customerId);

        result = customerService.getCustomerRecord(customerId);

        return "success";
    }

    public String updateCustomer() {

        System.out.println("UpdateUser");


        if (customerService.isCustomerUpdated(customerId,companyName,contactPerson,contactNumber,emailId,addressLineOne,addressLineTwo,pinCode) == true) {

            System.out.println("Updated");

            return "success";
        }

        return "success";
    }

    public String customerDetailList() {

        result = customerService.getCustomerListService();

        System.out.println(result);

        return "success";
    }

    public String execute() {

        System.out.println("Success");

        return "success";

    }

    public String fetchCompanyNameList(){

        companyNameList = customerService.getCompanyNameDropDown();

        return "success";
    }
}
