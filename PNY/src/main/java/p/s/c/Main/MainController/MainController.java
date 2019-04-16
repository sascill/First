package p.s.c.Main.MainController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import p.s.c.Board.BoardConfig.BoardConfig;
import p.s.c.Board.BoardDto.BoardDto;
import p.s.c.Board.BoardService.BService;


@Controller
public class MainController {
	
	@Autowired
	BService boardService;
	
	@RequestMapping("/index")
	public String index(HttpServletRequest request, Model model, BoardConfig bc) {
		bc.setCheckMain(true);
		model.addAttribute("mlist", boardService.listDao(bc));
		return "index";
	}
}
