package Servlets;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.YearDAO;
import DAO.SubjectDAO;
import DAO.UserDAO;
import Entity.Subject;

@WebServlet(name = "SubjectServlet", urlPatterns = {"/subject"})
public class SubjectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Injected DAO EJB:
    @EJB SubjectDAO subjectDao;

    @EJB YearDAO yearDao;
    
    @EJB UserDAO userDao;
    
    @Override
    protected void doGet(
            HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
        
        //display list of subjects
        if(request.getSession().getAttribute("year") == null){
            //String yearmessage = ("Vous devez d'abord séléctionner une année pour accéder aux sujets correspondants");
            //request.setAttribute("yearmessage", yearmessage);
            request.getSession().setAttribute("redirect", "subject");
            request.getRequestDispatcher("/year").forward(request, response);
        }
            
        request.setAttribute("subjects", subjectDao.getAllSubjects());
        request.setAttribute("clients", userDao.getAllClients());
        request.getRequestDispatcher("/subject.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Handle a new subject:
        String subjectName = request.getParameter("name");
        String client = request.getParameter("client");
        String description = request.getParameter("description");
        String year = request.getSession().getAttribute("year").toString();
        String user = request.getSession().getAttribute("sessionUser").toString();
        
        if (subjectName != null)
            subjectDao.persist(new Subject(subjectName, userDao.getUserById(client).get(0), description
                    , yearDao.getYearById(year).get(0)
                    , userDao.getUserById(user).get(0)));
        
        doGet(request, response);
    }


}