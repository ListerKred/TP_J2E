package com.tp.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher rd;
        rd = this.getServletContext().getNamedDispatcher("JspLogin");
        rd.forward(req, resp);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("username");

        HttpSession session = request.getSession();
        session.setAttribute("username", login);

        RequestDispatcher rd;
        if (login != null && !"".equals(login.trim())) {
            //rd = this.getServletContext().getRequestDispatcher("JspHome");
            response.sendRedirect("/TP_J2E/home");
        }else {
            rd = this.getServletContext().getNamedDispatcher("JspLogin");
            request.setAttribute("Error", "need a username");
            rd.forward(request, response);
        }

        }
}

