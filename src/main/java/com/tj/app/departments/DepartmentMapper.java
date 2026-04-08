package com.tj.app.departments;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

// interface에서는 접근지정자와 그외 지정자 생략 가능  public abstract로 무조껀 시작 생략 가능
@Mapper
public interface DepartmentMapper {
	//list
	public abstract List<DepartmentDTO> list() throws Exception;
	
	//detail 
	public DepartmentDTO detail(DepartmentDTO departmentDTO) throws Exception;
	
	//create
	int create(DepartmentDTO departmentDTO) throws Exception;
	
	//update
	int update(DepartmentDTO departmentDTO) throws Exception;
	
	//delete
	int delete(DepartmentDTO departmentDTO) throws Exception;
}
