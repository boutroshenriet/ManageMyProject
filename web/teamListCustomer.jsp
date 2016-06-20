
<%@page import="java.util.*,Entity.Team"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/i18n/defaults-*.min.js"></script>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="style.css" rel="stylesheet" type="text/css"/>
       
    </head>
    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search2.jsp" %>
        <br>
        <h3 id="formarg">Equipes sur le sujet :</h3>
        <br>
        <%
        @SuppressWarnings("unchecked") 
        List<Team> teams = (List<Team>)request.getAttribute("teams");
        if (teams != null) {
            for (Team team : teams) { %>
            <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title"><a href="projectCustomer?teamSujet=<%= team.getId() %>_<%= request.getAttribute("sujet") %>"><%= team %></a></h3>
            </div>
            <div class="panel-body">
                <div class="searchButton">
                    <p>Année : <% 
                        if(team.getSubject() != null)
                            if(team.getSubject().getYear() != null)
                                out.print(team.getSubject().getYear().getYearNumber().toString()); %> </p>
                    <p>Sujet : <%
                        if(team.getSubject() != null)
                            out.print(team.getSubject().getNameSubject().toString());
                        %></p>
                    <p>Client : <%
                        if(team.getSubject() != null)
                            out.print(team.getSubject().getClient().toString());
                    %>
                    </p>
                </div>
                <p><a href="projectCustomer?teamSujet=<%= team.getId() %>_<%= request.getAttribute("sujet") %>" class="btn btn-primary" style="float: right">Accéder</a></p>
            </div>
        </div>
            <HR>
        <% }
        }%>
       
<%@include file="footer.jsp" %>
    </body>
</html>
