package Servlets;
 
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DocumentDAO;
import Entity.Document;

@WebServlet(name="DocumentServlet", urlPatterns={"/document"})
public class DocumentServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
    // Injected DAO EJB:
    @EJB DocumentDAO documentDao;
    
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Display the list of guests:
        //request.setAttribute("documents", documentDao.getAllDocuments());
        request.getRequestDispatcher("/document.jsp").forward(request, response);
    }
 
    //private string filePath
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*if(!ServletFileUpload.isMultipartContent(request)){
            throw new ServletException("Content type is not multipart/form-data");
        }*/
        // Handle a new guest:
        String name = request.getParameter("filename");
        byte[] file = null;
        
        if (name != null)
            documentDao.persist(new Document(name, file));

        // Display the list of guests:
        doGet(request, response);
    }
}