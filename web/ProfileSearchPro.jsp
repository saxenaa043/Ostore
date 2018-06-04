<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.HashMap"%>
<%
    HashMap h=(HashMap)session.getAttribute("UserDetails");
    if(h!=null){
        String s=request.getParameter("state");
        String c=request.getParameter("city");
        String a=request.getParameter("area");
        db.DBClass db=(db.DBClass)application.getAttribute("DBCon");
        if(db==null){
            db=new db.DBClass(); 
            application.setAttribute("DBCon", db);
        }
        ResultSet rs=db.getUsersByLocation(s, c, a);
    
%>
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
 
  <body data-spy="scroll" data-target="#my-navbar" class="bg2">
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
                  <div class="container" style="margin-top: 70px">
		<div class="panel panel-default text center">
			<div class="panel-heading text-center">
				<h3>Search Results for: <%=s%>/<%=c%>/<%=a%></h3>
			</div>
		</div>
	</div>
	</br>
	</br>
		<div class="container">
			<section>
                            <%
                                while(rs.next()){
                                    if(!rs.getString(1).equals((String)h.get("email"))){
                            %>
			<div class="row">
				<div class="col-lg-3">
                                    <img src="GetPhoto?email=<%=rs.getString(1)%>" height="150" width="150">
				</div>
				<div class="col-lg-7">
					<form action="" class="form-horizontal">
						<div class="form-group">
                                                    <label for="name" class="control-label">Name: <font color="grey"><%=rs.getString(2)%></font></label><br>
							<label for="email" class="control-label">Email:<font color="grey"> <%=rs.getString(1)%></font></label><br>
							<label for="phone" class="control-label">Phone: <font color="grey"><%=rs.getString(3)%></font></label><br>
							<label for="gender" class="control-label">Gender: <font color="grey"><%=rs.getString(4)%></font></label><br>
							<label for="dob" class="control-label">Date of Birth: <font color="grey"><%=rs.getString(5)%></font></label><br>
							
						</div>
					</form>
				</div>
                                                        <form action="talk.jsp" method="post" class="form-horizontal">
					<div class="col-lg-2">
						<div class="form-group">
						<br>
						<br>
                                                <input type="hidden" name="email" value="<%=rs.getString(1)%>" />
							<button type="search" class="btn btn-primary">Talk</button>
						</div>
					</div>
				</form>
			</div>
			<hr>
			<%   }
                                }
                        %>
		
		</section>
	</div>
	</br>
	<!--footer-->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
<%
}else{
    session.setAttribute("msg","Plz Login First!");
response.sendRedirect("LOGIN.jsp");
}
%>