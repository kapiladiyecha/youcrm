package com.youcrm.action.customer;

import com.youcrm.executor.customer.FollowUpService;

/**
 * Created by Zalak on 7/13/2015.
 */
public class FollowUpAction {

    private int companyNameList;

    private String callDate;

    private String nextCallDate;

    private String description;

    private int userId;

    private int star;

    private String review;


    /* GETTER AND SETTER FOR FOLLOW UP ACTION
    * ---------------------------------------------------- */

    public int getCompanyNameList() {
        return companyNameList;
    }

    public void setCompanyNameList(int companyNameList) {
        this.companyNameList = companyNameList;
    }

    public String getCallDate() {
        return callDate;
    }

    public void setCallDate(String callDate) {
        this.callDate = callDate;
    }

    public String getNextCallDate() {
        return nextCallDate;
    }

    public void setNextCallDate(String nextCallDate) {
        this.nextCallDate = nextCallDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getStar() {
        return star;
    }

    public void setStar(int star) {
        this.star = star;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    /*ADD FOLLOWUP ACTION METHOD
    * -------------------------------------------*/

    FollowUpService followUp = new FollowUpService();

    public String addFollowupDetail() {

        if (followUp.isFollowUpInserted(companyNameList, nextCallDate, description, 1, star, review)) {

            return "success";
        }

        return "success";
    }
}
