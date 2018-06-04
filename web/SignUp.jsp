
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Ostore</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="custom.css" rel="stylesheet">
    <link href="datetimepicker/css/datetimepicker.min.css" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
                  <li role="separator" ><a href="LOGIN.jsp"><b>Login<span class="glyphicon glyphicon-triangle-right"></span></b></a></li>
                  <li class="active"><a href="SignUp.jsp"><b>Sign Up<span class="glyphicon glyphicon-triangle-bottom"></span></b></a></li>
              </ul>
          </div>
      </nav>
      <div class="container-fluid bg1 img-responsive">
          <%
                    String m=(String)session.getAttribute("msg");
                    if(m!=null){
                    %>
                    <div class="panel" style="margin-top: 80px">
                            <div class="panel-body bg-warning text-center">
                                <%=m%>
                            </div>
                        </div>
                    <%   
                        session.setAttribute("msg",null);
                    }
                    %>
                    <div class="row" style="margin-top: 30px">
          <div class="col-md-3 col-sm-4 col-xs-12"></div>
          <div class="col-md-6 col-sm-4 col-xs-12" >
 <form action="register" method='post' data-toggle="validator" enctype='multipart/form-data'  class="form-horizontal form-container">
     <h1 style="margin-top: -20px"><center>Registration Form</center></h1><hr>
								<div class="form-group">
									<label for="email" class="col-lg-3 control-label">Email:</label>
									<div class="col-lg-9">
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="name" class="col-lg-3 control-label">Name:</label>
									<div class="col-lg-9">
										<input type="text" name="name" class="form-control" pattern="^[_A-Z a-z]{1,}$" id="name" placeholder="Enter your name" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="phone" class="col-lg-3 control-label">Phone:</label>
									<div class="col-lg-9">
										<input type="text" name='phone' class="form-control" pattern="^[_0-9]{1,}$" maxlength="10" minlength="10" id="phone" placeholder="Enter your phone" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="gender" class="col-lg-3 control-label">Gender:</label>
									<div class="col-lg-9">
										<input type="radio" id="gender"name="gender" value="Male" checked/>Male
										<input type="radio" id="gender"name="gender" value="Female"/>Female
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="dob" class="col-lg-3 control-label">Date of Birth:</label>
									<div class="col-lg-9">
										<input type="text" name="dob" class="form-control" id="dob" placeholder="dd/MM/YYYY" required />
									
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="state" class="col-lg-3 control-label">State:</label>
									<div class="col-lg-9">
										<select name="state" class="form-control" id="listBox" onchange='selct_district(this.value)'>
										</select>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="city" class="col-lg-3 control-label">City:</label>
									<div class="col-lg-9">
										<select name="city" class="form-control" id='secondlist'>	
										</select>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="area" class="col-lg-3 control-label">Area:</label>
									<div class="col-lg-9">
										
										<input type="text" name="area" class="form-control" id="area" placeholder="Enter your Area" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="photo" class="col-lg-3 control-label">Photo:</label>
									<div class="col-lg-9">
										<input type="file" name="photo" class="form-control" id="photo" />
										
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="pass" class="col-lg-3 control-label">Password:</label>
									<div class="col-lg-9">
										<input type="password" name="password" class="form-control" id="pass" placeholder="Enter your password" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-3">
										<input type="submit" class="btn btn-primary" value='Register'/>
									</div>
								</div>
							</form>
          
              
						</div>
				</div>
                            
          
      <div style="margin-top: 30px" class="row">
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
          </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/script.js"></script>
    <script type="text/javascript" src="bootstrap/js/jquery-2.2.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/validator.js"></script>
    <script type="text/javascript" src="bootstrap/js/state.js"></script>
    <script type="text/javascript" src="datetimepicker/js/moment.min.js"></script>
    <script type="text/javascript" src="datetimepicker/js/datetimepicker.min.js"></script>
    <script type="text/javascript">
    $(function () {
        $('#dob').datetimepicker({
        	format: 'DD/MM/YYYY',
                maxDate: new Date()
        });
    });
	</script>
  </body>
</html>