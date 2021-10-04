package com.email.email;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.email.business.User;

import javax.servlet.annotation.WebServlet;

import com.email.data.UserDB;

@WebServlet(urlPatterns = "/_email/emailList")
public class EmailListServlet extends HttpServlet {

	@Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String nextUrl = "/_email/index.jsp";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
        // perform action and set URL to appropriate page
        if (action.equals("join")) {
        	nextUrl = "/_email/index.jsp";    // the "join" page
        } 
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            
            // store data in User object
            User user = new User(firstName, lastName, email);

            // validate the parameters
            String message;
            if (firstName == null || lastName == null || email == null ||
                firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
                message = "Please fill out all three text boxes.";
                nextUrl = "/_email/index.jsp";
            } 
            else {
                message = "";
                nextUrl = "/_email/thanks.jsp";
                UserDB.insert(user);
            }
            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        getServletContext()
                .getRequestDispatcher(nextUrl)
                .forward(request, response);
    }
}