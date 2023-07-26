<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password change</title>

 <%@include file="../component/allcss.jsp" %>
 <style type="text/css">
  
  .buttons {
    margin: 10%;
    text-align: center;
}
.form-label{
color: #fff;
font-family: cursive;
 font-style :inherit;
 text-transform: capitalize;
} 
.btn-hover {
    width: 150px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 20px;
    height: 45px;
    text-align:center;
    border: none;
    background-size: 300% 100%;

    border-radius: 50px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:focus {
    outline: none;
}
  .btn-hover.color-7 {
    background-image: linear-gradient(to right, #6253e1, #852D91, #A3A1FF, #F24645);
    box-shadow: 0 4px 15px 0 rgba(126, 52, 161, 0.75);
}
     .bg{
   background:#fff;
   }
 
    .fa2{
   text-transform:uppercase;
      font-size: 30px;
  color:#09dfe0;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
   } 
   .btn{
   display : inline-block;
   text-decoration:none;
   border:1px solid #fff;
  
   position:relative;
  color:#fff;
  background: linear-gradient(to right , #5543ca , #a72879);
  
   cursor: pointer;
   
   }
   .btn :hover{
   border:1px solid #f44336;
    transition : 1s;
    background: #f44336;
   }  
   .card{
background: rgb(18,138,221);
background: linear-gradient(90deg, rgba(18,138,221,1) 23%, rgba(50,173,236,1) 48%, rgba(53,99,247,1) 100%, rgba(0,212,255,1) 100%);
      border-radius: 10px;
   }
 .bg{
background: rgb(130,18,221);
background: linear-gradient(90deg, rgba(130,18,221,1) 23%, rgba(236,50,169,1) 93%, rgba(247,53,151,1) 100%, rgba(0,212,255,1) 100%);
 }     
.form-label{
color: #fff;
font-family: cursive;
 font-style :inherit;
 text-transform: capitalize;
}  
   </style>
</head>
<body class="bg">
	 <%@include file="navbar.jsp"%>
	 <c:if test="${empty deptObj }">
	<c:redirect url="../department_login.jsp" ></c:redirect> 
 </c:if>
	 
	 <div class = "container p-5 ">
	<div class = "row">
		<div class = "col-md-4 offset-md-4">
		
				   <p class="fa2 fs-3 text-center">Change Password</p>
				   
				   <c:if test="${not empty sucMsg}">
				      <P class="text-center text-primary fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="text-center text-info fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
				    <div class="card">
                    <div class="card-body">
				   	<form action="../changePassword" method="post">
						<div class ="mb-3">
							<label class="form-label">Your Old Password</label>
							<input required 
							name="Oldpassword" type="text" class="form-control" value="${deptObj.password }">
						</div>	
						
						<div class ="mb-3">
							<label class="form-label">Enter New Password</label>
							<input required 
							 name="Newpassword" type="password" class="form-control">
						</div>	
						<div align="center">
						<input type="hidden" value="${deptObj.id }" name="uid">	
						<button  class="buttons btn-hover color-7">Change Password</button>
						</div>	   			   	
				   	</form>
				   	</div>
				   	<div>
				   	
				</div>
			</div>
      </div>
   </div>
</div>

</body>
</html>