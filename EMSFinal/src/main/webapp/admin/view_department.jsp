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
<title>Department Details</title>
<%@include file="allcss.jsp" %>
 <style type="text/css">
       body{
  background:  #fff;
 
  } 
  .tab{
   background:#fff;
   border: 10px;
  border-color:orange;
 }
.hd{
background: pink;
text-transform: capitalize;
}
   
    .ps{
   text-transform:uppercase;
   font-size: 30px;
  color: #fff;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
   } 
   
   .bg{
background: rgb(13,177,178);
background: linear-gradient(270deg, rgba(13,177,178,1) 14%, rgba(194,0,137,1) 87%);
}
 </style>
</head>
<body class="bg">
 <%@include file="navbar.jsp"%>
 <div class="container-fluid p-4">
    <div class="row">
          
      
	<div align="center">
	<div class="col-md-6">

               	   <c:if test="${not empty sucMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
				
			   <p class="ps fs-2 text-center">Department Details List</p>
			   <table class=" table table-striped table-bordered tab">
			    <thead class="hd">
			     <tr>
			       	<th scope="col">Dept Id</th>
			     	<th scope="col">Dept Name</th>
			     	<th scope="col">Email </th>
			     	<th scope="col">Password</th>
			     	<th scope="col">Action</th>
			     	
			     	
			    </tr>
			   
			   </thead>
			   <tbody>
			   <%
		
			   DeptDao dao = new DeptDao(DBconnect.getConn());
			   List<department> list = dao.getAllDept();
			
			    
			   for(department ap:list)
			   { %>
			   
					   <tr>
					      <td><%=ap.getId()%></td>
					   <td><%=ap.getFullname()%></td>
					   <td><%=ap.getEmail() %></td>
					    <td><%=ap.getPassword() %></td>
					    <td><a href="edit_dept.jsp?id=<%=ap.getId()%>" class=" btn btn-sm btn-warning">Edit</a>
					    
					         <a href="../deleteDept?id=<%=ap.getId()%>" class=" btn btn-sm btn-primary">Delete</a>
			                
			           </td>
					    
					  
					   </tr>

				   
				   
			   <%}
			   
			   %>
			  </tbody>
	
		   </table>
		
	 </div>
	 
	</div>
	
	 </div>
        
       </div>
 

</body>
</html>