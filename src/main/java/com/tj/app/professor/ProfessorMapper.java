package com.tj.app.professor;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProfessorMapper {
	
	// list
	List<ProfessorDTO> list() throws Exception;
	
	//detail
	ProfessorDTO detail(ProfessorDTO professorDTO) throws Exception;
	
	//create
	int create(ProfessorDTO professorDTO) throws Exception;
	
	//update
	int update(ProfessorDTO professorDTO) throws Exception;
	
	//delete
	int delete(ProfessorDTO professorDTO) throws Exception;
}
