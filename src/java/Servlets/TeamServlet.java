package Servlets;
 
import DAO.SessionDAO;
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
import Entity.User;
import java.util.List;

@WebServlet(name="TeamServlet", urlPatterns={"/team"})
public class TeamServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
    // Injected DAO EJB:
    @EJB TeamDAO teamDao;
    
    // Injected DAO EJB:
    @EJB UserDAO userDao;
    
    @EJB SubjectDAO subjectDao;
    
    @EJB SessionDAO sessionDao;
    
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if((Integer)request.getSession().getAttribute("sessionType") == 3){
            
            if(request.getSession().getAttribute("sessionStudentTeam") != null)
                request.getRequestDispatcher("/myTeam.jsp").forward(request, response);
            else
            {
                List<User> students = userDao.getAllStudents();
                User me = userDao.getUserById(request.getSession().
                        getAttribute("sessionUser").toString()).get(0);
                for(User student : students)
                {
                    if(student.getSession().getId() != me.getSession().getId()) {
                        students.remove(student);
                    }
                } 
                request.setAttribute("studentsToAdd", students);
                request.getRequestDispatcher("/studentTeamCreation.jsp").forward(request, response);
            }
        }
        else
        {
            request.setAttribute("teams", teamDao.getAllTeams());
        }
    }
 
    @Override
    protected void doPost(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if((Integer)request.getSession().getAttribute("sessionType") == 3){
            request.setAttribute("teams", teamDao.getAllTeams());
            if(request.getSession().getAttribute("sessionStudentTeam") != null)
                request.getRequestDispatcher("/myTeam.jsp").forward(request, response);
            else
            {
                request.getRequestDispatcher("/studentTeamCreation.jsp").forward(request, response);
            }
        }
        else
        {
            String name = request.getParameter("teamName");
            String idSub = request.getParameter("selectsub");

            Team newTeam = new Team(name);
            if(idSub != null && !idSub.isEmpty())
                newTeam.setSubject(subjectDao.getSubId(idSub).get(0));

            if (name != null)
                teamDao.persist(newTeam);
        }
        // Display the list of guests:
        doGet(request, response);
    }
}