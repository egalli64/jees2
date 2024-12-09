/*
 * Going deeper into Jakarta Enterprise Edition
 * 
 * https://github.com/egalli64/jees2
 */
package com.example.jees2.m1.s2;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * Always generate an IllegalStateException
 */
@SuppressWarnings("serial")
@WebServlet("/m1/s2/error")
public class ErrorGenerator extends HttpServlet {
    private static final Logger log = LogManager.getLogger(ErrorGenerator.class);

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        log.traceEntry();

        throw new IllegalStateException("Something awful happened");
    }
}
