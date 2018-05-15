<%-- 
    Document   : ErrorPage
    Created on : 11-mei-2018, 23:35:23
    Author     : patrik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/Style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="header">
            <nav class="buttonRow">
                <form name="ShowOverview" action="/Stageplaatsen/ShowOverview">
                    <input type="submit" value="Terug naar Overzicht" id="searchButton" name="ShowOverviewButton" />
                </form>
                <div id="logo">Stageplaatsen</div>
                <form name="ShowLogin" action="/Stageplaatsen/ShowLogin">
                    <input type="submit" value="Login" id="logingButton" name="ShowLoginButton" />
                </form>
            </nav>
            <hr>
        </div> 

        <h1>Something went wrong.</h1>
        <%
            String errorMessage = (String)session.getAttribute("errorMessage");
        
        
        %>
        
        <p>
            <B>Error Message:</B><BR>
            <%= errorMessage %>
        </p>
        
        <form name="ShowOverview" action="/Stageplaatsen/ShowOverview">
            <input type="submit" value="Terug naar overzicht" name="BackToOverviewButton" />
        </form>
    </body>
</html>
