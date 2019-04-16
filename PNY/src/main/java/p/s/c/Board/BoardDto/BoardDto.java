package p.s.c.Board.BoardDto;

public class BoardDto {
	public int bnum;
    public String subject;
    public String writer;
    public String datetime;
    public String content;
    public int hit;
    public int bcode;
    public int mcode;
    
	public int getMcode() {
		return mcode;
	}
	public void setMcode(int mcode) {
		this.mcode = mcode;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
	public int getBcode() {
		return bcode;
	}
	
	public void setBcode(int bcode) {
		this.bcode = bcode;
		
	}
	
	public BoardDto() {};
	public BoardDto(int bnum, String subject, String writer, String datetime, String content, int hit, int bcode, int mcode) {
		super();
		this.bnum = bnum;
		this.subject = subject;
		this.writer = writer;
		this.datetime = datetime;
		this.content = content;
		this.hit = hit;
		this.bcode = bcode;
		this.mcode = mcode;
	}
    
}
