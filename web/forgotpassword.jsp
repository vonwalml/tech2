<%-- 
    Document   : forgotpassword
    Created on : Nov 21, 2013, 12:37:25 PM
    Author     : Student_User
--%>

<%@page import="model.UserRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="UserRequest" class="model.UserRequest">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Recovery</title>
    </head>
    <body>
        <h1>Forgot Your Password?</h1>
        Just Answer your secret question!
        
        <%
            UserRequest rq = new UserRequest(); //need the username? to make this request
            out.println("<p>"+rq.requestQuestion()+"</p>");
        %>
        <form action="controller?action=secretanswer" method="post">
            Answer: <input type="text" name="answer">
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
</jsp:useBean>
