
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
   <%@page import="java.util.List"%>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event_details</title>
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
  color:  #df2387;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
   }   
   .btn2{
   display : inline-block;
   text-decoration:none;
   border:1px solid #fff;
   padding : 5px 15px;
   position:relative;
  color:#fff;
  background: linear-gradient(to right , #5543ca , #00BCD4);
  
    font-size: 17px;
   font-weight: 600;
   cursor: pointer;
   
   }
   
   
   .btn :hover{
   border:1px solid #f44336;
    transition : 1s;
    background: #f44336;
   }
.tab{
 background:#fff;
 border:50px;
 border-color:orange ;
 
}
.hd{
background:pink ;
text-transform: capitalize;
}

.bg{
background: rgb(220,122,218);
background: linear-gradient(90deg, rgba(220,122,218,1) 14%, rgba(9,104,224,1) 48%, rgba(238,53,247,1) 100%, rgba(0,212,255,1) 100%);
}
</style>
</head>
<body class="bg">
				  
<%@include file="navbar.jsp" %>

<br>
 					
		   <form action="datewise.jsp" method="post">
              <div align="center">
              <div class="col-sm-4 ">
              <div class="input-group">
			   <input type="text" name="Search1" class="form-control" placeholder="YYYY-MM-DD"> 
			   <input type="text" name="Search2" class="form-control" placeholder="YYYY-MM-DD"> 
			   
			  <div class="input-group-btn">
			  <button type="submit" value="Search" class="btn2 btn-primary"><i class="fa-solid fa-magnifying-glass"></i>Search</button>
			  </div>
			  </div>
              </div>
              </div>
<br>
             <div id="tblCustomers">
       <div align="center">
       <div class="col-md-11 " >
        <p class="fa2 fs-3 text-center">Event details</p>
     
<%
        if(request.getParameter("Search1")==null){%>
        <div class="tab"></div>
       <table  class="table table-striped table-bordered tab">
			    <thead class="hd">
			     <tr class="warning">
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
			    
			    <%
			    try {
			    	String s1 = request.getParameter("Search");
					Class.forName("com.mysql.cj.jdbc.Driver");
		            Connection conn =DriverManager.getConnection( "jdbc:mysql://localhost:3306/ems?characterEncoding=utf8","root","srivkp@2003");
		            String sql = "select * from event_details ";
		    		
		    		PreparedStatement ps = conn.prepareStatement(sql);
		    		
		    		
		    		ResultSet rs = ps.executeQuery();
		    		while(rs.next())
		    		{%>
		    			<tr>
		    			<td><%=rs.getInt("dept_id")%></td>
		    		    <td><%=rs.getString("dept_name")%></td>
		    			<td><%=rs.getString("event_category")%></td> 
		    			<td><%=rs.getString("event_date")%></td> 
		    		    <td><%=rs.getString("event_topic")%></td> 
		    			<td><%=rs.getString("event_time")%></td> 
		    			<td><%=rs.getString("resource_person_details")%></td> 
		    			<td><img src="../img/<%=rs.getString("broucher")%>" style="width:100px;height:100px"></td> 
		    			<td><img src="../img/<%=rs.getString("image1")%>" style="width:100px;height:100px"></td> 
		    			<td><img src="../img/<%=rs.getString("image2")%>" style="width:100px;height:100px"></td> 
		    			 <td><%=rs.getString("description")%></td>
		    			 <td>
					          <a href="admin_view_report.jsp?id=<%=rs.getInt("id")%>" class=" btn btn-sm btn-warning">Report</a>
			                
			           </td>
		    			</tr>
		    			
		    		<%}
		            
				}
				catch(Exception ae) {
					ae.printStackTrace();
				}
			    %>
			  </tbody>
</table>

<%}
else{%>
	     <table  class="table table-striped table-bordered tab">
			    <thead class="hd">
			     <tr class="warning">
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
			    
			    <%
			    try {
			    	String s1 = request.getParameter("Search1");
			    	String s2 = request.getParameter("Search2");
					Class.forName("com.mysql.cj.jdbc.Driver");
		            Connection conn =DriverManager.getConnection( "jdbc:mysql://localhost:3306/ems?characterEncoding=utf8","root","srivkp@2003");
		            String sql = "select * from event_details  where event_date   between '"+s1+"' and '"+s2+"' ";
		            	
		    		
		    		PreparedStatement ps = conn.prepareStatement(sql);
		    		
		    		
		    		ResultSet rs = ps.executeQuery();
		    		while(rs.next())
		    		{%>
		    			<tr>
		    			<td><%=rs.getInt("dept_id")%></td>
		    		    <td><%=rs.getString("dept_name")%></td>
		    			<td><%=rs.getString("event_category")%></td> 
		    			<td><%=rs.getString("event_date")%></td> 
		    		    <td><%=rs.getString("event_topic")%></td> 
		    			<td><%=rs.getString("event_time")%></td> 
		    			<td><%=rs.getString("resource_person_details")%></td> 
		    			<td><img src="../img/<%=rs.getString("broucher")%>" style="width:100px;height:100px"></td> 
		    			<td><img src="../img/<%=rs.getString("image1")%>" style="width:100px;height:100px"></td> 
		    			<td><img src="../img/<%=rs.getString("image2")%>" style="width:100px;height:100px"></td> 
		    			<td><%=rs.getString("description")%></td>
		    			<td>
					          <a href="admin_view_report.jsp?id=<%=rs.getInt("id")%>" class=" btn btn-sm btn-warning">Report</a>
			                
			           </td>
		    			 	
		    			</tr>
		    			
		    		<%}
		            
				}
				catch(Exception ae) {
					ae.printStackTrace();
				}
			    %>
			  </tbody>
</table>

<%} %>
</div>
</div>
 </div>         
</form> 
</body>


</html>