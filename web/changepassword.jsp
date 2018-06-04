<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ostore</title>

    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="custom.css" rel="stylesheet">
  </head>
  <body>
        
      <nav class="navbar navbar-default navbar-fixed-top">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle nav nav-pills" data-target=".navbar-collapse" data-toggle="collapse">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#"><img alt="brand" src="image/f-incapp-logo.png" style="height:20px;"/></a>
          </div>
          <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                  <li class="" ><a href="index.html"><span class="glyphicon glyphicon-home "></span> Home</a></li>
                  <li><a href="#"><span class="glyphicon glyphicon-earphone "></span> Contact</a></li>
                  <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span> About</a></li>
                  <li><a href="#">Projects</a></li>
              </ul>
              <ul class="nav navbar-nav navbar-right nav-pills" style="padding-right: 4px">
                  <li role="separator" class="active"><a href="LOGIN.jsp"><b>Login<span class="glyphicon glyphicon-triangle-bottom"></span></b></a></li>
                  <li><a href="SignUp.jsp"><b>Sign Up<span class="glyphicon glyphicon-triangle-right"></span></b></a></li>
              </ul>
          </div>
      </nav>
      <div class="container-fluid bg4">
      <div class="row">
          <div class="col-md-3 col-sm-4 col-xs-12"></div>
          <div class="col-md-6 col-sm-4 col-xs-12" style="padding-top: 60px">
              
            <form action="ChangePass.jsp" data-toggle="validator" class="form-horizontal form-container">
                <h1><center>Change Password</center></h1><br>
								<div class="form-group">
									<label for="oldpwd" class="col-lg-5 control-label">Old Password:</label>
									<div class="col-lg-4">
										<input type="password" name="op"class="form-control" style="width: 250px" id="oldpwd" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="newpwd" class="col-lg-5 control-label">New Password:</label>
                                                                        <div class="col-lg-4" >
										<input type="password" name="np" class="form-control" style="width: 250px" id="newpwd" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="confirmpwd" class="col-lg-5 control-label">Confirm Password:</label>
									<div class="col-lg-4">
										<input type="password" name="cp" style="width: 250px" class="form-control" id="confirmpwd" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-5">
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>
								</div><!--end form group-->
							</form>
              
						</div>
				</div>
                            </div>
          </div>
          <div style="margin-top: 0px">
      <footer>
		<div id="div0" class="container">
                    <div class="footer-navbar">
        <p class="pull-right"><a href="#">Back to top</a></p>
        
            <p>&copy; 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="t&c.html">Terms and Conditions</a>
                &nbsp;&nbsp;&nbsp; <a href=""><img class="circle" src="image/ico_fb.png" style="height: 50px; width: 50px"></a>
                
       <a href=""><img  class="circle" src="image/tw.png" style="height: 50px; width: 50px"></a>
       &nbsp;<a href=""><img class="circle" src="image/link.png" style="height: 50px; width: 50px"></a></p></div>
          </div>
      </footer>
          </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    
  </body>
</html>