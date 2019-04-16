package p.s.c.Member.MemberDto;

public class MemberDto {
	private int mNum;
	private String id;
	private String password;
	private String nickName;
	private String email;
	private String checkMailing;
	private String newPassword;
	private String checkNewPassword;
	
	public MemberDto() {}
	

	public String getNewPassword() {
		return newPassword;
	}


	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}


	public String getCheckNewPassword() {
		return checkNewPassword;
	}


	public void setCheckNewPassword(String checkNewPassword) {
		this.checkNewPassword = checkNewPassword;
	}


	public String getCheckMailing() {
		return checkMailing;
	}


	public int getmNum() {
		return mNum;
	}

	public void setmNum(int mNum) {
		this.mNum = mNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getmailing() {
		return checkMailing;
	}

	public void setCheckMailing(String checkMailing) {
		this.checkMailing = checkMailing;
	}

	
	public MemberDto(int mNum, String id, String password, String nickName, String email, String checkMailing,
			String newPassword, String checkNewPassword) {
		super();
		this.mNum = mNum;
		this.id = id;
		this.password = password;
		this.nickName = nickName;
		this.email = email;
		this.checkMailing = checkMailing;
		this.newPassword = newPassword;
		this.checkNewPassword = checkNewPassword;
	}


	@Override
	public String toString() {
		return "MemberDto [mNum=" + mNum + ", id=" + id + ", password=" + password + ", nickName=" + nickName
				+ ", email=" + email + ", mailing=" + checkMailing + "]";
	}

}
