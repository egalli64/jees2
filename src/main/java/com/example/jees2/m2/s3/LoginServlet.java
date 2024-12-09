/*
 * Going deeper into Jakarta Enterprise Edition
 * 
 * https://github.com/egalli64/jees2
 */
package com.example.jees2.m2.s3;

import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Login to restricted area
 */
@SuppressWarnings("serial")
@WebServlet("/m2/s3/login")
public class LoginServlet extends HttpServlet {
    private static final Logger log = LogManager.getLogger(LoginServlet.class);
    private static final LoginService service = LoginService.getInstance();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        log.traceEntry();
        String user = request.getParameter("user");
        String password = request.getParameter("password");

        // put in the session a flag for keeping track if the user is logged or not
        request.getSession().setAttribute("logged", service.check(user, password));
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
