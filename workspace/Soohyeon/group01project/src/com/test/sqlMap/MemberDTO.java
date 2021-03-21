package com.test.sqlMap;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDTO {
	// 회원 번호
	private int mem_code;
	// 회원 아이디
	private String mem_id;
	// 회원 비밀번호
	private String mem_pw;
	// 회원 이름
	private String mem_name;
	// 회원 폰번호
	private String mem_phone;
	// 회원 이메일
	private String mem_email;
	// 회원 권한
	private short mem_access;
	// 회원 가입일자
	private LocalDateTime mem_date;
	// 회원 탈퇴 여부
	private short mem_status;
}
