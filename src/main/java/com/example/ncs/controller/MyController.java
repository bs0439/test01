package com.example.ncs.controller;

import com.example.ncs.mapper.StudentMapper;
import com.example.ncs.vo.StudentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class MyController {
	@Autowired
	StudentMapper mapper;
	
	
	@GetMapping("/")
	public String root() {
		return "main";
	}
	
	@GetMapping("/loginForm")
	public void logForm() {
		
	}
	
	@GetMapping("/regForm")
	public void regForm() {
		
	}
	
	@GetMapping("/regMain")
	public void regMain() {
		
	}
	@GetMapping("/main")
	public void main() {
		
	}
	
	@GetMapping("/checkStudent.do")
	public String cs(StudentVO stu, Model model) {
		int n = mapper.studentCheck(stu);
		String page;

		if(n == 1) {
			model.addAttribute("no", stu.getNo());
			model.addAttribute("name", stu.getName());
			page = "regForm";

		}else {	
			model.addAttribute("msg", "학생인증에 실패하였습니다.");
			model.addAttribute("url", "regMain");
			page = "alert";
		}
		
		return page;
	}
	
	@PostMapping("login.do")
	public String login(StudentVO stu, HttpSession session,Model model) {
		String page;
		int n = mapper.loginCheck(stu);
		if(n == 1) {
			session.setAttribute("logid", stu.getId());
			model.addAttribute("msg", stu.getId()+"님 로그인완료");
			model.addAttribute("url", "main");
			page = "alert";
		}else {
			model.addAttribute("msg", "로그인이 실패하였습니다. 학생인증 페이지로 이동합니다");
			model.addAttribute("url", "regMain");
			page = "alert";
		}
		return page;
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "main";
	}
	
	@PostMapping("/reg.do")
	public String regdo(StudentVO stu) {
		mapper.regMember(stu);
		
		return "main";
	}
	
	@GetMapping("/idcheck.do")
	public @ResponseBody String idcheck(String id, Model model) {
		String msg = null;
		int n = mapper.idCheck(id);
		if(n == 1) {
			msg = "<span style = 'color : red';>사용불가</span>";
			model.addAttribute("msg", "<span style = 'color : red';>사용불가</span>");
		}else {
			msg = "<span style = 'color : green';>사용가능</span>";
			model.addAttribute("msg","<span style = 'color : green';>사용가능</span>");
		}
		
		return msg;
	}

	@GetMapping("/menu")
		public String ready(Model model){
		model.addAttribute("msg", "준비 중인 메뉴입니다.");
		model.addAttribute("url", "main");
		return "alert";
		}



}
