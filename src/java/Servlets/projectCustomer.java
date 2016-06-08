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
import Entity.Feature;
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
@WebServlet(name = "projectCustomer", urlPatterns = {"/projectCustomer"})
public class projectCustomer extends HttpServlet {

    @EJB
    SubjectDAO subjectDao;
    
    @EJB
    TeamDAO teamDao;
    
    @EJB
    ParametresDAO paramDao;
    
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
        String param = request.getParameter("teamSujet").toString();
        Subject sujet = subjectDao.getSubId(param.split("_")[1]).get(0);
        Team team = teamDao.getTeamById(param.split("_")[0]).get(0);
        request.setAttribute("sujet", sujet);
        request.setAttribute("team", team);
        request.getRequestDispatcher("/customerTeamPage.jsp").forward(request, response);
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
        
        doGet(request,response);
    }

}
