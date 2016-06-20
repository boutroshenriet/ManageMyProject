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

import DAO.YearDAO;
import Entity.Year;
import javax.ejb.EJB;
import javax.servlet.http.HttpSession;



@WebServlet(name = "YearServlet", urlPatterns = {"/year"})
public class YearServlet extends HttpServlet {

    @EJB YearDAO yearDao;
    
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
        if(request.getParameter("actionYear") != null){
            String link = request.getParameter("actionYear");
            if(link.equals("addYear"))
            {
                Integer annee = Integer.parseInt(request.getParameter("year"));
                yearDao.persist(new Year(annee));
            }
            else if(link.equals("choose"))
            {
                HttpSession session = null;
                session = request.getSession();
                session.setAttribute("year", request.getParameter("yearList"));
            }
        }
        if(request.getSession().getAttribute("redirect") != null){
            //Renvoi vers la page si redirection
            String redirect = request.getSession().getAttribute("redirect").toString();
            request.getSession().removeAttribute("redirect");
            request.getRequestDispatcher("/" + redirect).forward(request, response);
        }
        // Display the list of guests:
        doGet(request, response);
    }

}
