package com.test.sqlMap;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDTO {
	// ȸ�� ��ȣ
	private int mem_code;
	// ȸ�� ���̵�
	private String mem_id;
	// ȸ�� ��й�ȣ
	private String mem_pw;
	// ȸ�� �̸�
	private String mem_name;
	// ȸ�� ����ȣ
	private String mem_phone;
	// ȸ�� �̸���
	private String mem_email;
	// ȸ�� ����
	private short mem_access;
	// ȸ�� ��������
	private LocalDateTime mem_date;
	// ȸ�� Ż�� ����
	private short mem_status;
}
