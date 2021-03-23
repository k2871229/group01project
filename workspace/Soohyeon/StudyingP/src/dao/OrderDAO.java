package dao;

import java.util.List;

import dto.OrderDTO;

public interface OrderDAO {

	public List<OrderDTO> selectOrderList() throws Exception; // 주문 전체 조회
	public List<OrderDTO> selectOrderList(OrderDTO orderDto) throws Exception; // 주문 전체 조회 조건 포함
	public OrderDTO selectOrderOne(OrderDTO orderDto) throws Exception; // 주문 1개 조회
	public void insertOrder(OrderDTO orderDto) throws Exception; // 등록
	public void updateOrder(OrderDTO orderDto) throws Exception; // 수정
	public void deleteOrder(OrderDTO orderDto) throws Exception; // 삭제
	
}
	