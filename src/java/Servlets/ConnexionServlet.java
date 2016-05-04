/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DAO.UserDao;
import Entity.User;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "ConnexionServlet", urlPatterns = {"/ConnexionServlet"})
public class ConnexionServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

    // Injected DAO EJB:
    @EJB UserDao userDao;
 
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        // Display the list of guests:
        request.getRequestDispatcher("/loginPage.jsp").forward(request, response);
    }
 
    @Override
    protected void doPost(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        // Handle a new guest:
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        
        List<User> usersList = userDao.getAllUsers();
        
        HttpSession session = null;
        
        for (User user : usersList) {
            if(user.getName().equals(name)){
                if(user.getPassword().equals(password)){
                    /* Récupération de la session depuis la requête */
                    session = request.getSession();
                    //Ajout de l'utilisateur dans la session
                    session.setAttribute( "sessionUser", user.getId());
                    session.setAttribute( "sessionType", user.getType());
                    request.getRequestDispatcher("/HomePageServlet").forward(request, response);
                }
            }
        }

        doGet(request,response);
    }
}
