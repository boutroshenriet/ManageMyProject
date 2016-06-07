/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DAO.ParametresDAO;
import DAO.UserDAO;
import Entity.Parametres;
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
@WebServlet(name = "ConnexionServlet", urlPatterns = {"/connexion"})
public class ConnexionServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

    // Injected DAO EJB:
    @EJB UserDAO userDao;
    
    @EJB ParametresDAO parametresDao;
 
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
        if(request.getParameter("actionConnexion") != null){
            String link = request.getParameter("actionConnexion");
            if(link.equals("connecter"))
            {
                String name = request.getParameter("username");
                String password = request.getParameter("password");

                List<User> usersList = userDao.getAllUsers();

                HttpSession session = null;
                session = request.getSession();
                for (User user : usersList) {
                    if(user.getName().equals(name)){
                        if(user.getPassword().equals(password)){
                            /* Récupération de la session depuis la requête */
                            if(parametresDao.getNbParam() == 0)
                                initParamTable();
                            //Ajout de l'utilisateur dans la session
                            session.setAttribute( "sessionUser", user.getId());
                            session.setAttribute( "sessionType", user.getType());
                            if(user.getType() == 3)
                                if(user.getTeam() != null)
                                    session.setAttribute( "sessionStudentTeam", user.getTeam().getId());
                            
                        }
                    }
                }
                request.getRequestDispatcher("/HomePageServlet").forward(request, response);
            }
            else if(link.equals("deconnecter"))
            {
                HttpSession session = request.getSession();
                session.removeAttribute( "sessionUser");
                session.removeAttribute( "sessionType");
                if(session.getAttribute("sessionStudentTeam") != null)
                    session.removeAttribute( "sessionStudentTeam");
                if(session.getAttribute("year") != null)
                    session.removeAttribute("year");
                request.getRequestDispatcher("/loginPage.jsp").forward(request, response);
            }
        }
    }
    
    public void initParamTable(){
        //Table paramètres
        parametresDao.persist(new Parametres("TeamSize", "6"));
    }
}
