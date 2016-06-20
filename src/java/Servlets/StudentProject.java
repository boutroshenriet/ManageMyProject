/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DAO.FeatureDAO;
import DAO.ParametresDAO;
import DAO.SubjectDAO;
import DAO.TeamDAO;
import DAO.UserDAO;
import Entity.Feature;
import Entity.User;
import Entity.Subject;
import Entity.Team;
import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pierre
 */

@WebServlet(name = "StudentProject", urlPatterns = {"/StudentProject"})
public class StudentProject extends HttpServlet {
@EJB
    SubjectDAO subjectDao;
    
    @EJB
    TeamDAO teamDao;
    
    @EJB
    ParametresDAO paramDao;
    
    @EJB
    FeatureDAO featureDao;
    
    @EJB
    UserDAO userDao;
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Feature> features = featureDao.getAllFeatures();
        User me = userDao.getUserById(request.getSession().
                        getAttribute("sessionUser").toString()).get(0);
        Subject sujet = me.getTeam().getSubject();
        Team team = me.getTeam();
        for(Feature f : features){
            if(!f.getSubject().equals(sujet)){
                features.remove(f);
            }
            else if(!f.getTeam().equals(team)){
                features.remove(f);
            }
        }
        request.setAttribute("sujet", sujet);
        request.setAttribute("team", team);
        request.setAttribute("features", features);
        request.getRequestDispatcher("/studentMyProject.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
