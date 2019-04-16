package p.s.c.Board.BoardReplyDto;

public class BoardReplyDto {
	public int br_num;
	public String br_writer;
	public String br_content;
	public String br_date;
	public int bnum;
	
	public int getBr_num() {
		return br_num;
	}
	public void setBr_num(int br_num) {
		this.br_num = br_num;
	}
	public String getBr_writer() {
		return br_writer;
	}
	public void setBr_writer(String br_writer) {
		this.br_writer = br_writer;
	}
	public String getBr_content() {
		return br_content;
	}
	public void setBr_content(String br_content) {
		this.br_content = br_content;
	}
	public String getBr_date() {
		return br_date;
	}
	public void setBr_date(String br_date) {
		this.br_date = br_date;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	
	public BoardReplyDto() {}
	
	public BoardReplyDto(int br_num, String br_writer, String br_content, String br_date, int bnum) {
		super();
		this.br_num = br_num;
		this.br_writer = br_writer;
		this.br_content = br_content;
		this.br_date = br_date;
		this.bnum = bnum;
	}
	
	
}
