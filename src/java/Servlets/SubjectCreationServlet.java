/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;


import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SubjectDao;
import Entity.Subject;


/**
 *
 * @author Florian
 */
@WebServlet(name = "subjectCreation", urlPatterns = {"/subjectCreation"})
public class SubjectCreationServlet extends HttpServlet {

    // Injected DAO EJB:
    @EJB SubjectDao subjectDao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //display list of subjects
        request.setAttribute("subjects", subjectDao.getAllSubjects());
        request.getRequestDispatcher("/subject.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Handle a new subject:
        String subjectName = request.getParameter("name");
        String client = request.getParameter("client");
        String description = request.getParameter("description");
        
        if (subjectName != null)
            subjectDao.persist(new Subject(subjectName, client, description));
        
        doGet(request, response);
    }


}