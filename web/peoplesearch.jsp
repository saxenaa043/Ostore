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
              
              <ul class="nav navbar-nav navbar-right nav-pills" style="padding-right: 4px">
                  <li><div class="navbar-text"><p><b>Welcome:</b> <%= h.get("name")%></p></div></li>
                  <li><a href="index.html">Home</a></li>
                  <li><a href="Logout.jsp">Logout</a><li>
              </ul>
          </div>
      </nav>
                  <div class="col-lg-6" style="margin-left: 300px;margin-top: 150px">
                                            <div class="panel panel-primary">
                                                    <div class="panel-heading text-center">
                                                            <h3>Search People</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <form action="ProfileSearchPro.jsp" method="post" class="form-horizontal">
                                                                    <div class="form-group">
                                                                            <label for="state" class="col-lg-3 control-label">State:</label>
                                                                            <div class="col-lg-8">
                                                                                    <select class="form-control" name='state' id="listBox" onchange='selct_district(this.value)'>

                                                                                    </select>
                                                                            </div>
                                                                    </div><!--end form group-->
                                                                    <div class="form-group">
                                                                            <label for="city" class="col-lg-3 control-label">City:</label>
                                                                                    <div class="col-lg-8">
                                                                                            <select class="form-control" name='city' id='secondlist'>
                                                                                    </select>
                                                                            </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                            <label for="area" class="col-lg-3 control-label">Area:</label>
                                                                            <div class="col-lg-8">

                                                                                    <input type="text" name="area" class="form-control" id="area" placeholder="Enter your Area"/>
                                                                            </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                            <div class="col-lg-10 col-lg-offset-3">
                                                                                    <button type="search" class="btn btn-primary">Search</button>
                                                                            </div>
                                                                    </div>
                                                            </form>
                                                    </div>
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
    
    
    
  </body>
</html>
<%
}else{
    session.setAttribute("msg","Plz Login First!");
response.sendRedirect("LOGIN.jsp");
}
%>