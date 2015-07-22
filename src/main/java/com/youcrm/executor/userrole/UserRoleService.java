package com.youcrm.executor.userrole;

import com.youcrm.action.userrole.UserRoleAction;
import com.youcrm.dao.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 10-07-2015.
 */
public class UserRoleService {

    private static ConnectionDB con = new ConnectionDB();

    private static PreparedStatement preparedStatement = null;

    private ResultSet resultSet = null;

    public boolean isUserRoleInserted( String userRole, String userRoleDescription, String userRoleClass ) {

        try {

            String query = "INSERT INTO youcrm.user_role_master(user_role,user_role_discription,role_class) VALUES ('" + userRole + "','" +userRoleDescription  + "','" + userRoleClass + "')";

            System.out.println("Query: " + query);

            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.user_role_master(user_role,user_role_discription,role_class,user_role_action) VALUES (?,?,?,TRUE )");

            preparedStatement.setString(1, userRole);

            preparedStatement.setString(2,userRoleDescription );

            preparedStatement.setString(3,userRoleClass );

            preparedStatement.execute();

            return true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public List<List<String>> getUserRoleList()
    {

        List<List<String>> result = new ArrayList<List<String>>();

        try {

            preparedStatement = con.connection.prepareStatement("SELECT * FROM youcrm.user_role_master WHERE user_role_action=true");

            resultSet = preparedStatement.executeQuery();

            List<String> row;

            while (resultSet.next()) {
                //i++;
                row = new ArrayList<String>();

                int userRoleId = resultSet.getInt("user_role_id");

                row.add(String.valueOf(userRoleId));

                row.add(resultSet.getString("user_role"));

                row.add(resultSet.getString("user_role_discription"));
                // row.add("<i class='fa fa-pencil' data-value='"+userId+"'></i>&emsp;<i class='fa fa-trash-o' data-value='"+userId+"'></i>");
                row.add("<a href='#' data-toggle='modal' data-target='#manageRoleModal' data-value='" + userRoleId + "' id='" + userRoleId + "' class='update btn-action glyphicons pencil btn-success'><i></i></a> &nbsp; <a href='#' id='" + userRoleId + "' data-value='" + userRoleId + "' class=' delete btn-action glyphicons remove_2 btn-danger'><i></i></a>");

                result.add(row);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;

    }

    public boolean isUserRoleDeleted(int userRoleID) {

        System.out.println(userRoleID);

        try {

            preparedStatement = con.connection.prepareStatement("UPDATE youcrm.user_role_master SET user_role_action=false WHERE user_role_id=?");

            preparedStatement.setInt(1, userRoleID);

            preparedStatement.executeUpdate();

            return true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
    public boolean isUserRoleUpdated(int userRoleID, String userRole, String userRoleDiscription, String userRoleClass) {

        try {

            System.out.println("UserRoleID: " + userRoleID);
            System.out.println("UserRole: " + userRole);
            System.out.println("UserRole Discription: " + userRoleDiscription);
            System.out.println("UserRole class: " + userRoleClass);

            preparedStatement = con.connection.prepareStatement("UPDATE youcrm.user_role_master SET user_role=? ,user_role_discription=? ,role_class=?  WHERE user_role_id=?");
            preparedStatement.setString(1,userRole);
            preparedStatement.setString(2,userRoleDiscription);
            preparedStatement.setString(3,userRoleClass);
            preparedStatement.setInt(4, userRoleID);
            preparedStatement.executeUpdate();

            return true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
    public UserRoleAction getUserRoleRecord(int userRoleId){

        UserRoleAction userRoleAction = new UserRoleAction();
        try{

            preparedStatement = con.connection.prepareStatement("SELECT * FROM youcrm.user_role_master WHERE user_role_id=?");

            preparedStatement.setInt(1, userRoleId);

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){

                userRoleAction.setUserRoleId(resultSet.getInt("user_role_id"));
                userRoleAction.setUserRole(resultSet.getString("user_role"));
                userRoleAction.setUserRoleDiscription(resultSet.getString("user_role_discription"));
                userRoleAction.setUserRoleClass(resultSet.getString("role_class"));
//                System.out.println(resultSet.getString("role_class"));
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return userRoleAction;
    }
}
