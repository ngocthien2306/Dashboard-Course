package com.chap8ex01.email;

import java.io.*;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.chap8ex01.business.User;
import com.chap8ex01.data.UserDB;
import com.chap8ex01.data.UserIO;

@WebServlet(urlPatterns = "/_chap8ex01/emailList")
public class EmailListServlet_chap8ex01 extends HttpServlet
{    
    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "index.jsp";
        if (action.equals("join")) {
            url = "index.jsp";    // the "join" page
        }
        else if (action.equals("add")) {                
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User object and save User object in database
            User user = new User(firstName, lastName, email);
            UserDB.insert(user);
            
            // set User object in request object and set URL
            request.setAttribute("user", user);
            url = "thanks.jsp";   // the "thanks" page
        }
        
        // create the Date object and store it in the request
        Date currentDate = new Date();
        request.setAttribute("currentDate", currentDate);

        // create users list and store it in the session
        String path = getServletContext().getRealPath("/WEB-INF/emaillist/EmailList.txt");
        ArrayList<User> users = UserIO.getUsers(path);
        HttpSession session = request.getSession();
        session.setAttribute("users", users);

        // forward request and response objects to specified URL
        request.getRequestDispatcher(url).forward(request, response);
    }    
    
    @Override
    protected void doGet(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
        doPost(request, response);
    }    
}