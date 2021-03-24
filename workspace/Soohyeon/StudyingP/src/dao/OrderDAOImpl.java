package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import Config.SqlSessionManager;
import dto.OrderDTO;

public class OrderDAOImpl implements OrderDAO{
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	@Override
	public List<OrderDTO> selectOrderList() throws Exception {
		return sqlSession.selectList("sqlMap.mapper.OrderMapper.selectOrderAll");
	}

	@Override
	public List<OrderDTO> selectOrderList(OrderDTO orderDto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderDTO selectOrderOne(OrderDTO orderDto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertOrder(OrderDTO orderDto) throws Exception {
		int result = sqlSession.insert("sqlMap.mapper.OrderMapper.insertOrder", orderDto);
		sqlSession.commit();
		return result;
	}

	@Override
	public int updateOrder(OrderDTO orderDto) throws Exception {
		return 0;
	}

	@Override
	public int deleteOrder(OrderDTO orderDto) throws Exception {
		int result = sqlSession.update("sqlMap.mapper.OrderMapper.deleteOrder", orderDto);
		sqlSession.commit();
		return result;
	}

}
