package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import Config.SqlSessionManager;
import dto.MemberDTO;

public class MemberDAOImpl implements MemberDAO{
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	@Override
	public List<MemberDTO> selectMemberList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberDTO> selectMemberList(MemberDTO memberDto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO selectMemberOne(MemberDTO memberDto) throws Exception {
		return sqlSession.selectOne("sqlMap.mapper.MemberMapper.selectMemberCode", memberDto);
	}

	@Override
	public void insertMember(MemberDTO memberDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateMember(MemberDTO memberDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMember(MemberDTO memberDto) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
