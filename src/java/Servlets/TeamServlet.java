package Servlets;
 
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.TeamDAO;
import DAO.UserDAO;
import DAO.SubjectDAO;
import Entity.Team;

@WebServlet(name="TeamServlet", urlPatterns={"/team"})
public class TeamServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
    // Injected DAO EJB:
    @EJB TeamDAO teamDao;
    
    // Injected DAO EJB:
    @EJB UserDAO userDao;
    
    @EJB SubjectDAO subjectDao;
    
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Display the list of guests:
        request.setAttribute("teams", teamDao.getAllTeams());
        request.setAttribute("students", userDao.getAllStudents());
        request.setAttribute("subjects", subjectDao.getAllSubjects());
        request.getRequestDispatcher("/team.jsp").forward(request, response);
    }
 
    @Override
    protected void doPost(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        // Handle a new guest:
        String name = request.getParameter("teamName");
        String idSub = request.getParameter("selectsub");

        Team newTeam = new Team(name);
        if(idSub != null && !idSub.isEmpty())
            newTeam.setSubject(subjectDao.getSubId(idSub).get(0));
        
        if (name != null)
            teamDao.persist(newTeam);

        // Display the list of guests:
        doGet(request, response);
    }
}