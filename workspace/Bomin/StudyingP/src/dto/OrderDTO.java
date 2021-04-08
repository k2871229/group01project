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

public class OrderDTO {

	// 주문번호
	private int ord_code;
	// 회원코드
	private int mem_code;
	// 강의코드
	private int cls_code;
	// 주문날짜
	private Date ord_date;
	// 주문금액
	private int ord_total;
	// 주문취소 여부
	private int ord_cancel;
	// 결제확인
	private int ord_check;
	// 결제확인 날짜
	private int ord_chkdate;
    
}