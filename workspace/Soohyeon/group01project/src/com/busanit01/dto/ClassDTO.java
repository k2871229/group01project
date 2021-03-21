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
	// ���� �ڵ�
	private int cls_code;
	// ���� �з�
	private String cls_category;
	// ���� ��
	private String cls_name;
	// ȸ�� ��ȣ
	private int mem_code;
	// ����
	private int cls_price;
	// ���� ��� �ð�
	private Time cls_time;
	// ���� �Ⱓ
	private Date cls_period;
}
