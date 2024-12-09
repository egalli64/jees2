/*
 * Going deeper into Jakarta Enterprise Edition
 * 
 * https://github.com/egalli64/jees2
 */
package com.example.jees2.m1.s2;

import java.io.IOException;
import java.io.PrintWriter;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Check the current session timeout
 * <p>
 * See the WEB-INF/web.xml configuration file
 */
@SuppressWarnings("serial")
@WebServlet("/m1/s2/timeout")
public class TimeoutServlet extends HttpServlet {
    private static final Logger log = LogManager.getLogger(TimeoutServlet.class);

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        log.traceEntry();
        response.setContentType("text/plain");
        response.setCharacterEncoding("utf-8");

        try (PrintWriter writer = response.getWriter()) {
            writer.println(request.getSession().getMaxInactiveInterval());
        }
    }
}
