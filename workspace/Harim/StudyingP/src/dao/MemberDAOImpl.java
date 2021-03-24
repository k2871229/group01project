package dao;

import java.util.List;
import dto.MemberDTO;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSession;


public class MemberDAOImpl implements MemberDAO {
	

    private static final String NAMESPACE = "MemberMapper.xml";

    private final SqlSession sqlSession;

    public MemberDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    // 회원가입처리
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertMember(MemberDTO memberDto) throws Exception {
		sqlSession.insert(NAMESPACE + ".insertMember", memberDto);		
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