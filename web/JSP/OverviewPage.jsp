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
        
        <div id="pageTitle">Overzicht beschikbare stageplaatsen</div>
        
        <table class="OverviewTable">
            <tr>
                <th class="overviewTableHeaderCell">Titel</th>
                <th class="overviewTableHeaderCell">Bedrijfsnaam</th>
                <th class="overviewTableHeaderCell">Specialisatie</th>
                <th class="overviewTableHeaderCell">Periode</th>
                <th class="overviewTableHeaderCell">Aantal Plaatsen</th>
                <th class="overviewTableHeaderCell">Meer Informatie</th>
                
            </tr>
        <% 
            List<Stageplaats> lijstStageplaatsen = (List<Stageplaats>)session.getAttribute("stageplaatsen");
            
            for(Stageplaats sp : lijstStageplaatsen){
            String titel = sp.getTitel();
            String bedrijfsnaam = sp.getBedrijfID().getNaam();
            String specialisatie = sp.getSitueertID().getSpecialisatieID().getBeschrijving();
            String periode = sp.getPeriode();
            int plaatsen = sp.getAantalPlaatsen();
            int ID = sp.getId();
             // Titel, bedrijfsnaam, specialisatie, periode, interesse / plaatsen
             
            
        %>
            <tr class="overviewTableDataRow"> 
                <td class="overviewTableCell"> <%= titel%></a> </td>
                <td class="overviewTableCell"> <%= bedrijfsnaam%> </td>
                <td class="overviewTableCell"> <%= specialisatie%> </td>
                <td class="overviewTableCell"> <%= periode%> </td>
                <td class="overviewTableCell"> <%= plaatsen%> </td>
                <td class="overviewTableCell"> <button onclick="location.href='/Stageplaatsen/ShowDetail?ID=<%= ID %>'" type="button">Detail Pagina</button>  </td>
            </tr>
        <%
            }  
        %>    
        </table>
    </body>
</html>
 