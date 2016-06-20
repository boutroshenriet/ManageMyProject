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
        <title>ManageMyProject</title>
    </head>
    <body>

        <%@include file="header.jsp" %>
        <br>
        <%@include file="search3.jsp" %>

        <form method="post" action="document?action=add" enctype="multipart/form-data">
            <br>
            <h3 style="margin-left: 30px">Télécharger un document disponible pour tous les élèves :</h3>
            <br>
            <center><table class="doctable">
                <tr>
                    <td class="tdc1">
                        <input id="white" type="file" name="file" size="50" />
                    </td>
                    <td class="tdc2">
                        <p>Nom du fichier à afficher :</p>
                    </td>
                    <td class="tdc3">
                        <div class="form-group">
                            <div class="input-group input-group-md icon-addon addon-md">
                                <input type="text" name="filename" size="50" id="schbox" class="form-control">
                                <span class="input-group-btn">
                                    <input type="submit" value="Valider" class="btn btn-primary"/>
                                </span>
                            </div>
                        </div>
                    </td>
                </tr>
                </table></center>
        </form>
        
        <h3 style="margin-left: 30px">Documents téléchargés :</h3>
            

        <ol class="docs"> <%
            @SuppressWarnings(  "unchecked")
            List<Document> docs = (List<Document>) request.getAttribute("documents");
            if (docs != null) {
                int i = 0;
                for (Document doc : docs) {
                    i++;%>
            <a class="doc" href="document?action=download&file=<% out.print(doc.getId().toString());%>">
                <li> <%= doc%> </li> 
            </a><%
                    }
                }%>
        </ol>
        <%@include file="footer.jsp" %>
    </body>
</html>
