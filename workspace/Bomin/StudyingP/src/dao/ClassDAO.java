package dao;

import java.util.List;

import dto.ClassDTO;

public interface ClassDAO {

	// 개시된 강의 전체 조회
	public List<ClassDTO> selectCls(ClassDTO classDto);
	// 삭제포함 강의 전체 조회
	public List<ClassDTO> selectClsAll(ClassDTO classDto);
	// 삭제된 강의 조회
	public List<ClassDTO> selectClsDel(ClassDTO classDto);
	// 강의 조회 (강의분류)
	public List<ClassDTO> selectClsCategory(ClassDTO classDto);
	// 강의 조회 (강의명)
	public List<ClassDTO> selectClsName(ClassDTO classDto);
	// 강의 조회 (강사명)
	public List<ClassDTO> selectClsInst(ClassDTO classDto);
	
	// 강의 개설
	public void insertCls(ClassDTO classDto);
	// 강의 수정
	public void updateCls(ClassDTO classDto);
	// 강의 삭제
	public void deleteCls(ClassDTO classDto);
		
}