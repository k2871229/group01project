package dao;

import java.util.List;
import dto.ClassDTO;

public interface ClassDAO {

	public List<ClassDTO> selectClassList() throws Exception;
	public List<ClassDTO> selectClassList(ClassDTO classDto) throws Exception;
	public ClassDTO selectClassOne(ClassDTO classDto) throws Exception;
	public void insertClass(ClassDTO classDto) throws Exception;
	public void updateClass(ClassDTO classDto) throws Exception;
	public void deleteClass(ClassDTO classDto) throws Exception;
	
}
	