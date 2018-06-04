<%@page import="java.util.HashMap"%>
<%
    HashMap h=(HashMap)session.getAttribute("UserDetails");
    if(h!=null){
        
    
%>
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
    <script type="text/JavaScript" src='bootstrap/js/state.js'></script>
    
  </head>
  <body class="bg2">
        
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
                  <li><a href="peoplesearch.jsp"><span class="glyphicon glyphicon-search"></span> Search People</a></li>
              </ul>
              <ul class="nav navbar-nav navbar-right nav-pills" style="padding-right: 4px">
                  <li><div class="navbar-text"><p><b>Welcome:</b> <%= h.get("name")%></p></div></li>
                  <li><a href="index.html">Home</a></li>
                  <li><a href="Logout.jsp">Logout</a><li>
              </ul>
          </div>
      </nav>
                  <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12">
        <div class="col-lg-12">
            <img src="GetPhoto?email=<%=(String)h.get("email")%>" height="200" width="200" >
        </div>
         </div>
        </div>
                      <hr>
        <div class="col-md-4 f1">
            <form action="" class="form-horizontal">
                <div class="col-lg-10 form-group " >
                                        <label for="email" class="control-label">Name: <font color="grey"><%= h.get("name")%></font></label>
                                </div><!--end form group-->
                                <div class="col-lg-12 form-group">
                                        <label for="phone" class="control-label">Phone: <font color="grey"><%= h.get("phone")%></font></label>
                                </div><!--end form group-->
                                <div class="col-lg-12 form-group">
                                        <label for="name" class="control-label">Email:<font color="grey"> <%= h.get("email")%></font></label>
                                </div><!--end form group-->
                                <div class="col-lg-12 form-group">
                                        <label for="gender" class="control-label">Gender: <font color="grey"><%= h.get("gender")%></font></label>
                                </div><!--end form group-->
                                <div class="col-lg-12 form-group">
                                        <label for="dob" class="control-label">Date of Birth: <font color="grey"><%= h.get("dob")%></font></label>
                                </div>
                                <!--end form group-->
                                <div class="col-lg-12 form-group">
                                        <label for="state" class="control-label">Address: <font color="grey"><%= h.get("area")%>,<%= h.get("city")%>,<%= h.get("state")%></font></label>
                                </div></div><!--end form group-->
                                <div class="form-group">
                                        <div class="col-lg-10 form-group">
                                                <button type="submit" class="btn btn-primary" formaction="editprofile.jsp">Edit Profile</button>
                                                <button type="submit" class="btn btn-primary" formaction="changepassword.jsp">Change Password</button>
                                        </div>		
                                </div>
                        </form>
        
        
    </div>
    <div class="page-footer " style="margin-bottom: 0px">
          <div class="container">
              <div class="row">
                  <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                      <h6 class="text-uppercase mb-4 font-weight-bold" style="font-size: 18px"><b>Company name</b></h6>
                        <p>Here you can use rows and columns here to organize your footer content. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                  </div>
                  <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                      <h6 class="text-uppercase mb-4 font-weight-bold" style="font-size: 18px"><b>Products</b></h6> 
                      <div class="footer-navbar">
                      <p><a href="#!">MDBootstrap</a></p>
                      <p><a href="#!">MDWordPress</a></p>
                      <p><a href="#!">BrandFlow</a></p>
                      <p><a href="#!">Bootstrap Angular</a></p>
                  </div>
                  </div>
                  <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                      <h6 class="text-uppercase mb-4 font-weight-bold" style="font-size: 18px"><b>Useful links</b></h6>
                      <div class="footer-navbar">
                      <p><a href="#!">Your Account</a></p>
                      <p><a href="#!">Become an Affiliate</a></p>
                      <p><a href="#!">Shipping Rates</a></p>
                      <p><a href="#!">Help</a></p>
                  </div>
                  </div>
                  <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                      <h6 class="text-uppercase mb-4 font-weight-bold" style="font-size: 18px"><b>Contact</b></h6>
                      <p><span class="glyphicon glyphicon-home"></span> New Delhi, 110091, India</p>
                      <p> <span class="glyphicon glyphicon-envelope"></span>  info@gmail.com</p>
                      <p> <span class="glyphicon glyphicon-phone"></span>+ 91 11 567 88</p>
                      <p><span class="glyphicon glyphicon-phone"></span>+ 11 11 567 89</p>
                  </div>
                  <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                      <h6 class="text-uppercase mb-4 font-weight-bold" style="font-size: 18px"><b>Useful links</b></h6>
                      <div class="footer-navbar">
                      <p><a href="#!">Your Account</a></p>
                      <p><a href="#!">Become an Affiliate</a></p>
                      <p><a href="#!">Shipping Rates</a></p>
                      <p><a href="#!">Help</a></p>
                  </div>
              </div>
              </div>
             
              <div class="bottom-footer">
              <div class="col-md-5">
                  <div class="footer-navbar">
                      <!--Copyright-->
                      <p class=" text-md-left grey-text">© 2018 Copyright: <a href="http://www.gpath.in//"><strong> GPatH</strong></a></p>
                      <!--/.Copyright-->
                  </div>
                  </div>
              <div class="col-md-7">
                  <ul class="footer-nav">
                      <li><a href="#"><img src="image/Fb.png" style="height: 35px; width: 30px; padding-right: 5px" /></a></li>
                      <li><a href="#"><img src="image/Twitter_logo_bird_transparent_png.png" style="height: 35px; width: 30px; padding-right: 5px "></a></li>
                      <li><a href="#"><img src="image/google-plus-512.png" style="height: 35px; width: 30px; padding-right: 5px"></a></li>
                      <li><a href="#"><img src="image/li.png" style="height: 35px; width: 30px"></a></li>
                  </ul>
              </div>
              </div>
          </div>
      </div>         
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    
    
    
  </body>
</html>
<%
}else{
    session.setAttribute("msg","Plz Login First!");
response.sendRedirect("LOGIN.jsp");
}
%>