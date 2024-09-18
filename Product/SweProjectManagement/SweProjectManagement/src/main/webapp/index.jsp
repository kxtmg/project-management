<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%

    if(session.getAttribute("username")==null){

        response.sendRedirect("login.jsp");
    }else{
        session.getAttribute("name");
        //this should be homepage, set to test for testing
        //response.sendRedirect("homepage.html");
        response.sendRedirect("test.jsp");
        //response.sendRedirect("landingpage.jsp");
    }
%>

