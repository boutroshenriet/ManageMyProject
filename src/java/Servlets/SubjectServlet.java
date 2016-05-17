package Servlets;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SubjectDAO;
import Entity.Subject;

@WebServlet(name = "SubjectServlet", urlPatterns = {"/subject"})
public class SubjectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Injected DAO EJB:
    @EJB SubjectDAO subjectDao;

    @Override
    protected void doGet(
            HttpServletRequest request, HttpServletResponse response)
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