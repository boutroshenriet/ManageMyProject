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
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
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
        
        if(request.getParameter("actionDoc") != null){
            String link = request.getParameter("actionDoc");
            if(link.equals("download"))
            {
                String file = request.getParameter("file");

                Document doc = documentDao.getDocumentById(file).get(0);
                OutputStream out = response.getOutputStream();
                response.setHeader("Content-Disposition", "attachment;filename=" + doc.getFileName());
                response.setContentType(doc.getContentType());
                response.setContentLength(doc.getDoc().length);
               /* InputStream inputStream = new ByteArrayInputStream(doc.getDoc());
                int fileLength = inputStream.available();
                 
                System.out.println("fileLength = " + fileLength);          
                 
                // set content properties and header attributes for the response
                response.setContentType(doc.getContentType());
                response.setContentLength(fileLength);
                String headerKey = "Content-Disposition";
                String headerValue = String.format("attachment; filename=\"%s\"", doc.getFileName());
                response.setHeader(headerKey, headerValue);
 
                // writes the file to the client
                OutputStream outStream = response.getOutputStream();
                 
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                 
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outStream.write(buffer, 0, bytesRead);
                }
                 
                inputStream.close();
                outStream.close(); */
            }
        }
    }
 
    //private string filePath
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("actionDoc") != null){
            String link = request.getParameter("actionDoc");
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
                String contentType = filePart.getContentType();
                byte[] file = new byte[size];
                for (int length = 0; (length = inputStream.read(file)) > 0;) 
                    output.write(file, 0, length);

                String name = request.getParameter("filename");

                if (name == null)
                    name = filePart.getName();
                
                String userId = request.getSession().getAttribute("sessionUser").toString();
                        
                documentDao.persist(new Document(name, file, userDao.getUserById(userId).get(0), contentType));
            }
        }
        

        // Display the list of guests:
        doGet(request, response);
    }
}