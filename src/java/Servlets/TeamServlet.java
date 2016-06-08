package Servlets;

import DAO.GroupDAO;
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
import Entity.Groups;
import Entity.Subject;
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

    @EJB
    GroupDAO groupsDao;

    @Override
    protected void doGet(
            HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("sessionType") != null) {
            if ((Integer) request.getSession().getAttribute("sessionType") == 3) {
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
            } else if ((Integer) request.getSession().getAttribute("sessionType") == 1) {
                request.setAttribute("teams", teamDao.getAllTeams());
                request.setAttribute("groups", groupsDao.getAllGroups());
                request.setAttribute("subjects", subjectDao.getAllSubjects());
                request.getRequestDispatcher("/team.jsp").forward(request, response);
            } else if ((Integer) request.getSession().getAttribute("sessionType") == 2) {
                long subjectId = 0;
                if(request.getParameter("subject") != null){
                    subjectId = Integer.parseInt(request.getParameter("subject"));
                }
                List<Team> custTeam = teamDao.getAllTeams();
                List<Team> newCustTeam = new ArrayList<Team>();
                for(Team team : custTeam){
                    if(team.getSubject() != null && team.getSubject().getId().equals(subjectId)){
                        newCustTeam.add(team);
                    }
                }
                request.setAttribute("teams", newCustTeam);
                request.setAttribute("sujet", subjectId);
                request.getRequestDispatcher("/teamListCustomer.jsp").forward(request, response);
            }
        }
    }

        @Override
        protected void doPost
        (
            HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            if (request.getParameter("actionTeam") != null) {
                String link = request.getParameter("actionTeam");
                if (link.equals("create")) {
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
                        for (User user : teamUsers) {
                            user.setTeam(newTeam);
                            userDao.merge(user);
                        }
                    }
                } else if (link.equals("chooseTeamGroup")) {
                    List<Team> teams = teamDao.getAllTeams();
                    String group = "0";
                    String subject = "0";
                    boolean ajout = false;
                    for (Team team : teams) {
                        ajout = false;
                        group = request.getParameter("group_" + team.getId());
                        subject = request.getParameter("subject_" + team.getId());

                        if (!group.equals("0")) {
                            if (team.getGroup() == null || !team.getGroup().getId().toString().equals(group)) {
                                Groups newGroup = groupsDao.getGroupById(group).get(0);
                                team.setGroup(newGroup);
                                ajout = true;
                            }
                        }

                        if (!subject.equals("0")) {
                            if (team.getSubject() == null || !team.getSubject().getId().toString().equals(subject)) {
                                Subject newSub = subjectDao.getSubId(subject).get(0);
                                team.setSubject(newSub);
                                ajout = true;
                            }
                        }

                        if (ajout) {
                            teamDao.merge(team);
                        }
                    }
                }
            }
            // Display the list of guests:
            doGet(request, response);
        }
    }
