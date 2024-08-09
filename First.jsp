<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
        background-color: #333;
        padding: 25px 30px;
        border-radius: 5px;
        box-shadow: 0 5px 10px rgba(0,0,0,0.15);
      }
.button{
         height: 45px;
         margin: 35px 0
       }
.button input{
         height: 100%;
         width: 100%;
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
<h1 align="center"><font color="#fff">JAVA MINI PROJECT</font></h1>
		<form action="register.jsp">
		<div class="button">
          <input type="submit" value="Register(Create)" >
        </div>
        </form>
        <form action="Read.jsp">
        <div class="button">
          <input type="submit" value="Display Credentials(Read)">
        </div>
         </form>
        <form action="login.jsp">
        <div class="button">
          <input type="submit" value="Update Credentails">
        </div>
         </form>
        <form action="Delete.jsp">
        <div class="button">
          <input type="submit" value="Delete Credentials">
        </div>
         </form>
</div>
</body>
</html>