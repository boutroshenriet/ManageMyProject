package Servlets;
 
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.GroupDAO;
import DAO.TeamDAO;
import Entity.Groups;

@WebServlet(name="GroupServlet", urlPatterns={"/group"})
public class GroupServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
    // Injected DAO EJB:
    @EJB GroupDAO groupDao;
    
    @EJB TeamDAO teamDao;
    
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Display the list of guests:
        request.setAttribute("teams", teamDao.getAllTeams());
        request.setAttribute("groups", groupDao.getAllGroups());
        request.getRequestDispatcher("/group.jsp").forward(request, response);
    }
 
    @Override
    protected void doPost(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        // Handle a new guest:
        String name = request.getParameter("groupName");
        //String password = request.getParameter("password");
        //Integer type = Integer.parseInt(request.getParameter("type"));
        
        if (name != null)
            groupDao.persist(new Groups(name));

        // Display the list of guests:
        doGet(request, response);
    }
}