package com.busanit01.dto;

import java.sql.Date;

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
	// 회원 번호
	private int mem_code = 0;
	// 회원 아이디
	private String mem_id = null;
	// 회원 비밀번호
	private String mem_pw = null;
	// 회원 이름
	private String mem_name = null;
	// 회원 폰번호
	private String mem_phone = null;
	// 회원 이메일
	private String mem_email = null;
	// 회원 권한
	private int mem_access = 0;
	// 회원 가입일자
	private Date mem_date = null;
	// 회원 탈퇴 여부
	private int mem_status = 0;
}



