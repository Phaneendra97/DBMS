<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
    String uname = request.getParameter("uname");    
    String games = request.getParameter("games");
    String review = request.getParameter("review");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project",
            "root", "admin");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into review(uname,games,reviews) values('"+uname+"','"+games+"','"+review+"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("review.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>