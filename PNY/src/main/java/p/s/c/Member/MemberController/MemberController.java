package p.s.c.Member.MemberController;



import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import p.s.c.Board.BoardController.BoardController;
import p.s.c.Member.MemberDto.MemberDto;
import p.s.c.Member.MemberService.MemberService;

@Controller
@SessionAttributes("user")	
	public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
	MemberService mService;
	
	@RequestMapping("/loginForm")
	public String LoginForm() {
		
		return "loginForm";
	}
	
	@RequestMapping("/login")
	@ResponseBody
	public int login(HttpServletRequest request, HttpServletResponse response, Model model
			,MemberDto dto) {
		int check = mService.loginUser(dto);
		if(check == 1) {
			dto = mService.loginInfo(dto);
			model.addAttribute("user", dto);
		}
		return check;
	}
	
	@RequestMapping("/checkDuplicate")
	@ResponseBody
	public int checkDuplicate(HttpServletRequest request, HttpServletResponse response, Model model
			,MemberDto dto) {
		int check = mService.checkDuplicate(dto);
		System.out.println(check);
		return check;
	}
	
	@RequestMapping("/joinForm")
	public String joinForm() {
		
		return "member/joinForm";
	}
	
	@RequestMapping("/logout")
	public String logout(SessionStatus session) {
		session.setComplete();
		return "redirect:index";
	}
	
	@RequestMapping("/addUser")
	public String  addUser(HttpServletRequest request, HttpServletResponse response, Model model
			,MemberDto dto) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		mService.addUser(dto);
		return "redirect:index";
	} 
	
	@RequestMapping("/modifyInfoForm")
	public String modifyInfoForm(HttpServletRequest request, HttpServletResponse response, Model model
			,MemberDto dto) {
		
		return "member/modifyInfoForm";
	}
	
	@RequestMapping("/modifyInfo")
	public String modifyInfo(HttpServletRequest request, HttpServletResponse response, Model model
			,MemberDto dto,SessionStatus session) {
		mService.modifyInfo(dto);
		dto = mService.loginInfo(dto);
		System.out.println(dto.getNickName());
		model.addAttribute("user", dto);
		return "redirect:myInfo";
	}
	
	@RequestMapping("/deleteInfoForm")
	public String deleteInfoForm(HttpServletRequest request, HttpServletResponse response, Model model
			,MemberDto dto) {
		
		return "member/deleteInfoForm";
	}
	
	@RequestMapping("/deleteUser")
	public String deleteInfo(HttpServletRequest request, HttpServletResponse response, Model model
			,MemberDto dto, SessionStatus session) {
		mService.deleteUser(dto);
		session.setComplete();
		return "redirect:index";
	}
	
	@RequestMapping("/modifyPasswordForm")
	public String modifyPasswordForm(HttpServletRequest request, HttpServletResponse response, Model model
			,@RequestParam Map<String, Object> paramMap) {
		
		return "member/modifyPasswordForm";
	}
	
	@RequestMapping("/modifyPassword")
	public String modifyPassword(HttpServletRequest request, HttpServletResponse response, Model model
			,@RequestParam Map<String, Object> paramMap) {
		mService.modifyPassword(paramMap);
		return "redirect:myInfo";
	}
	
	@RequestMapping("/myInfo")
	public String updateform(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		return "member/myInfo";
	}
	
	@RequestMapping("/checkPassword")
	@ResponseBody
	public int checkPassword(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			MemberDto dto) throws IOException {
		int check = mService.checkPassword(dto);
		return check;
	}
	
	@RequestMapping("/checkUser")
	@ResponseBody
	public int checkUser(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			MemberDto dto) throws IOException {
		int check = mService.checkUser(dto);
		return check;
	}
	
	@RequestMapping("/findUserForm")
	public String findUserForm(HttpServletRequest request, HttpServletResponse response, Model model) {
			
		return "member/findUserForm";
	}
	
}
