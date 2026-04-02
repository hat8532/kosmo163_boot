package com.tj.app.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/*")  // /member
public class MemberController {

	@RequestMapping("join") // 어떤 url이 왔을때 매핑시켜라
	public String join() {
		System.out.println("회원 가입 페이지");
		return "member/join";
	}

	@RequestMapping("login")
	public String login() {
		return "member/login";
	}

}
