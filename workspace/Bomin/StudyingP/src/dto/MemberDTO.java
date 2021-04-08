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

public class MemberDTO {

	// 회원번호
    private int mem_code = 0;
    // 아이디
    private String mem_id = null;
    // 비밀번호
    private String mem_pw = null;
    // 이름
    private String mem_name = null;
    // 전화번호
    private String mem_phone = null;
    // 이메일
    private String mem_email = null;
    // 권한
    private int mem_access = 0;
    // 가입일
    private Date mem_date = null;
    // 탈퇴여부
    private int mem_status = 0;
    
}