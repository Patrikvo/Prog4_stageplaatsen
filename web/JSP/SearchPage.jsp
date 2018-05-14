<%-- 
    Document   : SearchPage
    Created on : 12-mei-2018, 22:03:34
    Author     : patrik
--%>

 <%@page import="DAL.Bedrijf"%>
<%@page import="DAL.Stageplaats" %>
 <%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body>
        <form name="ShowOverview" action="/Stageplaatsen/ShowOverview">
            <input type="submit" value="Terug naar Overzicht" name="ShowOverviewButton" />
        </form>
        
        <h1>Stageplaats zoeken</h1>
        
        <form name="DoSearch" action="/Stageplaatsen/ShowSearch">
            Titel bevat: <input type="text" name="TitleSearch" value="" /><BR>
            Omschrijving bevat: <input type="text" name="OmschrijvingSearch" value="" /><BR>
            Bedrijfsnaam: <input type="text" name="BedrijfnaamSearch" value="" /><BR>
            Stad: <input type="text" name="StadSearch" value="" /><BR>
            <input type="submit" value="Zoeken" name="DoSearchButton" />
            <input type="reset" value="Leegmaken" name="ResetFormButton" />
        </form>
        
        <BR><BR>
        
        <% // "stageplaatsen" 
            %>
        <table style="width:100%">
            <tr>
                <th>Titel</th>
                <th>Bedrijfsnaam</th>
                <th>Stad</th>
                <th>Specialisatie</th>
                <th>Periode</th>
                <th>Aantal Plaatsen</th>
                <th>Meer Informatie</th>
                
            </tr>
        <% 
            List<Stageplaats> lijstStageplaatsen = (List<Stageplaats>)session.getAttribute("stageplaatsen");
            
            for(Stageplaats sp : lijstStageplaatsen){
            String titel = sp.getTitel();
            String bedrijfsnaam = sp.getBedrijfID().getNaam();
            String stad = sp.getBedrijfID().getAdresID().getStad();
            String specialisatie = sp.getSitueertID().getSpecialisatieID().getBeschrijving();
            String periode = sp.getPeriode();
            int plaatsen = sp.getAantalPlaatsen();
            int ID = sp.getId();
             // Titel, bedrijfsnaam, specialisatie, periode, interesse / plaatsen
             
            
        %>
            <tr> 
                <td> <%= titel%></a> </td>
                <td> <%= bedrijfsnaam%> </td>
                <td> <%= stad%> </td>
                <td> <%= specialisatie%> </td>
                <td> <%= periode%> </td>
                <td> <%= plaatsen%> </td>
                <td> <a href="/Stageplaatsen/ShowDetail?ID=<%= ID %>">Detail Pagina</a>  </td>
            </tr>
        <%
            }  
        %>    
        </table>
        
        
        
Stageplaats:

-- Titel
--Omschrijving
Aantal plaatsen
Periode
BEgeleiding
Extrakennis
voorzieningen
Aanmaakdatum
laatsewjzinging

Bedrijf:
--Naam
Contactnaam
contactEmail
Acitiviteiten
Aanwervend
Aanmaakdatum
laatsewjzinging
(adres)


situeert
Beschrijving

Specialisatie:
Beschrijving

Adres
Straat
nummer
stad
postcode
land
Aanmaakdatum
laatsewjzinging

        
        
    </body>
</html>
