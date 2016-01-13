package com.login.application;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Locale;

/**
 * Created by andpod on 1/2/2016.
 */

@WebServlet(name = "InsertServlet")
public class InsertServlet extends HttpServlet {

    //role = 1 for admin
    //role = 2 for normal user
    public static final int role = 1;
    public static String error_encription ="Password encryption error";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        Connection con = null;
        Locale locale = request.getLocale();


        System.out.println(locale.getLanguage().toString() +" "+ locale.getCountry().toString());

        String user = request.getParameter("user").toString();
        String firstname = request.getParameter("firstname").toString();
        String lastname = request.getParameter("lastname").toString();
        String passwd = null;
        try {
            passwd = AESCrypt.encrypt(request.getParameter("passwd").toString());
        } catch (Exception e) {
            System.out.println(error_encription);
            e.printStackTrace();
        }
        String email = request.getParameter("email").toString();

        try{
            ExecuteSQLs.execute(user,firstname,lastname, email,role,passwd,con);
            request.setAttribute("message", I18N.internationalize("reg_message_success", locale.getLanguage().toString(), locale.getCountry().toString()));
            request.setAttribute("message_link", I18N.internationalize("login_page", locale.getLanguage().toString(), locale.getCountry().toString()));
            request.getRequestDispatcher("/pages/info.jsp").forward(request, response);
          }

         catch (Exception e) {
            pw.println(e.getMessage());
            try {
                request.setAttribute("message", I18N.internationalize("reg_message_error", locale.getLanguage().toString(), locale.getCountry().toString()));
                request.setAttribute("message_link", I18N.internationalize("login_page", locale.getLanguage().toString(), locale.getCountry().toString()));
                request.getRequestDispatcher("/pages/info.jsp").forward(request, response);
                con.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }



    }
}
