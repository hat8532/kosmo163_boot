package com.tj.app.professor;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tj.app.departments.DepartmentDTO;

@Controller
@RequestMapping("/professor/*")
public class ProfessorController {
	
	@Autowired
	private ProfessorService professorService;
	
	@GetMapping("list")
	public void list(Model model) throws Exception {
		List<ProfessorDTO> ar = professorService.list();
		model.addAttribute("list", ar);
	}
	

	
}
