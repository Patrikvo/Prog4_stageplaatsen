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
        <title>Stageplaatsen fout</title>
        
        
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
                        <form name="ShowOverview" action="/Stageplaatsen/ShowOverview">
                            <button type="submit" value="Terug naar Overzicht" id="searchButton" name="ShowOverviewButton" class="btn btn-primary btn-lg">
                                <span class="glyphicon glyphicon-triangle-left"></span> Terug naar Overzicht  
                            </button>
                        </form>
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
                    </p>			-->	
                </div>
            </div>
            <hr>
	</div>		


        <!-- ===== BODY ===== -->
        
        
        <!-- PAGE TITEL -->

	<div id="pageTitle" class="container-fluid">
            <h2 class="text-center">Something went wrong.</h2>
            <br/>
            <br/>
	</div>
        
        <!-- ERROR MESSAGE -->
        
        <%
            String errorMessage = (String)session.getAttribute("errorMessage");
        %>
        
        <div class="container-fluid">
            <p class="text-center">
                <b>Error Message:</b><br/><br/>
                <%= errorMessage %>
            </p>
		<br/><br/>
		<div class="text-center">
                    <form name="ShowOverview" action="/Stageplaatsen/ShowOverview">
                        <button type="submit" value="Terug naar Overzicht" id="searchButton" name="ShowOverviewButton" class="btn btn-primary btn-lg">
                            <span class="glyphicon glyphicon-triangle-left"></span> Terug naar Overzicht  
                        </button>
                    </form>
		</div>
	</div>
     
    </body>
</html>
