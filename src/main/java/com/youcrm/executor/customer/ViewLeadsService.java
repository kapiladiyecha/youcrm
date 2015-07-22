package com.youcrm.executor.customer;

import com.youcrm.action.customer.ViewLeadsAction;
import com.youcrm.dao.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 09-07-2015.
 */
public class ViewLeadsService {

    private static ConnectionDB con = new ConnectionDB();

    private static PreparedStatement preparedStatement = null;

    private ResultSet resultSet = null;


    public List<List<String>> getViewLeadService() {

        List<List<String>> result = new ArrayList<List<String>>();

        try {

            preparedStatement = con.connection.prepareStatement("SELECT * FROM youcrm.customer_master WHERE action = true AND status_id NOT IN(5)");

            resultSet = preparedStatement.executeQuery();

            List<String> row;

            while (resultSet.next()) {

                row = new ArrayList<String>();

                int customerId = resultSet.getInt("customer_id");

                row.add(resultSet.getString("company_name"));

                row.add(resultSet.getString("contact_person"));

                row.add(String.valueOf(resultSet.getLong("contact_number")));

                row.add(resultSet.getString("email_id"));

                if(resultSet.getInt("status_id") != 2) {

                    row.add("<a href='#' data-value='" + customerId + "' id='" + customerId + "' class='schedule btn btn-default' data-toggle='modal' data-target='#exampleModal'><i></i> Schedule</a>");
                }
                else{
                    row.add("<a href='#' data-value='" + customerId + "' id='" + customerId + "' class='reSchedule btn btn-warning' data-toggle='modal' data-target='#exampleModal'><i></i> Re Schedule</a>");
                }

                row.add("<a href='#' id='" + customerId + "' data-value='" + customerId + "' class='delete'>Deal Cancel</a>");

                result.add(row);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;

    }

    public boolean isLeadDeleted(int customerID) {

        try {

            preparedStatement = con.connection.prepareStatement("UPDATE youcrm.live_demo_meeting SET action = FALSE WHERE customer_id = ?");

            preparedStatement.setInt(1, customerID);

            preparedStatement.executeUpdate();


            if(isCustomerStatusChanged(customerID,5))
            {
                return true;
            }
            else{
                return false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean isLeadInserted(int customerId, String meetingDate,String meetingTime, int userId) {

        try {

            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.live_demo_meeting(customer_id,date_of_demo,time_of_demo,user_id,action) VALUES (?,?,?,?,TRUE)");

            preparedStatement.setInt(1, customerId);

            preparedStatement.setString(2, meetingDate);

            preparedStatement.setString(3, meetingTime);

            preparedStatement.setInt(4, userId);

            preparedStatement.execute();

            System.out.println("Successfully inserted meeeting scheduling data....!!!!");

            if(isCustomerStatusChanged(customerId,2))
            {
                return true;
            }
            else{
                return false;
            }


        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;
    }

    public boolean isCustomerStatusChanged(int customerId,int statusId){

        try {

            preparedStatement = con.connection.prepareStatement("UPDATE youcrm.customer_master SET status_id = ? WHERE customer_id = ?");

            preparedStatement.setInt(1, statusId);

            preparedStatement.setInt(2, customerId);

            preparedStatement.execute();

            System.out.println("Status of customer being changed.......!!!!!!!!");

            return true;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;
    }

    public ViewLeadsAction getLeadRecord(int id) {

        ViewLeadsAction viewLeadsAction = new ViewLeadsAction();

        try {

            preparedStatement = con.connection.prepareStatement("SELECT * FROM youcrm.live_demo_meeting WHERE customer_id=?");

            preparedStatement.setInt(1, id);

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                viewLeadsAction.setCustomerId(resultSet.getInt("customer_id"));

                viewLeadsAction.setMeetingDate(resultSet.getString("date_of_demo"));

                viewLeadsAction.setMeetingTime(resultSet.getString("time_of_demo"));

            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return viewLeadsAction;

    }








}


