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
<title>Event Details</title>
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
  color: #dcdd12;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
   }  
.bg{
background: rgb(220,122,218);
background: linear-gradient(90deg, rgba(220,122,218,1) 14%, rgba(9,104,224,1) 48%, rgba(238,53,247,1) 100%, rgba(0,212,255,1) 100%);
}
 </style>
</head>
<body class="bg">
 <%@include file="navbar.jsp"%>
 <c:if test="${empty deptObj }">
	<c:redirect url="../department_login.jsp" ></c:redirect> 
 </c:if>
 
 <div class="container-fluid p-4">
    <div class="row">
          
      
	<div align="center">
	<div class="col-md-12">
		
				
               	   <c:if test="${not empty sucMsg}">
				      <P class="fs-2 text-center text-warning fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
				   
			   <p class="ps fs-3 text-center">Event Details List</p>
			   <table class=" table table-striped table-bordered tab">
			    <thead class="hd">
			     <tr>
			       	<th scope="col">Dept Id</th>
			     	<th scope="col">Dept Name</th>
			     	<th scope="col">Event Category</th>
			     	<th scope="col">Event date</th>
			     	<th scope="col">Event Topic</th>
			     	<th scope="col">Event Time</th>
			     	<th scope="col">RPDeatils</th>
			     	<th scope="col">Broucher</th>
			     	<th scope="col">Image1</th>
			     	<th scope="col">Image2</th>
			     	<th scope="col">Description</th>
			        <th scope="col">Action</th>
			       
			     	
			    </tr>
			   
			   </thead>
			   <tbody>
			   <%
			   department da = (department) session.getAttribute("deptObj");
			   EventDao dao = new EventDao(DBconnect.getConn());
			   List<event> list = dao.getAllEventByLoginDept(da.getId());
			
			    
			   for(event ap:list)
			   { %>
			   
					   <tr>
					      <td><%=ap.getDeptid()%></td>
					   <td><%=ap.getDeptname()%></td>
					   <td><%=ap.getEventCategory() %></td>
					    <td><%=ap.getEventDate() %></td>
					    <td><%=ap.getEventTopic() %></td>
					    <td><%=ap.getResourcePersonName() %></td>
					    <td><%=ap.getResourcedPersonDetails() %></td>
					    <td><img src="../img/<%=ap.getBroucher()%>" style="width:100px;height:100px"></td> 
					   <td><img src="../img/<%=ap.getImage1()%>" style="width:100px;height:100px"></td>
					    <td><img src="../img/<%=ap.getImage2()%>" style="width:100px;height:100px"></td>
					    <td><%=ap.getDescription() %></td>
					    <td><a href="edit_event.jsp?id=<%=ap.getId()%>" class=" btn btn-sm btn-warning">Edit</a>
					    
					         <a href="../deleteEvent?id=<%=ap.getId()%>" class=" btn btn-sm btn-primary">Delete</a>
					          <a href="view_report.jsp?id=<%=ap.getId()%>" class=" btn btn-sm btn-warning">Report</a>
			                
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