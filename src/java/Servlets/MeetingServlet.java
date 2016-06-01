/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MeetingDAO;
import Entity.Meeting;
import java.text.SimpleDateFormat;

/**
 *
 * @author Guillaume
 */
@WebServlet(name = "MeetingServlet", urlPatterns = {"/MeetingServlet"})
public class MeetingServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    //Injected DAO EJB
    @EJB MeetingDAO MeetingDao;
    
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Display the list of guests:
       // request.setAttribute("meeting", meetingDao.getAllMettings());
        request.getRequestDispatcher("/customerTeamPage.jsp").forward(request, response);
    }
    

  

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       String comment = request.getParameter("dcomm");
       Date date = null;
       try {
            date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date"));
        } catch (Exception name) {
            
        }
        MeetingDao.persist(new Meeting(date, comment));
       
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
