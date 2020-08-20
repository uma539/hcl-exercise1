<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String transcation_details=request.getParameter("transcation_details");
String acc_no=request.getParameter("acc_no");
String amt_transfer=request.getParameter("amt_transfer");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/transaction", "root", "");
Statement st=conn.createStatement();
st.executeUpdate("insert into bank1(transcation_details,acc_no,amt_transfer)values('"+transcation_details+"','"+acc_no+"','"+amt_transfer+"')");
response.sendRedirect("succussfull.html");
}
catch(Exception e)
{
response.sendRedirect("error.html");
System.out.print(e);
e.printStackTrace();
}
%>
System.out.print(e);
e.printStackTrace();
}
%>