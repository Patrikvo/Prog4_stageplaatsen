<%-- 
    Document   : OverviewPage
    Created on : 9-mei-2018, 12:58:14
    Author     : TL55058
--%>

 <%@page import="DAL.Bedrijf"%>
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
        <table style="width:100%">
            <tr>
                <th>Titel</th>
                <th>Bedrijfsnaam</th>
                <th>Specialisatie</th>
                <th>Periode</th>
                <th>Aantal Plaatsen</th>
                <th>Meer Informatie</th>
                
            </tr>
        <% 
            List<Stageplaats> lijstStageplaatsen = (List<Stageplaats>)session.getAttribute("stageplaatsen");
            
            for(Stageplaats sp : lijstStageplaatsen){
            String titel = sp.getTitel();
            String bedrijfsnaam = sp.getBedrijfID().getContactNaam();
            String specialisatie = sp.getSitueertID().getSpecialisatieID().getBeschrijving();
            String periode = sp.getPeriode();
            int plaatsen = sp.getAantalPlaatsen();
            int ID = sp.getId();
             // Titel, bedrijfsnaam, specialisatie, periode, interesse / plaatsen
             
            
        %>
            <tr> 
                <td> <%= titel%></a> </td>
                <td> <%= bedrijfsnaam%> </td>
                <td> <%= specialisatie%> </td>
                <td> <%= periode%> </td>
                <td> <%= plaatsen%> </td>
                <td> <a href="/Stageplaatsen/ShowDetail?ID=<%= ID %>">Detail Pagina</a>  </td>
            </tr>
        <%
            }  
        %>    
        </table>
    </body>
</html>
