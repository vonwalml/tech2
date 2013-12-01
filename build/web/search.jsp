<%-- 
    Document   : search
    Created on : Nov 29, 2013, 1:43:55 PM
    Author     : Melissa
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="model.SearchRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="SearchRequest" class="model.SearchRequest">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
            SearchRequest sr = new SearchRequest();
            String searchterms = request.getParameter("searchterm");
            ArrayList<Product> result = sr.search(searchterms);
            
            if( result == null)
                out.println("<p>Sorry your search didn't return any products.</p>");
            
            for(Product p: result)
            {
                out.println("<li>"+p.getName()+"</li>");
                out.println("<li>"+p.getPrice()+"</li>");
                out.println("<li>"+p.getCategory()+"</li>");
                out.println("<li>"+p.getAvailable()+"</li>");
                out.println("<li>"+p.getPID()+"</li>");
            }
        %>    
            
        
    </body>
</html>
</jsp:useBean>
