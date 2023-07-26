<%@page import="com.db.DBconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
 <%@include file="component/allcss.jsp" %>
 <style>
 h1{
    font-size: 70px;
    color: #fff;
    letter-spacing: 3px;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    text-shadow: 0px 1px 0px #ccc,
                 0px 2px 0px #ccc,
                 0px 3px 0px #ccc,
                 0px 4px 0px #ccc,
                 0px 5px  0px #ccc,
                 0px 6px 0px #ccc,
                 0px 7px 0px #ccc,
                 0px 8px  0px #ccc
               ;
    
}
.bg{
background: rgb(13,177,178);
background: linear-gradient(270deg, rgba(13,177,178,1) 14%, rgba(194,0,137,1) 87%);
}
 </style>

</head>
<body class="bg" >
	<%@include file="component/navbar.jsp" %>
	

<br>
<br>
<br>
<br>
<br>
<br>
 <h1 class="text-center">EVENT MANAGEMENT </h1>
  <h1 class="text-center"> SYSTEM</h1>
</body>
</html>