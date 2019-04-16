package p.s.c.Board.BoardService;

import java.util.ArrayList;
import java.util.Map;

import p.s.c.Board.BoardConfig.BoardConfig;
import p.s.c.Board.BoardDto.BoardDto;
import p.s.c.Board.BoardReplyDto.BoardReplyDto;

public interface BService {
	public ArrayList<BoardDto> listDao(BoardConfig bc);
	public void writeDao(Map<String, Object> paramMap);
	public BoardDto contentDao(int bnum);
	public void deleteDao(int bnum);
	public void updateDao(Map<String, Object> paramMap);
	public int countDao(BoardConfig bc);
	public ArrayList<BoardReplyDto> replyDao(int bnum);
	public void addReply(BoardDto dto);
}
