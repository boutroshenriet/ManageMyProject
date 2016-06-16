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
import java.util.List;

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
        
        if(request.getParameter("actionUser") != null){
            String link = request.getParameter("actionUser");
            if(link.equals("ajouter"))
            {
                Integer type = Integer.parseInt(request.getParameter("type"));
                if(type == 3)
                {
                    // Handle a new guest:
                    String pseudo = request.getParameter("pseudo");
                    String password = request.getParameter("password");
                    String sessionId = request.getParameter("session");

                    Session session = sessionDao.getSessionById(sessionId).get(0);

                    if (pseudo != null)
                        userDao.persist(new User(pseudo, password, type, session));
                }
                else{
                    // Handle a new guest:
                    String pseudo = request.getParameter("pseudo");
                    String password = request.getParameter("password");


                    if (pseudo != null)
                        userDao.persist(new User(pseudo, password, type));
                }
            }
            else if(link.equals("modifier")){
                List<User> users = userDao.getAllStudents();
                String sessionId;
                for(User user : users){
                    if(request.getParameter("session_" + user.getId().toString()) != null){
                        sessionId = request.getParameter("session_" + user.getId().toString());
                        if(!sessionId.equals("0")){
                            if(user.getSession() != null){
                                if(!sessionId.equals(user.getSession().getId().toString())){
                                    user.setSession(sessionDao.getSessionById(sessionId).get(0));
                                    userDao.merge(user);
                                }
                            }
                            else{
                                user.setSession(sessionDao.getSessionById(sessionId).get(0));
                                    userDao.merge(user);
                            }
                        }
                    }
                }
            }
        }
        
        // Display the list of guests:
        doGet(request, response);
    }
}