package com.youcrm.dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by mindarray on 15/7/15.
 */
public class Demo
{

    public static Connection connection = null;

    public static void main(String[] args)
    {
        ConnectionDB();
    }

    public static void  ConnectionDB(){

        try {

            Class.forName("org.postgresql.Driver");

            connection= DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "postgres");

            System.out.print("connection now");

        } catch (Exception e) {
            System.out.print("catch now");
            e.printStackTrace();
        }
    }
}
