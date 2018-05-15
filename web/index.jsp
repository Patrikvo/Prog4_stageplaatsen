<%-- 
    Document   : index
    Created on : 14-mei-2018, 20:46:30
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
                <form name="ShowSearch" action="/Stageplaatsen/ShowSearch">
                    <input type="submit" value="Zoeken" id="searchButton" name="ShowSearchButton" />
                </form>
                <div id="logo">Stageplaatsen</div>
                <form name="ShowLogin" action="/Stageplaatsen/ShowLogin">
                    <input type="submit" value="Login" id="logingButton" name="ShowLoginButton" />
                </form>
            </nav>
            <hr>
        </div>

        <div id="indexBody">
            
            <form name="ShowOverview" action="/Stageplaatsen/ShowOverview">
                <input type="submit" value="Toon Overzicht" id= "logingButton" name="ShowOverviewButton" />
            </form>
        </div>
    </body>
</html>
