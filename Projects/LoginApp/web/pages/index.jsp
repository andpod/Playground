
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>Login Page</title>

    <!-- Bootstrap core CSS -->
    <link href="/pages/libs/js/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/pages/libs/canvas/offcanvas.css" rel="stylesheet">

	
	
  </head>

  <body>
    <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>

        </div>
      </div><!-- /.container -->
    </div><!-- /.navbar -->
	


    <div class="container">

      <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron">
            <h1>Login Page</h1>
          </div>
          <div class="row">
            <div class="col-6 col-sm-6 col-lg-4">
              <h2>Titlu 1</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
            </div><!--/span-->
            <div class="col-6 col-sm-6 col-lg-4">
              <h2>Titlu 2</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
            </div><!--/span-->
            <div class="col-6 col-sm-6 col-lg-4">
              <h2>Titlu 3</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
            </div><!--/span-->
            <div class="col-6 col-sm-6 col-lg-4">
              <h2>Titlu 4</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
            </div><!--/span-->
            <div class="col-6 col-sm-6 col-lg-4">
              <h2>Titlu 5</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
            </div><!--/span-->
            <div class="col-6 col-sm-6 col-lg-4">
              <h2>Titlu 6</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
            </div><!--/span-->
          </div><!--/row-->
        </div><!--/span-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
           <div id="loginbox" style="margin-top:5px;" class="right" >                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                    </div>     

                    <div style="padding-top:20px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form action="Servlet1" method="post" id="loginform" class="form-horizontal" role="form">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="username" required="true">
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="login-password" type="password" class="form-control" name="password" placeholder="password" required="true">
                                    </div>
                                    


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-1 controls">
                                      <input type="submit" id="btn-login" class="btn btn-info"></input>

                                    </div>
                                </div>
								
								 <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                           <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Create an account!
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                        </form>     



                    </div>                     
             </div>  
        </div>
		     <div id="signupbox" style="display:none; margin-top:5px" class="right">
                 <div class="panel panel-info">
                     <div class="panel-heading">
                         <div class="panel-title">Sign Up</div>
                         <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
                     </div>  
                     <div class="panel-body" >
                         <form action="InsertServlet" method="post" id="signupform" class="form-horizontal" role="form">
                             
                             <div id="signupalert" style="display:none" class="alert alert-danger">
                                 <p>Error:</p>
                                 <span></span>
                             </div>
                                 
                             <div class="form-group">
                                 <div class="col-md-12">
                                     <input type="text" class="form-control" name="firstname" placeholder="First Name" required="true">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <div class="col-md-12">
                                     <input type="text" class="form-control" name="lastname" placeholder="Last Name" required="true">
                                 </div>
                             </div>
							 <div class="form-group">
                                 <div class="col-md-12">
                                     <input type="text" class="form-control" name="email" placeholder="Email" required="true">
                                 </div>
                             </div>
							<div class="form-group">
                                 <div class="col-md-12">
                                     <input type="text" class="form-control" name="user" placeholder="Username" required="true">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <div class="col-md-12">
                                     <input type="password" class="form-control" name="passwd" placeholder="Password" required="true">
                                 </div>
                             </div>
							 
                                 
                            

                             <div class="form-group">
                                 <!-- Button -->                                        
                                 <div class="col-md-offset-3 col-md-9">
                                     <input id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i></input>
                                 </div>
                             </div>             
                         </form>
                      </div>
                 </div>

               
               
                
         </div> 
        </div><!--/span-->
      </div><!--/row-->

      <hr>

      
    </div><!--/.container-->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="/pages/libs/js/bootstrap/dist/jsbootstrap.min.js"></script>
    <script src="/pages/libs/canvas/offcanvas.js"></script>
  </body>
</html>

