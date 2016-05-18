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
        <form method="post" action="document" enctype="multipart/form-data">
            Pick file #1: <input type="file" name="file" size="50" />
            File name: <input type="text" name="filename" size="50" />
        </form>
    </body>
</html>
