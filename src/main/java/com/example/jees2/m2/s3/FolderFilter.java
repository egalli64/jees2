/*
 * Going deeper into Jakarta Enterprise Edition
 * 
 * https://github.com/egalli64/jees2
 */
package com.example.jees2.m2.s3;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * Filter applied on all the resources in the specified folder
 */
@WebFilter(urlPatterns = { "/m2/s3/*" })
public class FolderFilter implements Filter {
    private static final Logger log = LogManager.getLogger(FolderFilter.class);

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        if (!(request instanceof HttpServletRequest)) {
            // quietly reject non-web requests
            log.error("Only HttpServletRequest are accepted");
            return;
        }

        // 1. filter in
        HttpServletRequest hsr = (HttpServletRequest) request;
        log.trace("Requesting {}", hsr.getRequestURL().toString());

        // 2. pass the control to the next filter or actual resource
        chain.doFilter(request, response);

        // 3. filter out
//        log.trace("filter out " + url.toString());
    }
}
