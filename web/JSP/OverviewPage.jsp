<%-- 
    Document   : OverviewPage
    Created on : 9-mei-2018, 12:58:14
    Author     : TL55058
--%>

 <%@page import="DAL.Stageplaats" %>
 <%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <ul>
        <% 
            List<Stageplaats> lijstStageplaatsen = (List<Stageplaats>)session.getAttribute("stageplaatsen");
            
            for(Stageplaats sp : lijstStageplaatsen){
            String title = sp.getTitel();
        %>
            <li> <%= title%> </li>
        <%
            }  
        %>    
        </ul>
    </body>
</html>
