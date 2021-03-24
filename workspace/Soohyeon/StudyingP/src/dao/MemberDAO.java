package dao;

import java.util.List;

import dto.MemberDTO;

public interface MemberDAO {
	public List<MemberDTO> selectMemberList() throws Exception;
	public List<MemberDTO> selectMemberList(MemberDTO memberDto) throws Exception;
	public MemberDTO selectMemberOne(MemberDTO memberDto) throws Exception;
	public void insertMember(MemberDTO memberDto) throws Exception;
	public void updateMember(MemberDTO memberDto) throws Exception;
	public void deleteMember(MemberDTO memberDto) throws Exception;
	
}
	