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

public class CommentDTO {
	
	// 댓글번호
    private int cmt_code = 0;
    // 게시글번호
    private int brd_code = 0;
    // 회원번호
    private int mem_code = 0;
    //댓글내용
    private int cmt_content = 0;
    // 댓글작성일
    private Date cmt_date = null;
    // 댓글삭제여부
    private int cmt_delete = 0;
    
}