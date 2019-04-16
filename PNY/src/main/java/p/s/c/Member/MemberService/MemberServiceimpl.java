package p.s.c.Member.MemberService;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

import p.s.c.Member.MemberDao.MemberDao;
import p.s.c.Member.MemberDto.MemberDto;

@Service
@SessionAttributes("user")
public class MemberServiceimpl implements MemberService {

	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public void addUser(MemberDto dto) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		dao.addUser(dto);
	}

	@Override
	public void updateUser(MemberDto dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteUser(MemberDto dto) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		dao.deleteUser(dto);
	}

	@Override
	public int loginUser(MemberDto dto) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		loginInfo(dto);
		int status = dao.loginUser(dto);
		return status;
	}
	
	public MemberDto loginInfo(MemberDto dto){
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		return dao.loginInfo(dto);
	}

	@Override
	public void modifyPassword(Map<String, Object> paramMap) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		dao.modifyPassword(paramMap);
		
	}

	@Override
	public int checkDuplicate(MemberDto dto) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		return dao.checkDuplicate(dto);
	}

	@Override
	public int checkPassword(MemberDto dto) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		return dao.checkPassword(dto);
	}

	@Override
	public void modifyInfo(MemberDto dto) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		dao.modifyInfo(dto);		
	}

	@Override
	public MemberDto findUser(MemberDto dto) {
		System.out.println(dto.getEmail());
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		return dao.findUser(dto);	
		}

	@Override
	public int checkUser(MemberDto dto) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		return dao.checkUser(dto);
	}

}
