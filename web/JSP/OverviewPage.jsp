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
        <title>Stageplaatsen Overzicht</title>
        
        
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
                        <form name="ShowSearch" action="/Stageplaatsen/ShowSearch">
                            <button type="submit" value="Zoeken" id="searchButton" name="ShowSearchButton" class="btn btn-primary btn-lg">
                                Zoeken  <span class="glyphicon glyphicon-search"></span>
                            </button>
                        </form>
                    </P>
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
                    </p> -->	
		</div>
            </div>
            <hr>
        </div> 

        
        <!-- ===== BODY ===== -->

        
        <!-- PAGE TITEL -->
        
        <div id="pageTitle" class="container-fluid">
            <h2 class="text-center">Overzicht beschikbare stageplaatsen</h2>
            <br/>
            <br/>
	</div>

        
        <!-- TABLE AND FILTER CONTROL -->        
        
        <div class="container-fluid">
            <input class="form-control" id="myInput" type="text" placeholder="Tabel filteren..">
            <br>
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover"  >
                    <thead>
			<tr>
                            <th class="text-center">Titel</th>
                            <th class="text-center hidden-xs hidden-sm">Bedrijfsnaam</th>
                            <th class="text-center hidden-xs">Specialisatie</th>
                            <th class="text-center hidden-xs hidden-sm">Periode</th>
                            <th class="text-center hidden-xs hidden-sm">Aantal Plaatsen</th>
                            <th class="text-center">Meer Informatie</th>
			</tr>
                    </thead>
                    
                    <tbody id="myTable">
                        
                    <!-- Prepare data read from the database. -->    
                    
        <% 
            List<Stageplaats> lijstStageplaatsen = (List<Stageplaats>)session.getAttribute("stageplaatsen");
            
            for(Stageplaats sp : lijstStageplaatsen){
            String titel = sp.getTitel();
            String bedrijfsnaam = sp.getBedrijfID().getNaam();
            String specialisatie = sp.getSitueertID().getSpecialisatieID().getBeschrijving();
            String periode = sp.getPeriode();
            int plaatsen = sp.getAantalPlaatsen();
            int ID = sp.getId();
        %>
                        <tr> 
                            <td class="text-center"> <%= titel%> </td>
                            <td class="text-center hidden-xs hidden-sm"> <%= bedrijfsnaam%> </td>
                            <td class="text-center hidden-xs"> <%= specialisatie%> </td>
                            <td class="text-center hidden-xs hidden-sm"> <%= periode%> </td>
                            <td class="text-center hidden-xs hidden-sm"> <%= plaatsen%> </td>
                            <td class="text-center"> <a href="/Stageplaatsen/ShowDetail?ID=<%= ID %>" class="btn btn-info btn-block">Detail Pagina</a>  </td>
			</tr>
        <%
            }  
        %>    
                    </tbody>       
                </table>
            </div>
        </div>
          
        <script>
            
        <!-- TABLE FILTER CONTROL SCRIPT -->                    
        
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
        </script>
                    
    </body>
</html>
 