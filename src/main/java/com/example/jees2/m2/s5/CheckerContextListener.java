/*
 * Going deeper into Jakarta Enterprise Edition
 * 
 * https://github.com/egalli64/jees2
 */
package com.example.jees2.m2.s5;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

/**
 * Listen on web app events, add an attribute to the servlet context at startup
 */
@WebListener
public class CheckerContextListener implements ServletContextListener {
    private static final Logger log = LogManager.getLogger(CheckerContextListener.class);

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        log.traceEntry();
        sce.getServletContext().setAttribute("checker", new CheckerService());
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        Object checker = sce.getServletContext().getAttribute("checker");
        log.trace("Nothing to be done on {} destruction", checker);
    }
}
