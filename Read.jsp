<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<html>
<head>
<style>
body{
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 10px;
        background:  linear-gradient(to right, #8e2de2, #4a00e0);
      }
.container{
        max-width: 700px;
        width: 100%;
        background-color: linear-gradient(to right, #8e2de2, #4a00e0);
        padding: 25px 30px;
        border-radius: 5px;
        box-shadow: 0 5px 10px rgba(0,0,0,0.15);
      }
th {
  background-color: #333; 
  color: white; 
  text-align: center; 
  padding: 15px; 
}
tr{
background-color:#fff;
color:#333}
tr:nth-child(even) {
  background-color: #f2f2f2; 
}

table {
  border-collapse: separate;
  border-spacing: 0;
  min-width: 350px;
  font-family: "Courier New", "Courier New", bold;
}

table tr th:first-child,
table tr td:first-child {
  border-left: 1px solid #333;
}


/* top-left border-radius */
table tr:first-child th:first-child {
  border-top-left-radius: 6px;
}


table tr:first-child th:last-child {
  border-top-right-radius: 6px;
}

/* bottom-left border-radius */
table tr:last-child td:first-child {
  border-bottom-left-radius: 6px;
}

/* bottom-right border-radius */
table tr:last-child td:last-child {
  border-bottom-right-radius: 6px;
}
h2{
color:#fff;
font-family: "Lucida Console", "Courier New", monospace;}
.button{
         height: 45px;
         margin: 35px 0;
         text-align:center;
       }
.button input{
	
         height: 100%;
         width: 10%;
         border-radius: 5px;
         border: 2px solid #fff;
         color: #fff;
         font-size: 18px;
         font-weight: 500;
         letter-spacing: 1px;
         cursor: pointer;
         transition: all 0.3s ease;
         background: #333;
       }
.button input:hover{
        /* transform: scale(0.99); */
        background:linear-gradient(to right, #8360c3, #2ebf91);
        }
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
<h2 align="center" >ALL USER DETAILS</h2>
<font color="#fff">
<%
try {
Class.forName("com.mysql.jdbc.Driver"); 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from users");
%>
<TABLE cellpadding="15" align="center">
<tr><th>FullName</th><th>UserName</th><th>Email</th><th>Phone Number</th><th>Password</th><tr>
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(6)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getInt(5)%></TD>
<TD><%=rs.getString(4)%></TD>
</TR>
<% } %>
<%
// close all the connections.
rs.close();
st.close();
con.close();
} catch (Exception ex) {
%>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE>
</font>
<form action="First.jsp">
<div class="button">
<input class="button" type="submit" value="Back">
</div></form>
</div>
</body>
</html>