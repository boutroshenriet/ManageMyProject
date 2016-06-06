/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DAO.SessionDAO;
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
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //display list of subjects
        if(request.getSession().getAttribute("year") == null){
            request.getSession().setAttribute("redirect", "session");
            request.getRequestDispatcher("/year").forward(request, response);
        }
            
        request.setAttribute("sessions", sessionDao.getAllSessions());
        request.getRequestDispatcher("/subject.jsp").forward(request, response);
        
        if(request.getParameter("action") != null){
            String link = request.getParameter("action");
            if(link.equals("add"))
            {
                Integer sessionName = Integer.parseInt(request.getParameter("year"));
                sessionDao.persist(new Session());
            }
            else if(link.equals("choose"))
            {
                HttpSession session = null;
                session = request.getSession();
                session.setAttribute("year", request.getParameter("yearList"));
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        doGet(request, response);
    }
}
