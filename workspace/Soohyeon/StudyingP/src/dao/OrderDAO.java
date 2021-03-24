package dao;

import java.util.List;

import dto.OrderDTO;

public interface OrderDAO {

	public List<OrderDTO> selectOrderList() throws Exception;
	public List<OrderDTO> selectOrderList(OrderDTO orderDto) throws Exception;
	public OrderDTO selectOrderOne(OrderDTO orderDto) throws Exception;
	public int insertOrder(OrderDTO orderDto) throws Exception;
	public int updateOrder(OrderDTO orderDto) throws Exception;
	public int deleteOrder(OrderDTO orderDto) throws Exception;
	
}
	