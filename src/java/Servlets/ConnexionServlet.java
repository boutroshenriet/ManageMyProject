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
import java.util.Hashtable;
import java.util.List;
import javax.ejb.EJB;
import javax.naming.Context;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
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

    //Adresse du serveur sur lequel se trouve l'annuaire LDAP
    String serverIP = "ldap.isep.fr";
    //Pourt du serveur sur lequel se trouve l'annuaire LDAP
    String serverPort = "389";
 
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
				String serverLogin = "uid=" + name + ", " + "ou=People, dc=isep.fr";
 

        try {
            //On remplit un tableau avec les paramètres d'environnement et de connexion au LDAP
            @SuppressWarnings("UseOfObsoleteCollectionType")
            Hashtable<String, String> environnement = new Hashtable<String, String>();
            environnement.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
            environnement.put(Context.PROVIDER_URL, "ldap://"+serverIP+":"+serverPort);
            environnement.put(Context.SECURITY_AUTHENTICATION, "simple");
            environnement.put(Context.SECURITY_PRINCIPAL, serverLogin);
            environnement.put(Context.SECURITY_CREDENTIALS, password);
            //On appelle le contexte à partir de l'environnement
            DirContext contexte = new InitialDirContext(environnement);
            //Si ça ne plante pas c'est que la connexion est faite
            System.out.println("Connexion au serveur : SUCCES");
            try {
                //On recupere l'attribut de DUPONT JEAN
                Attributes attrs = contexte.getAttributes(serverLogin);
                
                String emp = attrs.get("employeeType").toString().replaceAll("^(employeeType: )", "");
                String lastname = attrs.get("sn").toString().replaceAll("^(sn: )", "");
                String firstname = attrs.get("givenname").toString().replaceAll("^(givenName: )", "");
                
                System.out.println(emp);
                System.out.println(lastname);
                System.out.println(firstname);
                
 
            } catch (NamingException e) {
                System.out.println("Recuperation de "+ name + " : ECHEC");
                System.err.println(e.getMessage());
                e.printStackTrace();
            }
            
            
            List<User> usersList = userDao.getAllUsers();

            HttpSession session = null;
            session = request.getSession();
            for (User user : usersList) {
                if(user.getName().equals(name)){
                    if(user.getPassword().equals(password)){
                        /* Récupération de la session depuis la requête */

                        //Ajout de l'utilisateur dans la session
                        session.setAttribute("sessionUser", user.getId());
                        session.setAttribute("sessionType", user.getType());
                        session.setAttribute("user", user);
                    }
                }
                request.getRequestDispatcher("/HomePageServlet").forward(request, response);
            }
} catch (NamingException e) {
            System.out.println("Connexion au serveur : ECHEC");
            System.err.println(e.getMessage());
            e.printStackTrace();            else if(link.equals("deconnecter"))
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
        
        request.getRequestDispatcher("/HomePageServlet").forward(request, response);
    }
    
    public void initParamTable(){
        //Table paramètres
        parametresDao.persist(new Parametres("TeamSize", "6"));
    }
}
