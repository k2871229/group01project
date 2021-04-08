package dao;

import java.util.List;

import dto.OrderDTO;

public interface OrderDAO {

	// 활성화된 주문조회
	public List<OrderDTO> selectOrd(OrderDTO orderDto);
	// 취소포함 전체 주문조회
	public List<OrderDTO> selectOrdAll(OrderDTO orderDto);
	// 취소 주문조회
	public List<OrderDTO> selectOrdDel(OrderDTO orderDto);
	// 주문조회(회원번호)
	public List<OrderDTO> selectOrdMemCode(OrderDTO orderDto);
	// 주문조회(강의번호)
	public List<OrderDTO> selectOrdClsCode(OrderDTO orderDto);
	// 주문조회(결제확인 체크)
	public OrderDTO selectOrdCheck(OrderDTO orderDto);
	
	// 결제완료
	public OrderDTO updateOrdCheck(OrderDTO orderDto);
	// 주문
	public void insertOrd(OrderDTO orderDto);
	// 주문취소
	public void deleteOrd(OrderDTO orderDto);	
}