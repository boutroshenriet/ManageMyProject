package Servlets;
 
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Entity.Document;
import DAO.DocumentDAO;
import DAO.UserDAO;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import javax.servlet.annotation.MultipartConfig;

@WebServlet(name="DocumentServlet", urlPatterns={"/document"})
@MultipartConfig
public class DocumentServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
    // Injected DAO EJB:
    @EJB DocumentDAO documentDao;
    
    @EJB UserDAO userDao;
    
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Display the list of guests:
        String id = request.getSession().getAttribute("sessionUser").toString();
        String type = request.getSession().getAttribute("sessionType").toString();
        request.setAttribute("documents", 
                documentDao.getDocumentsByUserId(id, type));
        request.getRequestDispatcher("/document.jsp").forward(request, response);
        
        if(request.getParameter("action") != null){
            String link = request.getParameter("action");
            if(link.equals("download"))
            {
               String file = request.getParameter("file");
               Document doc = documentDao.getDocumentById(file).get(0);
               
               BufferedOutputStream sortie = new BufferedOutputStream( response.getOutputStream(), doc.getDoc().length );

               sortie.write( doc.getDoc(), 0, doc.getDoc().length );
            }
        }
    }
 
    //private string filePath
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("action") != null){
            String link = request.getParameter("action");
            if(link.equals("add"))
            {
                String fileName = request.getParameter("filename");
        
                InputStream inputStream = null; // input stream of the upload file

                // obtains the upload file part in this multipart request
                Part filePart = request.getPart("file");
                if (filePart != null) {
                    // obtains input stream of the upload file
                    inputStream = filePart.getInputStream();
                }
                ByteArrayOutputStream output = new ByteArrayOutputStream();
                int size = (int)filePart.getSize();
                byte[] file = new byte[size];
                for (int length = 0; (length = inputStream.read(file)) > 0;) 
                    output.write(file, 0, length);

                String name = request.getParameter("filename");

                if (name == null)
                    name = filePart.getName();
                
                String userId = request.getSession().getAttribute("sessionUser").toString();
                        
                documentDao.persist(new Document(name, file, userDao.getUserById(userId).get(0)));
            }
        }
        

        // Display the list of guests:
        doGet(request, response);
    }
}