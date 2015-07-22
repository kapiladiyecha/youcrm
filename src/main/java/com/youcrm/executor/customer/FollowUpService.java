package com.youcrm.executor.customer;

import com.youcrm.dao.ConnectionDB;

import java.sql.PreparedStatement;
import java.util.Date;

/**
 * Created by Zalak on 7/13/2015.
 */
public class FollowUpService {

    private static ConnectionDB con = new ConnectionDB();

    private static PreparedStatement preparedStatement = null;

    /* FOLLOWUP RECORD INSERT METHOD
    * ------------------------------------------ */

     public boolean isFollowUpInserted(int customerId, String nextCallDate, String description, int userId, int rating, String review) {

        try {

            Date date = new Date();

            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.customer_followup(customer_id,call_date,next_call_date,description,user_id,rating,review,action) VALUES (?,?,?,?,?,?,?,true)");

            preparedStatement.setInt(1, customerId);

            preparedStatement.setString(2, date.toString());

            preparedStatement.setString(3, nextCallDate);

            preparedStatement.setString(4, description);

            preparedStatement.setInt(5, userId);

            preparedStatement.setInt(6, rating);

            preparedStatement.setString(7, review);

            preparedStatement.execute();

            System.out.println("Successfully inserted followup Record......");

            return true;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;
    }

}
