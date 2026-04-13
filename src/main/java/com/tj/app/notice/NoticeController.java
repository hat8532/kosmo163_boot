package com.tj.app.notice;

import java.util.List;

import com.tj.app.page.Page;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	@GetMapping("list")
	public String list(Page page, Model model) throws Exception {
		List<NoticeDTO> ar = noticeService.list(page);
		
		model.addAttribute("page", page);
		model.addAttribute("list", ar);

		return "notice/list";
	}

	@GetMapping("detail")
	public String detail(NoticeDTO noticeDTO, Model model) throws Exception {
		noticeService.detail(noticeDTO);

		model.addAttribute("n", noticeDTO);

		return "notice/detail";
	}

	@GetMapping("create")
	public void create() throws Exception {
	}
	
	@PostMapping("create")
	public String create(NoticeDTO noticeDTO) throws Exception{
		int result = noticeService.create(noticeDTO);
		
		return "redirect:./list";
	
	}
	
	@GetMapping("update")
	public String update(NoticeDTO noticeDTO, Model model) throws Exception {
		NoticeDTO result = noticeService.detail(noticeDTO);
		model.addAttribute("n", result);
		
		return "redirect:./update";
	}
	
	@PostMapping("update")
	public String update(NoticeDTO noticeDTO) throws Exception {
		int result = noticeService.update(noticeDTO);
		
		return "redirect:./list";
	}
	
	@PostMapping("delete")
	public String delete(NoticeDTO noticeDTO) throws Exception {
		int result = noticeService.delete(noticeDTO);
		
		return "redirect:./list";
	}

}
