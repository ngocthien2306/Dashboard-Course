package com.ch05ex1.email;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.ch05ex1.business.User;

import javax.servlet.annotation.WebServlet;

import com.ch05ex1.data.UserDB;

@WebServlet(urlPatterns = "/_ch05ex01/emailList")
public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/_ch05ex01/index.jsp";
        
        
        // get current action
        String action = request.getParameter("action");
        
        // print action value to console AND log file
        System.out.println("EmailListServlet action: " + action);
        log("action=" + action);
        
        // set default action
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/_ch05ex01/index.jsp";    // the "join" page
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
                url = "/_ch05ex01/index.jsp";
            } 
            else {
                message = "";
                url = "/_ch05ex01/thanks.jsp";
                UserDB.insert(user);
            }
            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}