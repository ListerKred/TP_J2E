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
        app.getAttribute("user");

        Map<Integer, User> mapUser = new HashMap<Integer, User>();

        User user = new User();
        user.setUserName("didiber");
        user.setFirstName("Didier");
        user.setLastName("Bernard");
        user.setAddress("43 rue des perdus");
        user.setPhone("06.53.45.46.69");
        user.setEmail("Emailbidon@gmail.com");
        mapUser.put(1, user);

        request.setAttribute("user", mapUser);
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

