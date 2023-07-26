package com.entity;

public class event {
 
	private int id;
	private int Deptid;
	private String Deptname;
	private String EventCategory;
	private String EventDate;
	private String EventTopic;
	private String ResourcePersonName;
	private String ResourcedPersonDetails;
	private String Broucher;
	private String Image1;
	private String Image2;
	private String Description;
	
	
	
	public event() {
		super();
		// TODO Auto-generated constructor stub
	}



	public event(String deptname, String eventCategory, String eventDate, String eventTopic, String resourcePersonName,
			String resourcedPersonDetails, String broucher, String image1, String image2, String description) {
		super();
		Deptname = deptname;
		EventCategory = eventCategory;
		EventDate = eventDate;
		EventTopic = eventTopic;
		ResourcePersonName = resourcePersonName;
		ResourcedPersonDetails = resourcedPersonDetails;
		Broucher = broucher;
		Image1 = image1;
		Image2 = image2;
		Description = description;
	}



	public event(int id, int deptid, String deptname, String eventCategory, String eventDate, String eventTopic,
			String resourcePersonName, String resourcedPersonDetails, String broucher, String image1, String image2,
			String description) {
		super();
		this.id = id;
		Deptid = deptid;
		Deptname = deptname;
		EventCategory = eventCategory;
		EventDate = eventDate;
		EventTopic = eventTopic;
		ResourcePersonName = resourcePersonName;
		ResourcedPersonDetails = resourcedPersonDetails;
		Broucher = broucher;
		Image1 = image1;
		Image2 = image2;
		Description = description;
	}



	public event(int deptid, String deptname, String eventCategory, String eventDate, String eventTopic,
			String resourcePersonName, String resourcedPersonDetails, String broucher, String image1, String image2,
			String description) {
		super();
		Deptid = deptid;
		Deptname = deptname;
		EventCategory = eventCategory;
		EventDate = eventDate;
		EventTopic = eventTopic;
		ResourcePersonName = resourcePersonName;
		ResourcedPersonDetails = resourcedPersonDetails;
		Broucher = broucher;
		Image1 = image1;
		Image2 = image2;
		Description = description;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public int getDeptid() {
		return Deptid;
	}



	public void setDeptid(int deptid) {
		Deptid = deptid;
	}



	public String getDeptname() {
		return Deptname;
	}



	public void setDeptname(String deptname) {
		Deptname = deptname;
	}



	public String getEventCategory() {
		return EventCategory;
	}



	public void setEventCategory(String eventCategory) {
		EventCategory = eventCategory;
	}



	public String getEventDate() {
		return EventDate;
	}



	public void setEventDate(String eventDate) {
		EventDate = eventDate;
	}



	public String getEventTopic() {
		return EventTopic;
	}



	public void setEventTopic(String eventTopic) {
		EventTopic = eventTopic;
	}



	public String getResourcePersonName() {
		return ResourcePersonName;
	}



	public void setResourcePersonName(String resourcePersonName) {
		ResourcePersonName = resourcePersonName;
	}



	public String getResourcedPersonDetails() {
		return ResourcedPersonDetails;
	}



	public void setResourcedPersonDetails(String resourcedPersonDetails) {
		ResourcedPersonDetails = resourcedPersonDetails;
	}



	public String getBroucher() {
		return Broucher;
	}



	public void setBroucher(String broucher) {
		Broucher = broucher;
	}



	public String getImage1() {
		return Image1;
	}



	public void setImage1(String image1) {
		Image1 = image1;
	}



	public String getImage2() {
		return Image2;
	}



	public void setImage2(String image2) {
		Image2 = image2;
	}



	public String getDescription() {
		return Description;
	}



	public void setDescription(String description) {
		Description = description;
	}

	
	
	
	
	
	
	
	
	
	
}
