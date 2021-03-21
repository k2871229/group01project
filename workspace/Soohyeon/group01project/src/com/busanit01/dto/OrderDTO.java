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
	// 주문 번호
	private int ord_code;
	// 회원 번호
	private int mem_code;
	// 강의 번호
	private int cls_code;
	// 주문 일자
	private Date ord_date;
	// 주문 금액
	private int ord_total;
	// 추문 취소 여부
	private int ord_cancel;
}

