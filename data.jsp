<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "bank1";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<BODY bgcolor="#FFFFF">
<CENTER>
<h>TOTAL BALANCE=  50000</h>
<BR>
<br>
<table border="5"style="background-color: #FFFFF;" WIDTH="50%">
<tr>
<td>transaction_details</td>
<td>account number</td>
<td>amount transfer</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from account";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("transcation_details") %></td>
<td><%=resultSet.getString("acc_no") %></td>
<td><%=resultSet.getString("amt_transfer") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</CENTER>
</body>
</html>
