/*
 * Going deeper into Jakarta Enterprise Edition
 * 
 * https://github.com/egalli64/jees2
 */
package com.example.jees2.m2.s5;

import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Simple servlet logging its life-cycle milestones
 */
@SuppressWarnings("serial")
@WebServlet("/m2/s5/life")
public class LifeServlet extends HttpServlet {
    private static final Logger log = LogManager.getLogger(LifeServlet.class);

    public LifeServlet() {
        log.traceEntry();
    }

    @Override
    public void init() throws ServletException {
        log.traceEntry();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        log.traceEntry();

        request.getRequestDispatcher("/index.html").forward(request, response);
    }

    @Override
    public void destroy() {
        log.traceEntry();
    }
}
