package com.youcrm.dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by Mayank on 6/19/2015.
 */
public class ConnectionDB
{

    public Connection connection = null;

    public ConnectionDB(){

        try {

            Class.forName("org.postgresql.Driver");

            connection= DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "Dell 15R", "admin");

            System.out.print("connection now");

        } catch (Exception e) {
            System.out.print("catch now");
            e.printStackTrace();
        }
    }
}
