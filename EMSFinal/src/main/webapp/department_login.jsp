<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>department Login Page</title>
 <%@include file="component/allcss.jsp" %>
  <style type="text/css">
  
    
   
  body{
background: rgb(13,177,178);
background: linear-gradient(270deg, rgba(13,177,178,1) 14%, rgba(194,0,137,1) 87%);
  @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
  } 
  form
  {
  width: 500px;
  margin: 8% auto;
  padding: 50px 0;
  text-align: center;
  box-shadow: 0 20px 40px rgb(0,0,0);
     background: rgb(90,1,128);
background: linear-gradient(270deg, rgba(90,1,128,1) 14%, rgba(1,44,128,1) 87%);
  }
  .mb-3{
  margin:30px auto;
  width:80%;
  position :relative;
  box-shadow: 0 8px 10px -10px rgb(0,0,0);
  }
  
  .mb-3 input{
  width: 100%;
  height: 40px;
  border: none;
  background:#efefef ;
  padding-left: 50px;
  }
  span{
  position: absolute;
  left: 0;
  right: 0;
  height: 40px;
  width: 40px;
background: rgb(120,0,123);
background: linear-gradient(270deg, rgba(120,0,123,1) 0%, rgba(129,1,27,1) 6%, rgba(128,1,91,1) 14%, rgba(213,89,22,1) 100%);
  }
  
  span .fa{
    padding: 10px;
    color: #fff;
  }
  button{
  width: 130 px;
  height: 40px;
  margin-left: 10%;
  display: block;
  color:#fff;
  border: 0;
  font-size: 16px;
  outline: none;
 background: rgb(120,0,123);
background: linear-gradient(270deg, rgba(120,0,123,1) 0%, rgba(129,1,27,1) 6%, rgba(128,1,91,1) 14%, rgba(213,89,22,1) 100%);
  box-shadow: 0 8px 10px -10px rgb(0,0,0);
  cursor: pointer;
  }
  
  button .fa{
  margin-right: 10px;
  }
 .p1{
 text-transform:uppercase;
  font-size: 30px;
  color: #fff;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
              
   
   
   </style>
</head>
<body >
 <%@include file="component/navbar.jsp"%>
 
             
				
                 	<form action="deptLogin" method="post">
                 	  <c:if test="${not empty sucMsg}">
				      <P class="text-center text-white fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				    </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="text-center text-white fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
				   	 <p class="p1 text-center">department Login</p>
						<div class ="mb-3">
							<span><i class=" fa fa-solid fa-envelope"></i></span><input name="email" required 
							 placeholder="Email Id " type="email" class="form-control">
						</div>	
						
						<div class ="mb-3">
							<span><i class=" fa fa-solid fa-key"></i></span><input name="password" required 
							 placeholder="Password" type="password" class="form-control">
						</div>		
						<button type="submit" ><i class=" fa fa-solid fa-sign-in"></i>login</button>	   			   	
				   	</form>

 

</body>
</html>