/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FeatureDAO;
import Entity.Feature;
import javax.ejb.EJB;



@WebServlet(name = "FeatureServlet", urlPatterns = {"/feature"})
public class FeatureServlet extends HttpServlet {

    @EJB FeatureDAO featureDao;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         // Display the list of feature:
        request.setAttribute("features", featureDao.getAllFeatures());
        request.getRequestDispatcher("/feature.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        featureDao.persist(new Feature());
        
        // Display the list of guests:
        doGet(request, response);
    }

}
