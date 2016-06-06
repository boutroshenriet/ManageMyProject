package Servlets;

import DAO.ParametresDAO;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "TeamServlet", urlPatterns = {"/team"})
public class TeamServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // Injected DAO EJB:
    @EJB
    TeamDAO teamDao;

    // Injected DAO EJB:
    @EJB
    UserDAO userDao;

    @EJB
    SubjectDAO subjectDao;

    @EJB
    SessionDAO sessionDao;

    @EJB
    ParametresDAO parametresDao;

    @Override
    protected void doGet(
            HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("sessionType") != null) {
            if ((Integer) request.getSession().getAttribute("sessionType") == 3) {

                if (request.getSession().getAttribute("sessionStudentTeam") != null) {
                    request.getRequestDispatcher("/myTeam.jsp").forward(request, response);
                } else {
                    List<User> students = userDao.getAllStudents();
                    List<User> sameSessionStudents = new ArrayList<User>();
                    User me = userDao.getUserById(request.getSession().
                            getAttribute("sessionUser").toString()).get(0);
                    for (User student : students) {
                        if (student.getSession().getId().equals(me.getSession().getId())) {
                            if (!student.getId().equals(me.getId())) {
                                if (student.getTeam() == null) {
                                    sameSessionStudents.add(student);
                                }
                            }
                        }
                    }
                    request.setAttribute("studentsToAdd", sameSessionStudents);
                    request.setAttribute("me", me);
                    int teamSize = Integer.parseInt(parametresDao.
                            getParametresByName("teamSize").get(0).getValeur().toString());
                    request.setAttribute("teamSize", teamSize);
                    request.getRequestDispatcher("/studentTeamCreation.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("teams", teamDao.getAllTeams());
            }
        }
    }

    @Override
    protected void doPost(
            HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("actionTeam") != null) {
            String link = request.getParameter("actionTeam");
            if (link.equals("create")) {
                if (request.getSession().getAttribute("sessionType") != null) {
                    if ((Integer) request.getSession().getAttribute("sessionType") == 3) {
                        String name = request.getParameter("teamName");
                        int teamSize = Integer.parseInt(parametresDao.getParametresByName("teamSize")
                                .get(0).getValeur().toString());
                        List<User> teamUsers = new ArrayList<User>();
                        String userId = request.getSession().getAttribute("sessionUser").toString();
                        User newUser = userDao.getUserById(userId).get(0);
                        teamUsers.add(newUser);
                        for (int i = 2; i <= teamSize; i++) {
                            userId = request.getParameter("el" + i);
                            newUser = userDao.getUserById(userId).get(0);
                            teamUsers.add(newUser);
                        }

                        Team newTeam = new Team(name, teamUsers);

                        if (name != null) {
                            teamDao.persist(newTeam);
                        }
                    }
                }
            }
        }
        // Display the list of guests:
        doGet(request, response);
    }
}
