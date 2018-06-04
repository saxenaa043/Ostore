<%@page import="java.util.HashMap"%>
<%
HashMap h=(HashMap)session.getAttribute("UserDetails");
    if(h!=null){
    session.invalidate();
    response.sendRedirect("LOGIN.jsp");
}else{
    session.setAttribute("msg", "Plz Login First!");
    response.sendRedirect("LOGIN.jsp");
}
%>