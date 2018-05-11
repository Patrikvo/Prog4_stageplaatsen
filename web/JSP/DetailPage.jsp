<%-- 
    Document   : DetailPage
    Created on : 11-mei-2018, 23:27:38
    Author     : patrik
--%>

<%@page import="DAL.Stageplaats" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Detaik Pagina</h1>
        <% 
            Stageplaats stageplaats = (Stageplaats)session.getAttribute("stageplaats");
            
            String titel = stageplaats.getTitel();
            String bedrijfsnaam = stageplaats.getBedrijfID().getContactNaam();
            String specialisatie = stageplaats.getSitueertID().getSpecialisatieID().getBeschrijving();
            String periode = stageplaats.getPeriode();
            int plaatsen = stageplaats.getAantalPlaatsen();
            int ID = stageplaats.getId();
             // Titel, bedrijfsnaam, specialisatie, periode, interesse / plaatsen
             
            
        %>
        
        <%= titel%></BR>
        <%= bedrijfsnaam%></BR>
        <%= specialisatie%></BR>
        <%= periode%></BR>
        <%= plaatsen%></BR>
        
        
    </body>
</html>
