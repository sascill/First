package p.s.c.Member.EmailController;

import java.io.PrintWriter;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import p.s.c.Member.MemberDto.MemberDto;
import p.s.c.Member.MemberService.MemberService;

@Controller
public class emailController {

	@Autowired
	JavaMailSender mailSender;
	@Autowired
	MemberService mService;

	@RequestMapping("/findUser")
	public void mailSending(Model model, HttpServletResponse response, MemberDto dto) {
		System.out.println(dto.getEmail());
		dto = mService.findUser(dto);
		String setfrom = "sascill11@gmail.com"; //내 이메일 주소
		String tomail = dto.getEmail(); // 받는 사람 이메일
		String title = dto.getNickName() + "님의 아이디와 비밀번호 입니다."; // 제목
		String content = dto.getNickName() + "님의 아이디는 " + dto.getId() + " 비밀번호는 " + dto.getPassword() + " 입니다."; // 내용

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8"); 

			messageHelper.setFrom(setfrom); // 보내는사람
			messageHelper.setTo(tomail); // 받는사람
			messageHelper.setSubject(title); // 메일제목
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('입력하신 이메일로 Id/Password를 발송했습니다.');</script>");
			out.println("<script>location.href='/index';</script>");
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
