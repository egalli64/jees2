/*
 * Going deeper into Jakarta Enterprise Edition
 * 
 * https://github.com/egalli64/jees2
 */
package com.example.jees2.m2.s5;

import java.util.Set;
import java.util.TreeSet;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * A simple service managed by the context listener
 */
public class CheckerService {
    private static final Logger log = LogManager.getLogger(CheckerService.class);

    public CheckerService() {
        log.traceEntry();
    }

    /**
     * The actual service provided
     * 
     * @param user a string
     * @return the unique (lower-cased) letters in input
     */
    public Set<Character> check(String user) {
        log.traceEntry();

        Set<Character> result = new TreeSet<>();
        if (user != null) {
            for (char c : user.toCharArray()) {
                result.add(Character.toLowerCase(c));
            }
        }
        log.debug("Checked user is {}", result);
        return result;
    }

    @Override
    public String toString() {
        return "CheckerService";
    }
}
