package com.login.application;

import com.login.application.Validation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by andpod on 12/30/2015.
 */
@WebServlet(name = "Servlet2")
public class Servlet2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Statement stmt = null;
        Connection con;

        String username = request.getParameter("username").toString();

        String query = "SELECT a.FirstName, a.LastName, c.Name \n" +
                "FROM user a\n" +
                "JOIN userrole b ON (a.UserId = b.UserId)\n" +
                "JOIN role c ON (b.RoleId = c.RoleId)\n" +
                "WHERE a.Username = '"+ username +"';";

        try {
            con = Validation.getConnection();
            stmt = con.createStatement();


            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                String FirstName = rs.getString("a.FirstName");
                String LastName = rs.getString("a.LastName");
                String role = rs.getString("c.Name");

                request.setAttribute("FirstName",FirstName);
                request.setAttribute("LastName",LastName);
                request.setAttribute("role",role);

                request.getRequestDispatcher("/pages/welcome.jsp").forward(request, response);
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
