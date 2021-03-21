package dao;

import java.util.List;

import dto.Member;

public interface MemberMapper {

	public List<Member> selectMemberList() throws Exception; // 멤버 전체 조회
	public List<Member> selectMemberList(Member member) throws Exception; // 멤버 전체 조회 조건 포함
	public Member selectMemberOne(Member member) throws Exception; // 멤버 1명 조회
	public void insertMember(Member member) throws Exception; // 등록
	public void updateMember(Member member) throws Exception; // 수정
	public void deleteMember(Member member) throws Exception; // 삭제
	
}
	