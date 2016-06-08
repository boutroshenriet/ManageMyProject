<%@page import="java.util.*,Entity.Subject"%>
 <%@page import="java.util.*,Entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title></title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/i18n/defaults-*.min.js"></script>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="style.css" rel="stylesheet" type="text/css"/>
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
        
        <form method="POST" action="subject" style="margin-left: 30px">

            <p>Intitulé du sujet :</p><input type="text" class="form-control" id="exampleInputEmail1" name="name" /><br><br>
           <!-- Password: <input type="text" name="password" /> -->
           Client: <select name="client" class="selectpicker" data-live-search="true">
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
           <br><br>
            Description: <input type="text" name="description" />
            <input type="submit" value="Ajouter" class="btn btn-primary" />
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
