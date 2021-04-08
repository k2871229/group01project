package dao;

import java.util.List;

import dto.MemberDTO;

public interface MemberDAO {

	// 활동회원검색
	public List<MemberDTO> selectMem(MemberDTO memberDto);
	// 탈퇴포함 전체회원검색
	public List<MemberDTO> selectMemAll(MemberDTO memberDto);
	// 탈퇴회원검색
	public List<MemberDTO> selectMemDel(MemberDTO memberDto);
	// 코드검색
	public MemberDTO selectMemCode(MemberDTO memberDto);
	// 아이디검색
	public MemberDTO selectMemId(MemberDTO memberDto);
	// 이름검색
	public MemberDTO selectMemName(MemberDTO memberDto);
	// 권한검색
	public List<MemberDTO> selectMemAccess(MemberDTO memberDto);

	//회원가입
	public void insertMem(MemberDTO memberDto);
	//정보수정
	public void updateMem(MemberDTO memberDto);
	//탈퇴
	public void deleteMem(MemberDTO memberDto);
	//권한변경
	public void updateMemAccess(MemberDTO memberDto);
	
}