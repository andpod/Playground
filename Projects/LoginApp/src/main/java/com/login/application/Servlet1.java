package com.login.application;

import com.login.application.I18N;
import com.login.application.Validation;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;

/**
 * Created by andpod on 12/30/2015.
 */
@WebServlet(name = "Servlet1")
public class Servlet1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("username").toString();
        String pass = request.getParameter("password").toString();
        Locale locale = request.getLocale();

        if(Validation.validate(name, pass)){
            RequestDispatcher rd=request.getRequestDispatcher("Servlet2");
            rd.forward(request,response);
        }
        else{
            request.setAttribute("login_page",I18N.internationalize("login_page",locale.getLanguage().toString(), locale.getCountry().toString()));
            request.setAttribute("login_error", I18N.internationalize("login_error",locale.getLanguage().toString(), locale.getCountry().toString()));
            request.getRequestDispatcher("/pages/error.jsp").forward(request, response);

            RequestDispatcher rd=request.getRequestDispatcher("/pages/index.jsp");
            rd.include(request,response);
        }

        out.close();

    }
}
