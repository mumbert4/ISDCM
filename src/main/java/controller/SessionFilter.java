/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Filter.java to edit this template
 */
package controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;

/**
 *
 * @author alumne
 */

@WebFilter(urlPatterns = {"/*"})
public abstract class SessionFilter implements Filter {

    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialization code here
    }

   public void doFilter(HttpServletRequest httpRequest, HttpServletResponse httpResponse, FilterChain chain)
            throws IOException, ServletException {

        //System.out.println("FILTEr");
        HttpSession session = httpRequest.getSession(false);

        // If session is not null, continue with the request
        if (session != null || httpRequest.getRequestURI().endsWith("login.jsp")) {
            chain.doFilter(httpRequest, httpResponse);
            System.out.println(session.getAttribute("username"));
        } else {
            // If session is null and request is not for login page, redirect to login page
            httpResponse.sendRedirect("login.jsp");
        }
    }

    public void destroy() {
        // Cleanup code here
    }
}