package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import Config.SqlSessionManager;
import dto.ClassDTO;

public class ClassDAOImpl implements ClassDAO{
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	@Override
	public List<ClassDTO> selectClassList() throws Exception {
		return sqlSession.selectList("sqlMap.mapper.OrderMapper.selectClassAll");
	}

	@Override
	public List<ClassDTO> selectClassList(ClassDTO classDto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ClassDTO selectClassOne(ClassDTO classDto) throws Exception {
		return sqlSession.selectOne("sqlMap.mapper.ClassMapper.selectClassCode", classDto);
	}

	@Override
	public void insertClass(ClassDTO classDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateClass(ClassDTO classDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteClass(ClassDTO classDto) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
}
