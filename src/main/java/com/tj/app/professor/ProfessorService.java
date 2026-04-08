package com.tj.app.professor;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProfessorService {
	
	@Autowired
	private ProfessorMapper professorMapper;
	
	public List<ProfessorDTO> list() throws Exception {
		return professorMapper.list();
	}
	
	public ProfessorDTO detail(ProfessorDTO professorDTO) throws Exception {
		return professorMapper.detail(professorDTO);
	}
	
	public int create(ProfessorDTO professorDTO) throws Exception {
		return professorMapper.create(professorDTO);
	}
	
	public int update(ProfessorDTO professorDTO) throws Exception {
		return professorMapper.update(professorDTO);
	}
	
	public int delete(ProfessorDTO professorDTO) throws Exception {
		return professorMapper.delete(professorDTO);
	}
}
