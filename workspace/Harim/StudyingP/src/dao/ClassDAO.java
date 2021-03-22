package dao;

import java.util.List;
import dto.ClassDTO;

public interface ClassDAO {

	public List<ClassDTO> selectClassList() throws Exception; // 강의 전체 조회
	public List<ClassDTO> selectClassList(ClassDTO classDto) throws Exception; // 강의 전체 조회 조건 포함
	public ClassDTO selectClassOne(ClassDTO classDto) throws Exception; // 강의 1개 조회
	public void insertClass(ClassDTO classDto) throws Exception; // 등록
	public void updateClass(ClassDTO classDto) throws Exception; // 수정
	public void deleteClass(ClassDTO classDto) throws Exception; // 삭제
	
}
	