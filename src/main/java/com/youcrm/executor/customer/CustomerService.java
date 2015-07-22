package com.youcrm.executor.customer;

import com.youcrm.action.customer.CustomerAction;
import com.youcrm.dao.ConnectionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Mausam on 7/8/2015.
 */

public class CustomerService {


    private static ConnectionDB con=new ConnectionDB();
    private static PreparedStatement preparedStatement=null;
    private ResultSet resultSet=null;

    public boolean isStatusInserted(String statusType)
    {

        try
        {
            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.status_master(status_type,action) values(?,true)");
            preparedStatement.setString(1,statusType);
            preparedStatement.execute();
            return true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }

    public List<List<String>> getStatusListService()
    {

        List<List<String>> result = new ArrayList<List<String>>();

        try {

            preparedStatement = con.connection.prepareStatement("SELECT * FROM youcrm.status_master WHERE action = true");

            resultSet = preparedStatement.executeQuery();

            List<String> row;

            while (resultSet.next()) {
                //i++;
                row = new ArrayList<String>();

                int statusId = resultSet.getInt("status_id");

                row.add(String.valueOf(statusId));

                row.add(resultSet.getString("status_type"));

                row.add("<a href='' data-value='" + statusId + "' id='" + statusId + "' class='update btn-action glyphicons pencil btn-success'><i></i></a> &nbsp; <a href='' id='" + statusId + "' data-value='" + statusId + "' class=' delete btn-action glyphicons remove_2 btn-danger'><i></i></a>");

                result.add(row);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;

    }

    public boolean isStatusDeleted(int statusId)
    {
        try
        {
            preparedStatement=con.connection.prepareStatement("UPDATE youcrm.status_master SET action=false WHERE status_id = ? ");
            preparedStatement.setInt(1, statusId);
            preparedStatement.executeUpdate();
            return true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }

      /* CUSTOMER RECORD INSERT FUNCTION
    * ----------------------------------------------------*/

    public boolean isCustomerInserted(String companyName, String contactPerson, Long contactNumber, String emailId, String addressLineOne, String addressLineTwo, Long pinCode) {

        System.out.println("Inside Insert Customer Detail");

        try {

            Date date = new Date();

            String query = "INSERT INTO youcrm.customer_master(company_name,contact_person,contact_number,email_id,address_line1,address_line2,pincode) VALUES ('" + companyName + "','" + contactPerson + "','" + contactNumber + "','" + emailId + "','" + addressLineOne + "','" + addressLineTwo + "'," + pinCode + ")";

            System.out.println(query);

            System.out.println("Insert Customer Query: " + query);

            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.customer_master(company_name,contact_person,contact_number,email_id,address_line1,address_line2,pincode,status_id,action) VALUES (?,?,?,?,?,?,?,1,true)");

            preparedStatement.setString(1, companyName);

            preparedStatement.setString(2, contactPerson);

            preparedStatement.setLong(3, contactNumber);

            preparedStatement.setString(4, emailId);

            preparedStatement.setString(5, addressLineOne);

            preparedStatement.setString(6, addressLineTwo);

            preparedStatement.setLong(7, pinCode);

            preparedStatement.execute();

            return true;

        } catch (Exception e) {

            e.printStackTrace();
        }

        return false;

    }

    /* CUSOTMER DATA VIEW IN DATATABLE METHOD
    * ------------------------------------------------------ */

    public List<List<String>> getCustomerListService() {

        List<List<String>> result = new ArrayList<List<String>>();

        try {

            //preparedStatement = con.connection.prepareStatement("SELECT customer_master.customer_id,customer_master.company_name,customer_master.contact_person,customer_master.contact_number,customer_master.email_id,customer_master.address_line1,customer_master.address_line2,customer_master.pincode,status_master.status_id,status_master.status_type from youcrm.customer_master, youcrm.status_master where customer_master.status_id = status_master.status_id and action = true");
            preparedStatement = con.connection.prepareStatement("SELECT customer_master.customer_id,customer_master.company_name,customer_master.contact_person,customer_master.contact_number,customer_master.email_id,customer_master.address_line1,customer_master.address_line2,customer_master.pincode,status_master.status_id,status_master.status_type FROM youcrm.customer_master LEFT JOIN youcrm.status_master ON customer_master.status_id = status_master.status_id WHERE customer_master.action = true");

            resultSet = preparedStatement.executeQuery();

            List<String> row;

            while (resultSet.next()) {

                row = new ArrayList<String>();

                int customerId = resultSet.getInt("customer_id");

                row.add(String.valueOf(customerId));

                row.add(resultSet.getString("company_name"));

                row.add(resultSet.getString("contact_person"));

                row.add(String.valueOf(resultSet.getLong("contact_number")));

                row.add(resultSet.getString("email_id"));

                row.add(resultSet.getString("address_line1"));

                row.add(resultSet.getString("address_line2"));

                row.add(String.valueOf(resultSet.getLong("pincode")));

                String status =resultSet.getString("status_type");

                int statusId = resultSet.getInt("status_id");

                row.add("<span class='label label-block label-important status"+statusId+"'>"+status+"</span>");

                row.add("<a href='#' data-value='" + customerId + "' id='" + customerId + "' class='update btn-action glyphicons pencil btn-success'><i></i></a> &nbsp; <a href='#' id='" + customerId + "' data-value='" + customerId + "' class=' delete btn-action glyphicons remove_2 btn-danger'><i></i></a>");

                result.add(row);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return result;

    }

    /* CUSTOMER RECORD DELETE METHOD
    * --------------------------------------------------*/

    public boolean isCustomerDeleted(int customerId) {

        System.out.println(customerId);

        try {

            preparedStatement = con.connection.prepareStatement("UPDATE youcrm.customer_master SET action=false WHERE customer_id=?");

            preparedStatement.setInt(1, customerId);

            preparedStatement.executeUpdate();

            return true;

        } catch (Exception e) {

            e.printStackTrace();
        }

        return false;
    }

    /* CUSTOMER RECORD UPDATE METHOD
    * -------------------------------------------------------- */

    public boolean isCustomerUpdated(int customerId, String companyName, String contactPerson, Long contactNumber, String emailId, String addressLineOne, String addressLineTwo, Long pinCode) {

        try {

            preparedStatement = con.connection.prepareStatement("UPDATE youcrm.customer_master SET company_name=? ,contact_person=? ,contact_number=?, email_id=?, address_line1=? ,address_line2=?, pincode=?  WHERE customer_id=?");

            preparedStatement.setString(1, companyName);

            preparedStatement.setString(2, contactPerson);

            preparedStatement.setLong(3, contactNumber);

            preparedStatement.setString(4, emailId);

            preparedStatement.setString(5, addressLineOne);

            preparedStatement.setString(6, addressLineTwo);

            preparedStatement.setLong(7, pinCode);

            preparedStatement.setInt(8, customerId);

            preparedStatement.executeUpdate();

            return true;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;
    }

    /* GETTING CUSTOMER DATA (ID WISE)
    * -----------------------------------------------------------------*/
    public CustomerAction getCustomerRecord(int id) {

        CustomerAction customerAction = new CustomerAction();

        try {

            preparedStatement = con.connection.prepareStatement("SELECT * FROM youcrm.customer_master WHERE customer_id=?");

            preparedStatement.setInt(1, id);

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                customerAction.setCustomerId(resultSet.getInt("customer_id"));

                customerAction.setCompanyName(resultSet.getString("company_name"));

                customerAction.setContactPerson(resultSet.getString("contact_person"));

                customerAction.setContactNumber(resultSet.getLong("contact_number"));

                customerAction.setEmailId(resultSet.getString("email_id"));

                customerAction.setAddressLineOne(resultSet.getString("address_line1"));

                customerAction.setAddressLineTwo(resultSet.getString("address_line2"));

                customerAction.setPinCode(resultSet.getLong("pincode"));

                // userRecord.add(userAction);

                System.out.println(resultSet.getInt("customer_id") + resultSet.getString(5) + resultSet.getString(6));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customerAction;

    }

    /* GET COMPANY NAME LIST INTO DROP DOWN
    * ---------------------------------------------------------*/

    public ArrayList<CustomerAction> getCompanyNameDropDown() {

        ArrayList<CustomerAction> companyNameList = new ArrayList<CustomerAction>();

        try {

            preparedStatement = con.connection.prepareStatement("SELECT customer_id,company_name FROM youcrm.customer_master");

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                CustomerAction row = new CustomerAction();

                row.setCustomerId(resultSet.getInt("customer_id"));

                row.setCompanyName(resultSet.getString("company_name"));

                companyNameList.add(row);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return companyNameList;

    }


}
