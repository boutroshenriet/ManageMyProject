<%-- 
    Document   : studentMyProject
    Created on : 6 juin 2016, 10:22:39
    Author     : Domitilledubern
--%>
<%@page import="java.util.*,Entity.Subject"%>
<%@page import="java.util.*,Entity.Team"%>
<%@page import="java.util.*,Entity.User"%>
<%@page import="java.util.*,Entity.Feature"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="angular.js" type="text/javascript"></script>
        <script src="http://code.angularjs.org/angular-1.0.1.min.js"></script>
        <title>studentMyProject</title>
    </head>
    <body>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Sujet</title>
    </head>

    <body>
        
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search4.jsp" %>
        <%
            @SuppressWarnings("unchecked") 
            Subject sujet = (Subject)request.getAttribute("sujet");
            Team team = (Team)request.getAttribute("team");
        %>
        <h2><%= team.getAttribute() %></h2><br><br>
        <div class="alert alert-danger alert-dismissable fade in" style="width: 94%; margin-left: 30px">
            <h4><i class="icon icon-times-circle icon-lg"></i>
            <%= sujet.getNameSubject() %>
            </h4><br>
            <textarea name="textarea" rows="10" cols="160">
            <%= sujet.getDescription() %>
            </textarea>

            
        </div><br>
        
        
        
        <h3 style="margin-left: 50px">Trombinoscope: </h3> <br/>
        <% 
            for(User user : team.getUsers()){%>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="Images/avatar.png" alt="avatar"/>
                        <div class="caption">
                            <h4><% out.print(user.getName() + " " + user.getLastname()); %></h4>
                        </div>
                    </div>
                </div>
           <% }%>
           
        <h3 style="margin-left: 50px">Documents: </h3> <br/>
          
     <h5 style="margin-left: 30px">   Catégorie: <strong>Dépot du professeur</strong> &nbsp
     </h5><br/>
    <a style="margin-left: 30px" href="PDF/tpicha5.pdf"> Enoncé detaillé du sujet</a> 
    <script type="text/javascript"> 
        d = new Date();
      document.write(d.toLocaleDateString()); 
      document.write("</span></p>"); 
    </script>
    <a style="margin-left: 30px" href="PDF/tpicha5.pdf"> Planning soutenance </a><script type="text/javascript"> 
        d = new Date();
      document.write(d.toLocaleDateString()); 
      document.write("</span></p>"); 
    </script> <br/>
    <a style="margin-left: 30px" href="PDF/tpicha5.pdf"> Information sur votre client </a> <script type="text/javascript"> 
        d = new Date();
      document.write(d.toLocaleDateString()); 
      document.write("</span></p>"); 
    </script><br/>
    <h5 style="margin-left: 30px">   Catégorie: <strong>Dépot des élèves</strong> &nbsp
    <input type="submit" value="Déposer un fichier" id="boutton" /> </h5><br/>
    <a style="margin-left: 30px" href="PDF/tpicha5.pdf"> SFD</a> <br/>
    <a style="width: 94%; margin-left: 30px" href="#"> Compte rendu réunion1 </a> <br/>
    <a style="margin-left: 30px" href="PDF/tpicha5.pdf"> Blablabla</a> <br/><br/>
    <h5 style="margin-left: 30px"> Catégorie: <strong>Dépot du client</strong> &nbsp
    </h5><br/>
    <a style="margin-left: 30px" href="PDF/tpicha5.pdf"> Enoncé detaillé du sujet</a> <br/>
    <a style="margin-left: 30px" href="PDF/tpicha5.pdf"> Compte rendu 1ere réunion</a> <br/>
    <a style="margin-left: 30px" href="PDF/tpicha5.pdf"> Interview </a> <br/>
    </p>

    <%@include file="footer.jsp" %>

    </body>
</html>

