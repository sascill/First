package p.s.c.Board.BoardService;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import p.s.c.Board.BoardConfig.BoardConfig;
import p.s.c.Board.BoardDto.BoardDto;
import p.s.c.Board.BoardReplyDto.BoardReplyDto;
import p.s.c.BoardDao.BoardDao;

@Service
public class BoardService implements BService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ArrayList<BoardDto> listDao(BoardConfig bc) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
			return dao.listDao(bc);
	}

	@Override
	public void writeDao(Map<String, Object> paramMap) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.writeDao(paramMap);
	}

	@Override
	public BoardDto contentDao(int bnum) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		return dao.contentDao(bnum);
	}

	@Override
	public void deleteDao(int bnum) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.deleteDao(bnum);		
	}

	@Override
	public void updateDao(Map<String, Object> paramMap) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.updateDao(paramMap);		
	}

	@Override
	public int countDao(BoardConfig bc) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		return dao.countDao(bc);
	}

	@Override
	public ArrayList<BoardReplyDto> replyDao(int bnum) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		return dao.replyDao(bnum);
	}

	@Override
	public void addReply(BoardDto dto) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.addReply(dto);
	}


}
