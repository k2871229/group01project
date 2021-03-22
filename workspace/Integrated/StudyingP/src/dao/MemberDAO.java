package dao;

import java.util.List;

import dto.MemberDTO;

public interface MemberDAO {

	public List<MemberDTO> selectMemberList() throws Exception; // 멤버 전체 조회
	public List<MemberDTO> selectMemberList(MemberDTO memberDto) throws Exception; // 멤버 전체 조회 조건 포함
	public MemberDTO selectMemberOne(MemberDTO memberDto) throws Exception; // 멤버 1명 조회
	public void insertMember(MemberDTO memberDto) throws Exception; // 등록
	public void updateMember(MemberDTO memberDto) throws Exception; // 수정
	public void deleteMember(MemberDTO memberDto) throws Exception; // 삭제
	
}
	