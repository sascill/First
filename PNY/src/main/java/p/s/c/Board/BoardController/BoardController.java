package p.s.c.Board.BoardController;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import p.s.c.Board.BoardConfig.BoardConfig;
import p.s.c.Board.BoardConfig.BoardPageMaker;
import p.s.c.Board.BoardDto.BoardDto;
import p.s.c.Board.BoardReplyDto.BoardReplyDto;
import p.s.c.Board.BoardService.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@Autowired
	private BoardService boardService;

	@RequestMapping("/board")
	public String board(HttpServletRequest request, Model model, @ModelAttribute("bc") BoardConfig bc) {
		BoardPageMaker bm = new BoardPageMaker();
		bm.setBoardconfig(bc);
		bm.setTotalCount(boardService.countDao(bc));
		model.addAttribute("list", boardService.listDao(bc));
		model.addAttribute("pageMaker", bm);
		return "Board";
	}

	@RequestMapping("/writeform")
	public String writeform(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		return "writeform";
	}

	@RequestMapping("/write")
	public String write(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam Map<String, Object> paramMap) {
		boardService.writeDao(paramMap);
		return "redirect:board";
	}

	@RequestMapping("/contentView")
	public String contentView(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		String bnum = request.getParameter("bnum");
		model.addAttribute("contentList", boardService.contentDao(Integer.parseInt(bnum)));
		model.addAttribute("reply", boardService.replyDao(Integer.parseInt(bnum)));
		return "contentView";
	}
	
	@ResponseBody
	@RequestMapping("/addReply")
	public void addReply(HttpServletRequest request, Model model, BoardDto dto) {
		System.out.println(dto.getWriter());
		boardService.addReply(dto);
	}

	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model, @RequestParam int bnum) {
		boardService.deleteDao(bnum);
		return "redirect:board";
	}

	@RequestMapping("/updateform")
	public String updateform(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestParam int bnum) {
		model.addAttribute("contentList", boardService.contentDao(bnum));
		return "updateform";
	}

	@RequestMapping("/update")
	public String modify(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam Map<String, Object> paramMap) {
		boardService.updateDao(paramMap);
		return "redirect:contentView?bnum="+paramMap.get("bnum");
	}
}
