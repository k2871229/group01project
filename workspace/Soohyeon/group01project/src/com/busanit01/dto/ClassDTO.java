package com.busanit01.dto;

import java.sql.Date;
import java.sql.Time;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ClassDTO {
	// 강의 코드
	private int cls_code;
	// 강의 분류
	private String cls_category;
	// 강의 명
	private String cls_name;
	// 회원 번호
	private int mem_code;
	// 가격
	private int cls_price;
	// 강의 재생 시간
	private Time cls_time;
	// 강의 기간
	private Date cls_period;
}
