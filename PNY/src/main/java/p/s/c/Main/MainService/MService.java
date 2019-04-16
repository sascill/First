package p.s.c.Main.MainService;

import java.util.ArrayList;

import p.s.c.Board.BoardConfig.BoardConfig;
import p.s.c.Board.BoardDto.BoardDto;

public interface MService {
	public ArrayList<BoardDto> MainList(BoardConfig bc);
}
