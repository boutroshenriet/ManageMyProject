
<%@page import="java.util.*,Entity.Team"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search2.jsp" %>
        <%
        @SuppressWarnings("unchecked") 
        List<Team> teams = (List<Team>)request.getAttribute("teams");
        if (teams != null) {
            for (Team team : teams) { %>
            <a href="projectCustomer?teamSujet=<%= team.getId() %>_<%= request.getAttribute("sujet") %>"><%= team %></a><br/>
        <% }
        }%>
    </body>
</html>
