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
                String pseudo = request.getParameter("username"); //A1
                String password = request.getParameter("password"); //A2
                String serverLogin = "uid=" + pseudo + ", " + "ou=People, dc=isep.fr";
                
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
                        //On recupere l'attribut de l'utilisateur
                        Attributes attrs = contexte.getAttributes(serverLogin);

                        String emp = attrs.get("employeeType").toString().replaceAll("^(employeeType: )", "");
                        String lastname = attrs.get("sn").toString().replaceAll("^(sn: )", "");
                        String firstname = attrs.get("givenname").toString().replaceAll("^(givenName: )", "");

                        System.out.println(emp);
                        System.out.println(lastname);
                        System.out.println(firstname);
                        // A1 == B1
                        // A2 == B2
                        
                    } catch (NamingException e) {
                        System.out.println("Recuperation de "+ pseudo + " : ECHEC");
                        System.err.println(e.getMessage());
                        e.printStackTrace();
                    }
                    
                    int userType;
                    Attributes attrs = contexte.getAttributes(serverLogin);
                    String emp = attrs.get("employeeType").toString().replaceAll("^(employeeType: )", "");
                    String lastname = attrs.get("sn").toString().replaceAll("^(sn: )", "");
                    String firstname = attrs.get("givenname").toString().replaceAll("^(givenName: )", "");
                    if(emp.equals("eleve")) {
                        userType = 3;
                    }
                    else {
                        userType = 1;
                    }
                        
     
                    List<User> usersList = userDao.getAllUsers();

                    HttpSession session = null;
                    session = request.getSession();
                    boolean userExists = false;
                    for (User user : usersList) {
                        if(user.getPseudo().equals(pseudo)){ //C1 == A1 ?
                            //if(user.getPassword().equals(password)){ //C2 == A2 ?
                                /* Récupération de la session depuis la requête */
                                if(parametresDao.getNbParam() == 0)
                                    initParamTable();
                                //Ajout de l'utilisateur dans la session
                                session.setAttribute("sessionUser", user.getId());
                                session.setAttribute("sessionType", user.getType());
                                session.setAttribute("currentUser", user);
                                userExists = true;
                            //}
                        }
                    }
                    if(userExists == false)
                    {
                        User newUser = new User(pseudo, lastname, firstname, userType);
                        userDao.persist(newUser);
                        session.setAttribute("sessionUser", newUser.getId());
                        session.setAttribute("sessionType", newUser.getType());
                        session.setAttribute("currentUser", newUser);
                    }
                    request.getRequestDispatcher("/HomePageServlet").forward(request, response);        
                    //request.getRequestDispatcher("/user.jsp").forward(request, response);
                } catch (NamingException e) {
                    System.out.println("Connexion au serveur : ECHEC DE L'IDENTIFICATION LDAP");
                    System.out.println("Identification sans LDAP");
                    System.err.println(e.getMessage());
                    
                    List<User> usersList = userDao.getAllUsers();

                    HttpSession session = null;
                    session = request.getSession();
                    for (User user : usersList) {
                        if(user.getPseudo().equals(pseudo)){
                            if(user.getPassword().equals(password)){
                                /* Récupération de la session depuis la requête */
                                if(parametresDao.getNbParam() == 0)
                                    initParamTable();
                                //Ajout de l'utilisateur dans la session
                                session.setAttribute("sessionUser", user.getId());
                                session.setAttribute("sessionType", user.getType());
                                session.setAttribute("currentUser", user);
                            }
                        }
                    }
                    request.getRequestDispatcher("/HomePageServlet").forward(request, response);
                    
                    e.printStackTrace();
                } 
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
