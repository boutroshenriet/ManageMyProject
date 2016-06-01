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
        <form method="post" action="document?action=add" enctype="multipart/form-data">
            Pick file #1: <input type="file" name="file" size="50" />
            File name: <input type="text" name="filename" size="50" />
            <input type="submit" value="Valider"/>
        </form>
        
        <hr><ol> <%
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
        </ol><hr>
    </body>
</html>
