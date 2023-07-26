<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@page import="java.util.List"%>

<%@page import="com.db.DBconnect"%>
<%@page import="com.entity.*"%>
<%@page import="com.dao.*"%>  
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event details</title>
<%@include file="allcss.jsp" %>
<style type="text/css">
  * {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.buttons {
    margin: 10%;
    text-align: center;
}

.btn-hover {
    width: 200px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 20px;
    height: 55px;
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
   
 
    .paint-card{
   box-shadow: 0 0 10px 0 rgba(0, 0,0, .3);
   }
   .bg{
   background:#fff;
   }
   .clink{
   text-decoration:none;
   }
  
  
  .fa2{
   text-transform:uppercase;
      font-size: 30px;
  color: #fff;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
   }   
   .as{
    font-size: 20px;
   font-weight: 600;
   
   }
  
  
    .p1{
 
  font-size: 30px;
  color: #df2387;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
   }
   
    .card{
    background: rgb(18,138,221);
    background: linear-gradient(90deg, rgba(18,138,221,1) 23%, rgba(50,173,236,1) 48%, rgba(53,99,247,1) 100%, rgba(0,212,255,1) 100%);
    border-radius: 10px;
   }
   .bg{
background: rgb(13,177,178);
background: linear-gradient(270deg, rgba(13,177,178,1) 14%, rgba(194,0,137,1) 87%);

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
	 
				   
				   	 <div class="container-fluid p-3">
                     <div class="row">
                     <div class="col-md-5 offset-md-4">
				
						<p class="p1 fa2 fs-3 text-center">Edit Department</p>
						
				
				   		
				   <%
				   int id = Integer.parseInt(request.getParameter("id"));
				   DeptDao dao2= new DeptDao(DBconnect.getConn());
				   department d = dao2.getDeptById(id);
				   %>
				       <div class="card">
                     <div class="card-body">
				  	<form action="../updateDept" method="post">
				   
				   <div class="as mb-3">
				   <label class="form-label">Full Name</label><input value="<%=d.getFullname()%>" type="text" required 
				     name="fullname" class="form-control">
				   </div>
				   
				    <div class="as mb-3">
				   <label class="form-label">Email</label><input value="<%=d.getEmail()%>" type="email" required 
				     name="email" class="form-control">
				   </div>
				   	   
				    <div class="as mb-3">
				   <label class="form-label">Password</label><input value="<%=d.getPassword()%>" type="text" required 
				     name="password" class="form-control">
				   </div>
				   <input type="hidden" name="id" value="<%=d.getId()%>">
				   <div align="center">
				   <button class="buttons btn-hover color-7" type = "submit" class="btn " >UPDATE</button>
				   </div>
				   
				   </form>
					</div>
				</div>
			</div>
      	</div>
			</div>
	
	
       
       
   
				   	
				   	

</body>
</html>
