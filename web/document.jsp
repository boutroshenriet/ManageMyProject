<%@page import="java.util.*,Entity.Document"%>
<%-- 
    Document   : document.jsp
    Created on : 18 mai 2016, 11:24:34
    Author     : Pierre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search3.jsp" %>
        
        <form method="post" action="document?action=add" enctype="multipart/form-data">
            <br>
            <h3 style="margin-left: 30px">Télécharger un document disponible pour tous les élèves :</h3>
            Pick file #1: <input type="file" name="file" size="50" />
            Nom du fichier à afficher : 
            <div class="input-group input-group-md icon-addon addon-md">
                <input type="text" placeholder="Saisir le nom d'une équipe" name="" id="schbox" class="form-control">
                <span class="input-group-btn">
            <input type="text" name="filename" size="50" />
            <input type="submit" value="Valider" class="btn btn-primary"/>
                </span>
        </form>
        
        <ol> <%
            @SuppressWarnings("unchecked") 
            List<Document>docs = (List<Document>)request.getAttribute("documents");
            if (docs != null) {
                int i = 0;
                for (Document doc : docs) { 
                    i++;%>
                    <a href="document?action=download&file=<% out.print(doc.getId().toString()); %>">
                        <li> <%= doc %> </li> 
                    </a><%
                }
            } %>
        </ol>
    </body>
</html>
