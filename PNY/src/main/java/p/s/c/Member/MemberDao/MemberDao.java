package p.s.c.Member.MemberDao;


import java.util.Map;

import org.springframework.stereotype.Repository;

import p.s.c.Member.MemberDto.MemberDto;

@Repository
public interface MemberDao {
	public void addUser(MemberDto dto);
	public void updateUser(MemberDto dto);
	public void deleteUser(MemberDto dto);
	public int loginUser(MemberDto dto);
	public MemberDto loginInfo(MemberDto dto);
	public void modifyPassword(Map<String, Object> paramMap);
	public int checkDuplicate(MemberDto dto);
	public int checkPassword(MemberDto dto);
	public void modifyInfo(MemberDto dto);
	public MemberDto findUser(MemberDto dto);
	public int checkUser(MemberDto dto);
}
