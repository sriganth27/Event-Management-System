<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@page import="java.util.List"%>

<%@page import="com.db.DBconnect"%>
<%@page import="com.entity.*"%>
<%@page import="com.dao.*"%>
<%@page import="com.admin.servlet.*"%>
<%@page import="com.dept.servlet.*"%>

  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Event</title>
<%@include file="allcss.jsp" %>
 <style type="text/css">
  
   
  
 
   .clink{
   text-decoration:none;
   }


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
   
   .as{
    font-size: 20px;
   font-weight: 450;
   
   }
   .fa2{
      text-transform:uppercase;
      font-size: 30px;
  color:#dcdd12;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
   
   }
 .bg{
background: rgb(130,18,221);
background: linear-gradient(90deg, rgba(130,18,221,1) 23%, rgba(236,50,169,1) 93%, rgba(247,53,151,1) 100%, rgba(0,212,255,1) 100%);
 }     
 
    .card{
background: rgb(18,138,221);
background: linear-gradient(90deg, rgba(18,138,221,1) 23%, rgba(50,173,236,1) 48%, rgba(53,99,247,1) 100%, rgba(0,212,255,1) 100%);
      border-radius: 10px;
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
 
 
   <div class="container-fluid p-3">
    <div class="row">
    
          <div class=" col-md-7 offset-md-3" >
				 
						<p class="fa2 fs-2 text-center">Add Event</p>
						
				  <div class="card">
                <div class="card-body">
				   <form action="../addevent" method="post" class="row g-3" enctype="multipart/form-data">
				      <c:if test="${not empty succMsg}">
				      <P class="text-center text-white fs-3">${succMsg}</P>
				      <c:remove var="succMsg" scope="session"/>
				    </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="text-center text-white fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
				   
				  <input type="hidden" name="deptid" value="${deptObj.id}">
				  		   
				   <div class="as col-md-6">
				   <label for="inputEmail4" class=" form-label">Dept Name</label><input type="text" required 
				     name="deptname" class="form-control">
				   </div>
				   
				   <div class="as col-md-6">
				   <label for="inputEmail4" class=" form-label">Event Catogory</label>
				   <select
				     name="eventcategory" for="dropdown" class="form-control">
				  
				     <option value="Seminar">Seminar</option>
				     <option value="Webinar">Webinar</option>
				      <option value="Workshop">Workshop</option>
				      <option value="Guest Lecture">Guest Lecture</option>
				      
				      
				     </select>
				   </div>
				   
				   
				    <div class="as col-md-6">
				   <label for="inputEmail4" class="form-label">Event Date</label><input type="date" required 
				     name="edate" class="form-control">
				   </div>
				   
				    <div class="as col-md-6">
				   <label for="inputEmail4" class="form-label">Event topic</label><input type="text"required 
				     name="etopic" class="form-control">
				   </div>
				   
				   
				   <div class="as col-md-6">
				   <label for="inputEmail4" class="form-label">Event Time</label><input type="text" required 
				     name="rpname" class="form-control">
				   </div>
				   
				    <div class="as col-md-6">
				   <label for="inputEmail4" class="form-label">Resource person details</label><input type="text"required 
				     name="rpdetails" class="form-control">
				   </div>
				   
				    
				    <div class="as col-md-6">
				   <label for="inputEmail4" class="form-label">Broucher</label><input type="file" required 
				     name="broucher" class="form-control">
				   </div>
				    
				    
				    <div class="as col-md-6">
				   <label for="fa inputEmail4" class="form-label">Image1</label><input type="file" required 
				     name="photo1" maxlength="10" class="form-control">
				   </div>
				   
				     <div class="as col-md-6">
				   <label for="fa inputEmail4" class="form-label">Image2</label><input type="file" required 
				     name="photo2" maxlength="10" class="form-control">
				   </div>
				   
				  
				   
				  <div class="as col-md-12">
				  <label for="fa inputEmail4" class="form-label">Description</label>				  	
				  <textarea required name ="description" class="form-control" row ="10" cols="10"></textarea>
				  
				  </div>
								    
				    <div align="center">
				   <button class="buttons btn-hover color-7" type = "submit" class="btn" >SUBMIT</button>
				   </div>
				   </form>
					</div>
				</div>
			</div>
      
	
	
       
   
    </div>
</div>
</body>
</html>