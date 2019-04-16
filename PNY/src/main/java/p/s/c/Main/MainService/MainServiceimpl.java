package p.s.c.Main.MainService;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import p.s.c.Board.BoardConfig.BoardConfig;
import p.s.c.Board.BoardDto.BoardDto;
import p.s.c.BoardDao.BoardDao;

public class MainServiceimpl implements MService {

	/*@Autowired
	private SqlSession sqlSession;*/
	
	@Override
	public ArrayList<BoardDto> MainList(BoardConfig bc) {
		/*BoardDao dao = sqlSession.getMapper(BoardDao.class);*/
		return null;
	}

}
