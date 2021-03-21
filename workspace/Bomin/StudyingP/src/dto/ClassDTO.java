package dto;

import java.sql.*;


public class ClassDTO {

	  private  int cls_code = 0; 
	  private String cls_category = null; 
	  private String cls_name = null;
	  private int mem_code = 0; 
	  private int cls_price = 0; 
	  private Time cls_time = null;
	  private String cls_period = null; 
	  
	public ClassDTO() {
		super();
	}
	public ClassDTO(int cls_code, String cls_category, String cls_name, int mem_code, int cls_price, Time cls_time,
			String cls_period) {
		super();
		this.cls_code = cls_code;
		this.cls_category = cls_category;
		this.cls_name = cls_name;
		this.mem_code = mem_code;
		this.cls_price = cls_price;
		this.cls_time = cls_time;
		this.cls_period = cls_period;
	}
	
	public int getCls_code() {
		return cls_code;
	}
	public void setCls_code(int cls_code) {
		this.cls_code = cls_code;
	}
	public String getCls_category() {
		return cls_category;
	}
	public void setCls_category(String cls_category) {
		this.cls_category = cls_category;
	}
	public String getCls_name() {
		return cls_name;
	}
	public void setCls_name(String cls_name) {
		this.cls_name = cls_name;
	}
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	public int getCls_price() {
		return cls_price;
	}
	public void setCls_price(int cls_price) {
		this.cls_price = cls_price;
	}
	public Time getCls_time() {
		return cls_time;
	}
	public void setCls_time(Time cls_time) {
		this.cls_time = cls_time;
	}
	public String getCls_period() {
		return cls_period;
	}
	public void setCls_period(String cls_period) {
		this.cls_period = cls_period;
	}
	
	@Override
	public String toString() {
		return "ClassDTO [cls_code=" + cls_code + ", cls_category=" + cls_category + ", cls_name=" + cls_name
				+ ", mem_code=" + mem_code + ", cls_price=" + cls_price + ", cls_time=" + cls_time + ", cls_period="
				+ cls_period + "]";
	} 
	  
	
}
