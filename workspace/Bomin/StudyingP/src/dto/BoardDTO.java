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

public class BoardDTO {

	// 글번호
	private int brd_code;
	// 글제목
	private String brd_title;
	// 조회수
	private int brd_hit;
	// 작성일
	private Date brd_date;
	// 글내용
	private String brd_content;
	// 회원번호
	private int mem_code;
	// 강의코드
	private int cls_code;
	// 말머리
	private int brd_category;
	// 삭제여부
	private int brd_delete;
	// 강의평점
	private int brd_rating;

    
}