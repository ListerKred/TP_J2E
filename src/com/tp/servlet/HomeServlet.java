package com.tp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.tp.entities.User;


/**
 * Servlet implementation class Servlet1
 */
@WebServlet("/home")
public class HomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private Map<Integer, User> mapUsers = new HashMap<Integer, User>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext app = this.getServletContext();

        User users = new User();
        users.setUserName("didiber");
        users.setFirstName("Didier");
        users.setLastName("Bernard");
        users.setAddress("43 rue des perdus");
        users.setPhone("06.53.45.46.69");
        users.setEmail("Emailbidon@gmail.com");
        mapUsers.put(1, users);
        app.setAttribute("user", mapUsers);
        request.setAttribute("user", mapUsers);


        RequestDispatcher rd;
        rd = this.getServletContext().getNamedDispatcher("JspHome");
        rd.forward(request, response);
    }
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);


    }
}

