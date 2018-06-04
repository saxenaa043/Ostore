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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
  </head>
  <body >
        
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
              
              <ul class="nav navbar-nav navbar-right nav-pills" style="padding-right: 4px">
                  <li><div class="navbar-text"><p><b>Welcome:</b> <%= h.get("name")%></p></div></li>
                  <li><a href="index.html">Home</a></li>
                  <li><a href="Logout.jsp">Logout</a><li>
              </ul>
          </div>
      </nav>
                  <div class="BGEdit">
                  <div class="container " >
                                                <div class="row" style="margin-top: 63px">
                                                        <div class="col-sm-3 " >
                                                                <img src="GetPhoto?email=<%=(String)h.get("email")%>" height="160" width="160">
                                                        </div>
                                                <br>
                                                        <div class="col-sm-6">
                                                             <form action="ChangePhoto" data-toggle="validator" method="post" enctype='multipart/form-data' class="form-horizontal">
                                                                 <div class="form-group"><font color="white" size="5px">
                                                                                <label for="changephoto" class="control-label"><b>Change Photo:</b></label><br>
                                                                                <input type="file" name="photo" class="form-control" id="photo" required/><br>
                                                                                <button type="submit" class="btn btn-primary" style="margin-top: -45px" >Submit</button>
                                                                                </font>
                                                                            </div>
									</form>
                                                            </div>
                                                        </div>
                                        
                      
                                                        <div class="row col-sm-3 col-lg-12" style="margin-top: -50px">
                      <form action="EditProfilePro.jsp" data-toggle="validator" class="form-horizontal form-container"><font color="white">
                          <div class="form-group " style="margin-top: -10px">
									<label for="email" class="col-lg-2 control-label">Email:</label>
									<div class="col-lg-5 col-sm-3">
                                                                            <label class="form-control"> <%=h.get("email")%> </label>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="phone" class="col-lg-2 control-label">Phone:</label>
									<div class="col-lg-5">
										<input type="text" name='phone' class="form-control" pattern="^[_0-9]{1,}$" maxlength="10" minlength="10" id="phone" placeholder="<%=h.get("phone")%>"  />
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="name" class="col-lg-2 control-label">Name:</label>
									<div class="col-lg-5">
										<input type="text" class="form-control" id="name" name="name" pattern="^[_A-Z a-z]{1,}$"  placeholder="<%=h.get("name")%>"  />
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="gender" class="col-lg-2 control-label">Gender:</label>
									<div class="col-lg-5"> 
                                                                            <%
                                                                                String g=(String)h.get("gender");
                                                                                if(g.equalsIgnoreCase("male")){
                                                                            %>
                                                                                <input type="radio" id="gender"name="gender" value="Male" checked/>Male
										<input type="radio" id="gender"name="gender" value="Memale"/>Female
                                                                            <%        
                                                                                }else{
                                                                            %>
                                                                                <input type="radio" id="gender"name="gender" value="Male" />Male
										<input type="radio" id="gender"name="gender" value="Female" checked/>Female
                                                                            <%        
                                                                                }
                                                                            %>
										
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="dob" class="col-lg-2 control-label">Date of Birth:</label>
									<div class="col-lg-5">
										<input type="text" name="dob" class="form-control date" id="dob" placeholder="<%=h.get("dob")%>"/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
                                                                    
									<label for="state" class="col-lg-2 control-label"><b>State:</b></label>
									<div class="col-lg-5">
										<input type="text" class="form-control" id="state" name="state" placeholder="<%=h.get("state")%>"  />
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="city" class="col-lg-2 control-label">City: </b></label>
									<div class="col-lg-5">
										<input type="text" class="form-control" id="city" name="city" placeholder="<%=h.get("city")%>"  />
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="area" class="col-lg-2 control-label">Area:</label>
									<div class="col-lg-5">
                                                                            <input type="text" class="form-control" id="area" name="area" placeholder="<%=h.get("area")%>"  />
									</div>
								</div><!--end form group-->
                                                                <div class="form-group" style="margin-bottom: -20px">
									<div class="col-lg-10 col-lg-offset-2">
										<button type="submit" class="btn btn-primary">Update Profile</button>
									</div>
								</div>
                                                                </font>
							</form>	
						</div>
                  </div>

         <div style="margin-top: 7px">
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