/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DAO.SubjectDAO;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Pierre
 */
@WebServlet(name = "HomePageServlet", urlPatterns = {"/HomePageServlet"})
public class HomePageServlet extends HttpServlet {

    
    @EJB SubjectDAO subjectDao;
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
        HttpSession session = null;
        session = request.getSession();
        //Ajout de l'utilisateur dans la session
        if(session.getAttribute("sessionUser") != null){
            
            int type = (Integer) session.getAttribute("sessionType");
            if (type == 1){
                request.getRequestDispatcher("/teacherHomePage.jsp").forward(request, response);
                if(request.getParameter("action") != null){
                    String link = request.getParameter("action");
                    if(link.equals("addYear"))
                    {
                        request.getRequestDispatcher("/year").forward(request, response);
                    }
                    else if(link.equals("addSubject"))
                    {
                        request.getRequestDispatcher("/subject").forward(request, response);
                    }
                    else if(link.equals("createUser"))
                    {
                        request.getRequestDispatcher("/user").forward(request, response);
                    }
                    else if(link.equals("documents"))
                    {
                        request.getRequestDispatcher("/document").forward(request, response);
                    }
                }
            }   
            else if (type == 2){
                request.setAttribute("sujets", subjectDao.getSubjectsByClient(
                        request.getSession().getAttribute("sessionUser").toString()));
                request.getRequestDispatcher("/customerHomePage.jsp").forward(request, response);
            }
            else if (type == 3)
                request.getRequestDispatcher("/studentHomePage.jsp").forward(request, response);
        }
        else
        {
            request.getRequestDispatcher("/connexion").forward(request, response);
            //doGet(request,response);
        }
        
        
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
