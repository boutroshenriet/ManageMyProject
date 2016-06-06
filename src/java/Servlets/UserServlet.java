package Servlets;
 
import DAO.SessionDAO;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import Entity.Session;
import Entity.User;

@WebServlet(name="UserServlet", urlPatterns={"/user"})
public class UserServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
    // Injected DAO EJB:
    @EJB UserDAO userDao;
    
    @EJB SessionDAO sessionDao;
    
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Display the list of guests:
        request.setAttribute("users", userDao.getAllUsers());
        request.setAttribute("sessions", sessionDao.getAllSessions());
        request.getRequestDispatcher("/user.jsp").forward(request, response);
    }
 
    @Override
    protected void doPost(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        Integer type = Integer.parseInt(request.getParameter("type"));
        
        if(type == 3)
        {
            // Handle a new guest:
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String sessionId = request.getParameter("session");

            Session session = sessionDao.getSessionById(sessionId).get(0);
            
            if (name != null)
                userDao.persist(new User(name, password, type, session));
        }
        else{
            // Handle a new guest:
            String name = request.getParameter("name");
            String password = request.getParameter("password");


            if (name != null)
                userDao.persist(new User(name, password, type));
        }
        // Display the list of guests:
        doGet(request, response);
    }
}