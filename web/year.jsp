<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,Entity.Year"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>JPA Guest Book Web Application Tutorial</title>
    </head>
  
    <body>
        <form method="POST" action="year?action=add">
            Année: <input type="year" name="year" />
            <input type="submit" value="Add" />
        </form>
 
        <hr><ol>
           <form method="POST" action="year?action=choose">
                Années disponibles: 
                <select name="yearList">
            <%
           
            @SuppressWarnings("unchecked") 
            List<Year> years = (List<Year>)request.getAttribute("years");
            
             HttpSession sessionCurrent = null;
            sessionCurrent = request.getSession();
            String currentYear = null;
            if(sessionCurrent.getAttribute("year") != null)
                currentYear = sessionCurrent.getAttribute("year").toString();
            if (years != null) {
                for (Year year : years) { 
                    if(year.getId().toString().equals(currentYear)){
                    %> <option value="<% year.getId().toString(); %>" selected> 
                           <b> <%= year %> </b> 
                       </option> <%
                    }else{
                        %> <option value="<% year.getId().toString(); %>"> 
                           <b> <%= year %> </b> 
                        </option> <%
                    }
                }
            } %>
            </select>
           <input type="submit" value="Selectionner" />
            </form>
        </ol><hr>
     </body>
 </html>