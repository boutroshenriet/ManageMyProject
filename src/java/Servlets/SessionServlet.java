/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DAO.SessionDAO;
import DAO.UserDAO;
import Entity.Session;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Pierre
 */
@WebServlet(name = "SessionServlet", urlPatterns = {"/session"})
public class SessionServlet extends HttpServlet {


    @EJB SessionDAO sessionDao;
    
    @EJB UserDAO userDao;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //display list of subjects
        if(request.getSession().getAttribute("year") == null){
            request.getSession().setAttribute("redirect", "session");
            request.getRequestDispatcher("/year").forward(request, response);
        }

        request.setAttribute("sessions", sessionDao.getAllSessions());
        request.getRequestDispatcher("session.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getParameter("sessionName") != null){
            String sessionName = request.getParameter("sessionName").toString();
            sessionDao.persist(new Session(sessionName));
        }
        doGet(request, response);
    }
}
