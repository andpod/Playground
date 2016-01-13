package com.login.application;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;


/**
 * Created by andpod on 1/7/2016.
 */
public class ExecuteSQLs {

    public static void execute(String user, String firstname, String lastname, String email, int role, String passwd, Connection con)
            throws Exception {


        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Calendar cal = Calendar.getInstance();

        String query1 = "INSERT INTO user (Username,Password,FirstName,LastName,Email) VALUES ('" + user + "','" + passwd + "','" + firstname + "', '" + lastname + "','" + email + "');";
        String query2 = "INSERT INTO userrole (UserId, RoleId, CreatedDate) VALUES ((Select UserId from user where username = '" + user + "'), '" + role + "', '" + dateFormat.format(cal.getTime()) + "');";

        con = Validation.getConnection();

        con.setAutoCommit(false);
        PreparedStatement statement1 = con.prepareStatement(query1);
        PreparedStatement statement2 = con.prepareStatement(query2);

        statement1.executeUpdate(query1);
        statement2.executeUpdate(query2);

        con.commit();
        statement1.close();
        statement2.close();

    }

}
