<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    db.DBClass db=(db.DBClass)application.getAttribute("DBCon");
    if(db==null){
        db=new db.DBClass(); 
        application.setAttribute("DBCon", db);
    }
    ResultSet rs=db.checkLogin(email, password);
    if(rs!=null){
        HashMap h=new HashMap();
        h.put("name",rs.getString(3));
        h.put("email",rs.getString(1));
        h.put("phone",rs.getString(4));
        h.put("dob",rs.getString(6));
        h.put("gender",rs.getString(5));
        h.put("state",rs.getString(7));
        h.put("city",rs.getString(8));
        h.put("area",rs.getString(9));
        session.setAttribute("UserDetails",h);
        response.sendRedirect("profile.jsp");
    }else{
        session.setAttribute("msg1","Login Failed! Username or Password is incorrect");
        response.sendRedirect("LOGIN.jsp");
    }
%>