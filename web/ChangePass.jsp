<%@page import="java.util.HashMap"%>
<%@page import="java.sql.*"%>
<%
    
    HashMap h=(HashMap)session.getAttribute("UserDetails");
    if(h!=null){
        String op=request.getParameter("op");
        String np=request.getParameter("np");
        String cp=request.getParameter("cp");
        if(op!=null && np!=null && cp!=null)
        {
             db.DBClass db=(db.DBClass)application.getAttribute("DBCon");
        if(db==null){
            db=new db.DBClass(); 
            application.setAttribute("DBCon", db);
        }
        boolean r=db.changePass(np,(String)h.get("email"), op);
        if(r)
        {
            response.sendRedirect("profile.jsp");
        }
        else
        {
            session.invalidate();
            response.sendRedirect("LOGIN.jsp");
        }
        }
        }
    else
    {
        session.setAttribute("msg","PleaseLOgin First");
        response.sendRedirect("LOGIN.jsp");
    }
       %>