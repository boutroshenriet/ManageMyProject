<%-- 
    Document   : customerHomePage
    Created on : 3 mai 2016, 14:41:21
    Author     : camille
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,Entity.Subject"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="angular.js" type="text/javascript"></script>
        <script src="http://code.angularjs.org/angular-1.0.1.min.js"></script>
        <title>Page d'accueil Client</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search2.jsp" %>
        <h1>2016</h1>
        <HR>
        <%
            @SuppressWarnings("unchecked") 
            List<Subject> sujets = (List<Subject>)request.getAttribute("sujets");
            if (sujets != null) {
                for (Subject sujet : sujets) { %>
                    <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title"> <%= sujet.getNameSubject() %></h3>
                    </div>
                    <div class="panel-body"><%= sujet.getDescription()%></div>
                    <p><a href="team?subject=<%= sujet.getId() %>" class="btn btn-primary">Accéder</a></p>
                    </div>
            <%}
            }%>
    </body>
</html>
