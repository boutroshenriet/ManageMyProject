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

import DAO.YearDao;
import Entity.Year;
import javax.ejb.EJB;



@WebServlet(name = "yearCreation", urlPatterns = {"/yearCreation"})
public class YearCreationServlet extends HttpServlet {

    @EJB YearDao yearDao;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         // Display the list of year:
        request.setAttribute("years", yearDao.getAllYears());
        request.getRequestDispatcher("/year.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        yearDao.persist(new Year());
        
        // Display the list of guests:
        doGet(request, response);
    }

}
