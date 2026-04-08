package com.tj.app.departments;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DepartmentService {

	@Autowired
	private DepartmentMapper departmentDAO;   // interface는 객체는 못만들지만 데이터 타입으로 사용 가능
	
	public List<DepartmentDTO> list() throws Exception{
		return departmentDAO.list();
	}
	
	public DepartmentDTO detail(DepartmentDTO departmentDTO) throws Exception {
		return departmentDAO.detail(departmentDTO);
	}
	
	public int create(DepartmentDTO departmentDTO) throws Exception {
		return departmentDAO.create(departmentDTO);
	}
	
	public int delete(DepartmentDTO departmentDTO) throws Exception {
		return departmentDAO.delete(departmentDTO);
	}
	
	public int update(DepartmentDTO departmentDTO) throws Exception {
		return departmentDAO.update(departmentDTO);
	}
}
