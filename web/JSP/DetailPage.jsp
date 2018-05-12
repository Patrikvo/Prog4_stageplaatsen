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
        <title>JSP Page</title>
    </head>
    <body>
        <form name="ShowOverview" action="/Stageplaatsen/ShowOverview">
            <input type="submit" value="Terug naar Overzicht" name="ShowOverviewButton" />
        </form>
        <h1>Detail Pagina</h1>
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
            
            
            
            
            String bedrijfsnaam = stageplaats.getBedrijfID().getContactNaam();
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
        
        <H2>Stageplaats</H2>
        <ul>
            <li><B>Titel: <%= titel%> </B></li>
            <li>Omschrijving: <%= omschrijving%> </li>
            <li>Aantal plaatsen: <%= plaatsen%> </li>
            <li>Periode: <%= periode%> </li>
            <li>Begeleiding: <%= begeleiding%> </li>
            <li>Extra kennis vereist: <%= extraKennis %> </li>
            <li>Voorzieningen: <%= Voorzieningen %> </li>
            <li>Specialisatie: <%= specialisatie %> </li>
            <li>Situeert zich in: <%= situeert %></li>
            <li>Aangemaakt op <%= aanmaakdatum %> </li>
            <li>Laatst gewijziged op <%= laatsteWijzigingen %></li>
        </ul>
        
        <H2>Bedrijf</H2>
        <ul>
            <li>Naam: <%= bedrijfsnaam %></li>
            <li>Adres: <%= adres %></li>
            <li>Actief in: <%= activiteiten %> </li>
            <li>Wervend?: <%= aanwervend %> </li>
            <li>Contact: <%= contactNaam %> via <%= contactEmail %> </li>
        </ul>
    
        
    </body>
</html>
