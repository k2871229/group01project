package dto;

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
	// 글 번호
	private int brd_num;
	// 글 제목
	private String brd_title;
	// 조회수
	private int brd_hit;
	// 작성일
	private Date brd_date;
	// 글내용
	private String brd_content;
	// 회원 번호
	private int mem_code;
	// 강의 코드
	private int cls_code;
	// 말머리
	private int brd_category;
	// 글 삭제 여부
	private int brd_delete;
	// 강의 평점
	private int brd_rating;
}
