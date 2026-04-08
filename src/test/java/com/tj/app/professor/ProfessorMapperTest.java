package com.tj.app.professor;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ProfessorMapperTest {
	
	@Autowired
	private ProfessorMapper professorMapper;
	
	@Test
	void testList() throws Exception {
		List<ProfessorDTO> ar = professorMapper.list();
		
        assertNotEquals(0, ar.size());
	}

	@Test
	void testDetail() throws Exception {
		ProfessorDTO professorDTO = new ProfessorDTO();
        professorDTO.setProfessorNo("P001");
        ProfessorDTO result = professorMapper.detail(professorDTO);
        
        assertNotNull(result);
	}

	@Test
	void testCreate() throws Exception {
		ProfessorDTO professorDTO = new ProfessorDTO();
		professorDTO.setProfessorNo("P12345");
		professorDTO.setProfessorName("홍길동");
		professorDTO.setProfessorSsn("123456-1234567");
		professorDTO.setProfessorAddress("인천");
		professorDTO.setDepartmentNo("001");
        
        int result = professorMapper.create(professorDTO);
        assertEquals(1, result);
	}

	@Test
	void testUpdate() throws Exception {
		ProfessorDTO professorDTO = new ProfessorDTO();
		professorDTO.setProfessorNo("P12345");
		professorDTO.setProfessorName("하태준");
		professorDTO.setProfessorSsn("999999-9999999");
		professorDTO.setProfessorAddress("서울");
		professorDTO.setDepartmentNo("001");
		
		
		int result = professorMapper.update(professorDTO);
		assertEquals(1, result);
	}

	@Test
	void testDelete() throws Exception {
		ProfessorDTO professorDTO = new ProfessorDTO();
		professorDTO.setProfessorNo("P12345");
		
		int result = professorMapper.delete(professorDTO);
		assertEquals(1, result);
	}

}
