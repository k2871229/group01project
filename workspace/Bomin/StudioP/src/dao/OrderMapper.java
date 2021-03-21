package dao;

import java.util.List;

import dto.Order;

public interface OrderMapper {

	public List<Order> selectOrderList() throws Exception; // 주문 전체 조회
	public List<Order> selectOrderList(Order order) throws Exception; // 주문 전체 조회 조건 포함
	public Order selectOrderOne(Order order) throws Exception; // 주문 1개 조회
	public void insertOrder(Order order) throws Exception; // 등록
	public void updateOrder(Order order) throws Exception; // 수정
	public void deleteOrder(Order order) throws Exception; // 삭제
	
}
	