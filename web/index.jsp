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
        <title>Stageplaatsen</title>
        
        
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
<!--                    <p class="text-left">
                        <form name="ShowSearch" action="/Stageplaatsen/ShowSearch">
                            <button type="submit" value="Zoeken" id="searchButton" name="ShowSearchButton" class="btn btn-primary btn-lg">
                                Zoeken  <span class="glyphicon glyphicon-search"></span>
                            </button>
                        </form>
                    </p>    -->
                </div>
		
                <!-- CENTER LOGO -->
                
                <div id="logo" class="col-sm-6">
                    <p class="text-center">
                        <H1 class="text-center">Stageplaatsen</H1>
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
            <h2 
                class="text-center">Overzicht beschikbare stageplaatsen
            </h2>
            
            <br/>
            <br/>
        </div>
		
        <!-- ENTER BUTTON -->
        
        <div class="container-fluid">
            <a href="/Stageplaatsen/ShowOverview" class="btn btn-info btn-block">Toon Overzicht Stageplaatsen</a>
        </div>
    </body>
</html>
