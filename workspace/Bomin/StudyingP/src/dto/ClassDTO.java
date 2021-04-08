package dto;

import java.sql.*;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString

public class ClassDTO {

	// 강의코드
	private int cls_code;
	// 강의분류
	private String cls_category;
	// 강의명
	private String cls_name;
	// 회원(강사)코드
	private int mem_code;
	// 가격
	private int cls_price;
	// 재생시간
	private Time cls_time;
	// 강의기간
	private Date cls_period;
	// 삭제여부
	private int cls_delete;

}