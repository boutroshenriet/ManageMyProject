package Servlets;
 
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.GroupDAO;
import Entity.Group;

@WebServlet(name="GroupServlet", urlPatterns={"/group"})
public class GroupServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
    // Injected DAO EJB:
    @EJB GroupDAO groupDao;
    
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Display the list of guests:
        request.setAttribute("teams", groupDao.getAllGroups());
        request.getRequestDispatcher("/team.jsp").forward(request, response);
    }
 
    @Override
    protected void doPost(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        // Handle a new guest:
        //String name = request.getParameter("name");
        //String password = request.getParameter("password");
        //Integer type = Integer.parseInt(request.getParameter("type"));
        
        if (name != null)
            groupDao.persist(new Group());

        // Display the list of guests:
        doGet(request, response);
    }
}