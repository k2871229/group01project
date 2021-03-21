package dto;

import java.sql.*;

public class BoardDTO {


    private int brd_num = 0;
    private String brd_title = null; 
    private int brd_hit = 0; 
    private Date brd_date = null;
    private String brd_content = null;
    private int mem_code = 0;
    private int cls_code = 0;
    private int brd_category = 0; 
    private int brd_delete = 0;
    private int brd_rating = 0;
    
	public BoardDTO() {
		super();
	}
	
	public BoardDTO(int brd_num, String brd_title, int brd_hit, Date brd_date, String brd_content, int mem_code,
			int cls_code, int brd_category, int brd_delete, int brd_rating) {
		super();
		this.brd_num = brd_num;
		this.brd_title = brd_title;
		this.brd_hit = brd_hit;
		this.brd_date = brd_date;
		this.brd_content = brd_content;
		this.mem_code = mem_code;
		this.cls_code = cls_code;
		this.brd_category = brd_category;
		this.brd_delete = brd_delete;
		this.brd_rating = brd_rating;
	}

	public int getBrd_num() {
		return brd_num;
	}
	public void setBrd_num(int brd_num) {
		this.brd_num = brd_num;
	}
	public String getBrd_title() {
		return brd_title;
	}
	public void setBrd_title(String brd_title) {
		this.brd_title = brd_title;
	}
	public int getBrd_hit() {
		return brd_hit;
	}
	public void setBrd_hit(int brd_hit) {
		this.brd_hit = brd_hit;
	}
	public Date getBrd_date() {
		return brd_date;
	}
	public void setBrd_date(Date brd_date) {
		this.brd_date = brd_date;
	}
	public String getBrd_content() {
		return brd_content;
	}
	public void setBrd_content(String brd_content) {
		this.brd_content = brd_content;
	}
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	public int getCls_code() {
		return cls_code;
	}
	public void setCls_code(int cls_code) {
		this.cls_code = cls_code;
	}
	public int getBrd_category() {
		return brd_category;
	}
	public void setBrd_category(int brd_category) {
		this.brd_category = brd_category;
	}
	public int getBrd_delete() {
		return brd_delete;
	}
	public void setBrd_delete(int brd_delete) {
		this.brd_delete = brd_delete;
	}
	public int getBrd_rating() {
		return brd_rating;
	}
	public void setBrd_rating(int brd_rating) {
		this.brd_rating = brd_rating;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [brd_num=" + brd_num + ", brd_title=" + brd_title + ", brd_hit=" + brd_hit + ", brd_date="
				+ brd_date + ", brd_content=" + brd_content + ", mem_code=" + mem_code + ", cls_code=" + cls_code
				+ ", brd_category=" + brd_category + ", brd_delete=" + brd_delete + ", brd_rating=" + brd_rating + "]";
	}
	
}
