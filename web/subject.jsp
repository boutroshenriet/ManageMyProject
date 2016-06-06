<%@page import="java.util.*,Entity.Subject"%>
 <%@page import="java.util.*,Entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title></title>
    </head>
  
    <body>
                <%@include file="header.jsp" %>
        <br>
        <%@include file="search3.jsp" %>
                    <% 
			if(request.getSession().getAttribute("year") != null)
			{
				String yearNumber23 = request.getSession().getAttribute("year").toString();
				out.println("Vous avez séléctionné l'année " + yearNumber23);
			}
			%>
        
        <form method="POST" action="subject">

            Name: <input type="text" name="name" />
           <!-- Password: <input type="text" name="password" /> -->
           Client: <select name="client">
            <%
             @SuppressWarnings("unchecked") 
             List<User> clients = (List<User>)request.getAttribute("clients");
             if (clients != null) {
                 for (User client : clients) { %>
                    <option value="<% out.print(client.getId().toString()); %>"> 
                            <%= client %>
                    </option> <%
                 }
             } %>
           </select>
            Description: <input type="text" name="description" />
            <input type="submit" value="Add" />
        </form>
 
        <hr><ol> <%
            @SuppressWarnings("unchecked") 
            List<Subject> subjects = (List<Subject>)request.getAttribute("subjects");
            if (subjects != null) {
                for (Subject subject : subjects) { %>
                    <li> <%= subject %> </li> <%
                }
            } %>
        </ol><hr>
     </body>
 </html>
