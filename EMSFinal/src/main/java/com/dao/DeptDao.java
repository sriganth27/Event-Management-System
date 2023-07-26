package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.department;
import com.entity.event;


public class DeptDao {

	private Connection conn;

	public DeptDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean DeptRegister(department d) {
		boolean f= false;
		try {
			String sql = "insert into department(fullname,email,password) values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, d.getFullname());
			ps.setString(2, d.getEmail());
			ps.setString(3, d.getPassword());

			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}


public department login(String email , String password) {
	  department d = null;
	  
	  try {
	  String sql = "select * from department where email=? and password=?";
	  PreparedStatement ps = conn.prepareStatement(sql);
	  ps.setString(1, email);
	  ps.setString(2, password);
	  ResultSet rs = ps.executeQuery();
	  
	  while(rs.next())
	  {
		  d = new department();
		  d.setId(rs.getInt(1));
		  d.setFullname(rs.getString(2));
		  d.setEmail(rs.getString(3));
		  d.setPassword(rs.getString(4));
		  
	  }
	
  } catch (Exception e) {
	  e.printStackTrace();
}
	  
	return d;
	  
}

public  List<department> getAllDept(){
	
	 List<department> list = new ArrayList<department>();
	 
	 department d =null;
	 try {
		 String sql = "select * from department order by id desc";
		 PreparedStatement ps = conn.prepareStatement(sql);
		 ResultSet rs = ps.executeQuery();

		 while(rs.next())
		  {
			  d = new department();
			  d.setId(rs.getInt(1));
			  d.setFullname(rs.getString(2));
			  d.setEmail(rs.getString(3));
			  d.setPassword(rs.getString(4));
			  list.add(d);
		  }
		 
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	return list;
	 

}

public department getDeptById(int id) {
	
	department d= null;
	try {
		 String sql = "select * from department where id=? ";
		 PreparedStatement ps = conn.prepareStatement(sql);
		 ps.setInt(1, id);
		 ResultSet rs = ps.executeQuery();

		 while(rs.next())
		  {
			  d = new department();
			  d.setId(rs.getInt(1));
			  d.setFullname(rs.getString(2));
			  d.setEmail(rs.getString(3));
			  d.setPassword(rs.getString(4));
			 
		  }
	} catch (Exception e) {
		e.printStackTrace();
	}
	return d;
	
}

public boolean UpdateDept(department d) {
	boolean f= false;
	try {
		String sql = "update department set  fullname=?, email=?, password=? where id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, d.getFullname());
		ps.setString(2, d.getEmail());
		ps.setString(3, d.getPassword());
		ps.setInt(4, d.getId());

		int i=ps.executeUpdate();
		
		if(i==1) {
			f=true;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return f;
	
}

public boolean deleteDept(int id) {
	boolean f= false;
	try {
		String sql = "delete from department where id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
        int i=ps.executeUpdate();
		
		if(i==1) {
			f=true;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return f;
	
}





public boolean eddEvent(event e) {
	boolean f= false;
	
	try {
		String sql = "insert into event(dept_name,event_category,event_date,event_topic,resource_person_name,resource_person_details,broucher,image1,image2,description) values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps =conn.prepareStatement(sql);
		ps.setString(1, e.getDeptname());
		ps.setString(2, e.getEventCategory());
		ps.setString(3, e.getEventDate());
		ps.setString(4, e.getEventTopic());
		ps.setString(5, e.getResourcePersonName());
		ps.setString(6, e.getResourcedPersonDetails());
		ps.setString(7, e.getBroucher() );
		ps.setString(8, e.getImage1());
		ps.setString(9, e.getImage2());
		ps.setString(10, e.getDescription());
	
       int i=ps.executeUpdate();
		
		if(i==1) {
			f=true;
		}
		
		
		
	} catch (Exception e2) {
		e2.printStackTrace();
	}
	return f;
}
public boolean CheckOldPassword(int deptid , String OldPassword) {
	
	boolean f = false;
	try {
		String sql = "select * from department where id=? and password=?";
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setInt(1, deptid);
		ps.setString(2, OldPassword);
		
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			f = true;
		}
	} catch (Exception e) {
		e.printStackTrace();
	} 
	return f;
	
}

public boolean CheckNewPassword(int deptid , String NewPassword) {
	
	boolean f = false;
	try {
		String sql = "update department set password=? where id=?";
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setString(1, NewPassword);
		ps.setInt(2, deptid);
		
		  
		int i = ps.executeUpdate();
		if(i==1) {
			f= true;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	} 
	return f;
	
}
}
