package com.dept.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dao.EventDao;
import com.db.DBconnect;
import com.entity.event;
@MultipartConfig
@WebServlet("/addevent")
public class addEvent extends HttpServlet {
  
	public addEvent() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int DeptId = Integer.parseInt(req.getParameter("deptid"));
			String deptname = req.getParameter("deptname");
			String eventcategory = req.getParameter("eventcategory");
		    String eventdate = req.getParameter("edate");
			String eventtopic = req.getParameter("etopic");
			String rpname = req.getParameter("rpname");
			String rpdetails = req.getParameter("rpdetails");
			Part  imagePart = req.getPart("broucher");
		    Part  imagePart2 = req.getPart("photo1");
		    Part  imagePart3 = req.getPart("photo2");
		    String description = req.getParameter("description");
		    
		    // Get the uploaded file
		       
	        InputStream imageInputStream = imagePart.getInputStream();
	        InputStream imageInputStream2 = imagePart2.getInputStream();
	        InputStream imageInputStream3 = imagePart3.getInputStream();
	        
	        String imageFileName=imagePart.getSubmittedFileName(); 
	        String imageFileName2=imagePart2.getSubmittedFileName(); 
	        String imageFileName3=imagePart3.getSubmittedFileName(); 
	        
	        // Save the image to a temporary location
	        String imagePath = "D:/jee-2021-12-2/EMSFinal/src/main/webapp/img/" + imageFileName ;
	        String imagePath2 = "D:/jee-2021-12-2/EMSFinal/src/main/webapp/img/" + imageFileName2 ;
	        String imagePath3 = "D:/jee-2021-12-2/EMSFinal/src/main/webapp/img/" + imageFileName3;
	        System.out.println("succesfully uploadde"+imagePath);
	        
	        Files.copy(imageInputStream, Paths.get(imagePath));
	        Files.copy(imageInputStream2, Paths.get(imagePath2));
	        Files.copy(imageInputStream3, Paths.get(imagePath3));
	        
	        event e = new event(DeptId,deptname, eventcategory, eventdate, eventtopic, rpname, rpdetails, imageFileName, imageFileName2, imageFileName3, description);
	        EventDao dao = new EventDao(DBconnect.getConn());
	        HttpSession session = req.getSession();
	        boolean f = dao.eddEvent(e);
			
			if(f) {
				 session.setAttribute("succMsg", "Register Succesfully");
				 resp.sendRedirect("department/addEvent.jsp");
				}
				else
				{
					session.setAttribute("errorMsg", "Something wrong on the server");
					 resp.sendRedirect("department/addEvent.jsp");
				}
			

			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
