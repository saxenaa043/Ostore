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
                  <li role="separator" class="active"><a href="LOGIN.jsp"><b>Login<span class="glyphicon glyphicon-triangle-bottom"></span></b></a></li>
                  <li><a href="SignUp.jsp"><b>Sign Up<span class="glyphicon glyphicon-triangle-right"></span></b></a></li>
              </ul>
          </div>
      </nav>
      <div class="container bg">
          <%
                    String m=(String)session.getAttribute("msg1");
                    if(m!=null){
                    %>
                    <div class="panel" style="margin-top: 80px">
                            <div class="panel-body bg-warning text-center">
                                <%=m%>
                            </div>
                        </div>
                    <%   
                        session.setAttribute("msg1",null);
                    }
                    %>
      <div class="row">
          <div class="col-md-3 col-sm-4 col-xs-12"></div>
          <div class="col-md-6 col-sm-4 col-xs-12" style="padding-top: 45px">
            <form action="LoginPro.jsp" data-toggle="validator" class="form-horizontal form-container">
                <h1 ><center>Login Form</center></h1><hr>
                                                                            <div class="form-group">
                                                                                    <label for="email" class="col-lg-3 control-label">Email:</label>
                                                                                    <div class="col-lg-9">
                                                                                            <input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required />
                                                                                    </div>
                                                                            </div><!--end form group-->
                                                                            <div class="form-group">
                                                                                    <label for="password" class="col-lg-3 control-label">Password:</label>
                                                                                    <div class="col-lg-9">
                                                                                            <input type="password" name="password" class="form-control" id="pass" placeholder="Enter your password" required/>
                                                                                    </div>
                                                                            </div><!--end form group-->
                                                                            <div class="form-group">
                                                                                    <div class="col-lg-10 col-lg-offset-3">
                                                                                            <button type="submit" class="btn btn-primary">Login</button>
                                                                                            <button type="reset" class="btn btn-primary">Reset</button>
                                                                                    </div>
                                                                            </div>
                                                                            <div class="form-group" style="">
                                                                                    <div class="col-lg-10 col-lg-offset-3 footer-navbar">
                                                                                            <a href="forgetpassword.jsp">Forget Password?</a>
                                                                                    </div>
                                                                            </div>
                                                                    </form>
              
						</div>
				</div>
                           
          
          <div style="margin-top: 66px"; class="row">
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('#imageCarousel').carousel();
        });
    </script>
  </body>
</html>