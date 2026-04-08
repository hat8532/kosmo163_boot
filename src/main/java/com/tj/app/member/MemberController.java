package com.tj.app.member;

import java.sql.Date;
import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/member/*") // /member
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	public void join(MemberDTO memberDTO) {
		// 파라미터의 이름과 dto의 setter이름이 같아야 함 타입도 동일해야 함
		
	
		
	System.out.println(memberDTO.getAge());
	System.out.println();
	}	
	
//	@RequestMapping(value = "join", method = RequestMethod.POST)        requestparam으로 파라미터 꺼내기     
//	public void join(@RequestParam(name = "name") String name, @RequestParam(name = "age") Integer age) {
//		MemberDTO memberDTO = new MemberDTO();
//		memberDTO.setName(name);
//		memberDTO.setAge(age);
//		
//	}

//	@RequestMapping(value="join", method = RequestMethod.POST)           request로 파라미터 꺼내기
//	public void join(HttpServletRequest request) {
//		String name = request.getParameter("name");
//		String age = request.getParameter("age");
//		String birth = request.getParameter("birth");
//		String[] nums = request.getParameterValues("num");
//	
//		
//		System.out.println(name+age+birth);
//		
//		System.out.println("Join Post");
//	}

	@RequestMapping(value = "join", method = RequestMethod.GET) // 어떤 url이 왔을때 매핑시켜라
	public String join() {
		System.out.println("회원 가입 페이지");
		return "member/join";
	}

	@RequestMapping("login")
	public String login() {
		return "member/login";
	}

}
