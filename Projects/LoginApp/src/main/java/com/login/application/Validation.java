package com.login.application;

import com.login.application.AESCrypt;

import java.sql.*;

/**
 * Created by andpod on 12/31/2015.
 */
public class Validation {
    public static final String DBNAME = "login";
    public static final String DB_USERNAME = "admin";
    public static final String DB_PASSWORD = "admin";



    public static Connection getConnection() throws Exception{
        Connection conn = null;
        try {
            String url = "jdbc:mysql://localhost/"+DBNAME+"?user="+DB_USERNAME+"&password="+DB_PASSWORD;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url);
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        } catch(Exception e) {
            e.printStackTrace();
        }

        return conn;
    }

    public static boolean validate(String username,String password){
        boolean status=false;
        Connection conn;
        try{

            password = AESCrypt.encrypt(password);

            conn = Validation.getConnection();
            PreparedStatement statement=conn.prepareStatement(
                    "select * from user where username=? and password=?");



            statement.setString(1,username);
            statement.setString(2,password);

            ResultSet rs=statement.executeQuery();
            status=rs.next();

        }catch(Exception e){}
        return status;
    }

}
