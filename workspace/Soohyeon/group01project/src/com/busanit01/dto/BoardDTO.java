package com.busanit01.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class BoardDTO {
	private int brd_num;
	private String brd_title;
	private int brd_hit;
	private Date brd_date;
	private String brd_content;
	private int mem_code;
	private int cls_code;
	private int brd_category;
	private int brd_delete;
	private int brd_rating;
}
