<%-- 
    Document   : DetailPage
    Created on : 11-mei-2018, 23:27:38
    Author     : patrik
--%>

<%@page import="java.util.Date" %>
<%@page import="DAL.Stageplaats" %>
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

        

        <div id="pageTitle">Detail Pagina</div>
        <% 
            Stageplaats stageplaats = (Stageplaats)session.getAttribute("stageplaats");
            
            String titel = stageplaats.getTitel();
            String omschrijving = stageplaats.getOmschrijving();
            int plaatsen = stageplaats.getAantalPlaatsen();
            String periode = stageplaats.getPeriode();
            String begeleiding = stageplaats.getBegeleiding();
            String extraKennis = stageplaats.getExtraKennisVereist();
            String Voorzieningen = stageplaats.getVoorzieningen();
            Date aanmaakdatum = stageplaats.getAanmaakDatum();
            Date laatsteWijzigingen = stageplaats.getLaatsteWijziging();
            
            String situeert = stageplaats.getSitueertID().getBeschrijving();
            String specialisatie = stageplaats.getSitueertID().getSpecialisatieID().getBeschrijving();
            
            
            
            
            String bedrijfsnaam = stageplaats.getBedrijfID().getNaam();
            String adres = stageplaats.getBedrijfID().getAdresID().getStraat() + " " +
                  stageplaats.getBedrijfID().getAdresID().getNummer() + " " +
                    stageplaats.getBedrijfID().getAdresID().getPostcode() + " " +
                    stageplaats.getBedrijfID().getAdresID().getStad() + " " +
                    stageplaats.getBedrijfID().getAdresID().getLand();
            String activiteiten = stageplaats.getBedrijfID().getActiviteiten();
            String aanwervend = stageplaats.getBedrijfID().getAanwervend();
            String contactNaam = stageplaats.getBedrijfID().getContactNaam();
            String contactEmail = stageplaats.getBedrijfID().getContactEmail();
            int ID = stageplaats.getId();
             // Titel, bedrijfsnaam, specialisatie, periode, interesse / plaatsen
             
            
        %>
        
        <div class = "detailPageSubTitle">Stageplaats</DIV>
        <table class = "detailPageTable">
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Titel:</td>
                <td class = "detailPageTableDataCell"><%= titel%></td>
            </tr>
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Omschrijving:</td>
                <td class = "detailPageTableDataCell"><%= omschrijving%></td>
            </tr>
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Aantal plaatsen:</td>
                <td class = "detailPageTableDataCell"><%= plaatsen%></td>
            </tr>
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Periode:</td>
                <td class = "detailPageTableDataCell"><%= periode%></td>
            </tr>
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Begeleiding:</td>
                <td class = "detailPageTableDataCell"><%= begeleiding%></td>
            </tr>
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Extra kennis vereist:</td>
                <td class = "detailPageTableDataCell"><%= extraKennis %></td>
            </tr>
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Voorzieningen:</td>
                <td class = "detailPageTableDataCell"><%= Voorzieningen %></td>
            </tr>
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Specialisatie:</td>
                <td class = "detailPageTableDataCell"><%= specialisatie %></td>
            </tr>
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Situeert zich in:</td>
                <td class = "detailPageTableDataCell"><%= situeert%></td>
            </tr>            
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Aangemaakt op:</td>
                <td class = "detailPageTableDataCell"><%= aanmaakdatum %></td>
            </tr>           
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Laatst gewijziged op:</td>
                <td class = "detailPageTableDataCell"><%= laatsteWijzigingen %></td>
            </tr>
        </table>

        
        <div class = "detailPageSubTitle">Bedrijf</div>
        
        <table class = "detailPageTable">
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Naam:</td>
                <td class = "detailPageTableDataCell"><%= bedrijfsnaam %></td>
            </tr>
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Adres:</td>
                <td class = "detailPageTableDataCell"><%= adres %></td>
            </tr>
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Actief in:</td>
                <td class = "detailPageTableDataCell"><%= activiteiten %></td>
            </tr>
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Wervend?:</td>
                <td class = "detailPageTableDataCell"><%= aanwervend %></td>
            </tr>
            <tr class = "detailPageTableRow">
                <td class = "detailPageTableTitleCell">Contact:</td>
                <td class = "detailPageTableDataCell"><%= contactNaam %> via <%= contactEmail %></td>
            </tr>
        </table>
    </body>
</html>
