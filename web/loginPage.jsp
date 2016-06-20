<html>
    <head>
        <meta charset="UTF-8">
        <link href="Images/ManageLogo.png" rel="shortcut icon" >
        <title>Manage My Project</title>
        <link type="text/css" rel="stylesheet" href="Bootstrap/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="css/custom.css">
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <div class="container">

<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
        <img src="Images/logoISEP.png" alt="Project Icon" id="connectlogo">
        <form role="form" action="connexion?actionConnexion=connecter"  method="post">
            <fieldset>
                    <h2>Connexion</h2>
                    <hr class="colorgraph">
                    <div class="form-group" >
        <input type="text" name="username" id="email" class="form-control input-lg" placeholder="Identifiant">
                    </div>
                    <div class="form-group">
        <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Mot de passe">
                    </div>
<!--                    <span class="button-checkbox">
                            <button type="button" class="btn" data-color="info">Remember Me</button>
        <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
                            <a href="" class="btn btn-link pull-right">Forgot Password?</a>
                    </span>-->
                    <hr class="colorgraph">
                    <div class="row">
                            <div class="col-xs-offset-3 col-xs-6 col-sm-6 col-md-6">
            <input type="submit" class="btn btn-lg btn-success btn-block" value="Connexion">
                            </div>
<!--                            <div class="col-xs-6 col-sm-6 col-md-6">
                                    <a href="" class="btn btn-lg btn-primary btn-block">Register</a>
                            </div>-->
                    </div>
            </fieldset>
    </form>
	</div>
</div>

</div>
      
    </body>
    
</html>
