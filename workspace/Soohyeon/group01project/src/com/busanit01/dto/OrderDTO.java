package com.busanit01.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class OrderDTO {
	// �ֹ� ��ȣ
	private int ord_code;
	// ȸ�� ��ȣ
	private int mem_code;
	// ���� ��ȣ
	private int cls_code;
	// �ֹ� ����
	private Date ord_date;
	// �ֹ� �ݾ�
	private int ord_total;
	// �߹� ��� ����
	private int ord_cancel;
}

