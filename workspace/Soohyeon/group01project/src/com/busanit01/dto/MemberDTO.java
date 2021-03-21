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
	// ȸ�� ��ȣ
	private int mem_code = 0;
	// ȸ�� ���̵�
	private String mem_id = null;
	// ȸ�� ��й�ȣ
	private String mem_pw = null;
	// ȸ�� �̸�
	private String mem_name = null;
	// ȸ�� ����ȣ
	private String mem_phone = null;
	// ȸ�� �̸���
	private String mem_email = null;
	// ȸ�� ����
	private int mem_access = 0;
	// ȸ�� ��������
	private Date mem_date = null;
	// ȸ�� Ż�� ����
	private int mem_status = 0;
}



