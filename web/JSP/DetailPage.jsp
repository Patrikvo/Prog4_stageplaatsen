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
        <title>Stageplaatsen details</title>
        
        
        <!-- ===== BOOTSTRAP ===== -->
        
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 		
    	
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
    </head>
    
    
    <body>
       
        
       <!-- ===== HEADER ===== -->
       
       
       <div class="container-fluid" >
            <div class="row" >
                    
                <!-- LEFT BUTTON -->
                    
                <div class="col-sm-3">
                    <p class="text-left">
                        <button type="button" name="back" class="btn btn-primary btn-lg" onclick="history.back()"><span class="glyphicon glyphicon-triangle-left"></span> Terugkeren</button>
                    </p>
                </div>
                
                <!-- CENTER LOGO -->
			
                <div id="logo" class="col-sm-6">
                    <p class="text-center">
                        <h1 class="text-center">Stageplaatsen</h1>
                    </p>
                </div>
		
                <!-- RIGHT BUTTON -->
                
                <div class="col-sm-3 text-right">
<!--                <p class="text-right">
                        <form name="ShowLogin" action="/Stageplaatsen/ShowLogin">
                            <button type="submit" value="Log in" id="logingButton" name="ShowLoginButton" class="btn btn-primary">
                                Log in <span class="glyphicon glyphicon-user"></span>
                            </button>
                        </form>	  
                    </P>			-->	
                </div>
            </div>
            <hr>
	</div>	

        
        <!-- ===== BODY ===== -->
        
        
        <!-- PAGE TITEL -->
        
        <div id="pageTitle" class="container-fluid">
		<h2 class="text-center">Detail Pagina</h2>
		<br/>
		<br/>
	</div>
        
                
        <!-- Prepare data read from the database. -->        
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
            String adres =  stageplaats.getBedrijfID().getStraat() + " " +
                            stageplaats.getBedrijfID().getNummer() + " " +
                            stageplaats.getBedrijfID().getPostcode() + " " +
                            stageplaats.getBedrijfID().getStad() + " " +
                            stageplaats.getBedrijfID().getLand();
            String activiteiten = stageplaats.getBedrijfID().getActiviteiten();
            String aanwervend = stageplaats.getBedrijfID().getAanwervend();
            String contactNaam = stageplaats.getBedrijfID().getContactNaam();
            String contactEmail = stageplaats.getBedrijfID().getContactEmail();
        /*    int ID = stageplaats.getId(); */
        %>
        
        <!-- CONTENT TABLE -->
        
        <div class="container-fluid">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover"  >
                    <thead>
                        <tr> 
                            <th class="text-center" colspan="2">Stageplaats</th>
                        </tr>
                        <tr>
                            <th class="text-left" colspan="2"><%= titel%></th>
						
                        </tr>
                    </thead>
                    <tbody id="myTable">
                        <tr>
                            <th class="text-left" width="20%">Omschrijving</th>
                            <td class="text-left" width="80%"><%= omschrijving%></td>
                        </tr>
                        <tr>
                            <th class="text-left" width="20%">Aantal plaatsen</th>
                            <td class="text-left" width="80%"><%= plaatsen%></td>
                        </tr>
                        <tr>
                            <th class="text-left" width="20%">Periode</th>
                            <td class="text-left" width="80%"><%= periode%></td>
                        </tr>
                        <tr>
                            <th class="text-left" width="20%">Begeleiding</th>
                            <td class="text-left" width="80%"><%= begeleiding%></td>
                        </tr>
                        <tr>
                            <th class="text-left" width="20%">Extra kennis vereist</th>
                            <td class="text-left" width="80%"><%= extraKennis %></td>
                        </tr>
                        <tr>
                            <th class="text-left" width="20%">Voorzieningen</th>
                            <td class="text-left" width="80%"><%= Voorzieningen %></td>
                        </tr>
                        <tr>
                            <th class="text-left" width="20%">Specialisatie</th>
                            <td class="text-left" width="80%"><%= specialisatie %></td>
                        </tr>
                        <tr>
                            <th class="text-left" width="20%">Situeert zich in</th>
                            <td class="text-left" width="80%"><%= situeert%></td>
                        </tr>

                        <tr>
                            <th colspan="2"></th>
                        </tr>
				
                        <tr class="text-left">
                            <th class="text-left" colspan="2">Bedrijf<th>
                        </tr>
                        <tr>
                            <th class="text-left" width="20%">Naam</th>
                            <td class="text-left" width="80%"><%= bedrijfsnaam %></td>
                        </tr>
                        <tr>
                            <th class="text-left" width="20%">Adres</th>
                            <td class="text-left" width="80%"><%= adres %></td>
                        </tr>
                        <tr>
                            <th class="text-left" width="20%">Actief in</th>
                            <td class="text-left" width="80%"><%= activiteiten %></td>
                        </tr>
                        <tr>
                            <th class="text-left" width="20%">Wervend?</th>
                            <td class="text-left" width="80%"><%= aanwervend %></td>
                        </tr>
                        <tr>
                            <th class="text-left" width="20%">Contact</th>
                            <td class="text-left" width="80%"><%= contactNaam %> via <a href="#"><%= contactEmail %></a></td>
                        </tr>

                        <tr>
                            <td class="text-right" colspan="2">Aangemaakt op <%= aanmaakdatum %>, laatst gewijziged op <%= laatsteWijzigingen %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
	</div>
                        
    </body>
</html>
